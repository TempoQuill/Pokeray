import re

# Constants
CRY_TABLE_PATH = "data/pokemon/cries.asm"
CRY_BASE_DATA_PATHS = ["audio/cries.asm", "audio/cries_proto.asm"]
CRY_CONSTANTS_PATH = "constants/cry_constants.asm"
CRY_POINTERS_PATH = "audio/cry_pointers.asm"

# Helper function to parse signed 16-bit values
def parse_signed_16bit(value):
    value = int(value, 16)
    if value > 0x7FFF:  # If negative (two's complement)
        value -= 0x10000
    return value

# Parse cry table to get base pitch modifiers
def parse_cry_table(file_path):
    cry_table = {}
    with open(file_path, "r") as file:
        for line in file:
            match = re.match(r"\s*mon_cry\s+(\w+),\s+(\w+),\s+(\w+)", line)
            if match:
                cry_name, pitch, length = match.groups()
                cry_table[cry_name] = parse_signed_16bit(pitch)
    return cry_table

# Parse cry base data to get note pitches and volume parameters
def parse_cry_base_data(file_paths):
    cry_data = {}
    for file_path in file_paths:
        with open(file_path, "r") as file:
            current_cry = None
            for line in file:
                # Match cry labels
                cry_match = re.match(r"(Cry_\w+|ProtoCry_\w+):", line)
                if cry_match:
                    current_cry = cry_match.group(1)
                    cry_data[current_cry] = []
                # Match square_note data
                note_match = re.match(r"\s*square_note\s+(\w+),\s+(\w+),\s+(\w+)", line)
                if note_match and current_cry:
                    volume1, volume2, pitch = note_match.groups()
                    volume1 = int(volume1, 16)
                    volume2 = int(volume2, 16)
                    pitch = parse_signed_16bit(pitch)
                    cry_data[current_cry].append((volume1, volume2, pitch))
    return cry_data

# Check if a note is silent
def is_note_silent(pitch_modifier, volume1, volume2, note_pitch):
    final_pitch = pitch_modifier + note_pitch
    if final_pitch < 0:
        return True  # Silent due to negative pitch
    if volume1 == 0 and volume2 >= 0:
        return True  # Silent due to volume parameters
    return False

# Main function
def main():
    # Parse data
    cry_table = parse_cry_table(CRY_TABLE_PATH)
    cry_data = parse_cry_base_data(CRY_BASE_DATA_PATHS)

    # Check for silent notes
    for cry_name, notes in cry_data.items():
        if cry_name in cry_table:
            pitch_modifier = cry_table[cry_name]
            for i, (volume1, volume2, note_pitch) in enumerate(notes):
                if is_note_silent(pitch_modifier, volume1, volume2, note_pitch):
                    print(f"Silent note detected in {cry_name}, note {i + 1}: "
                          f"Pitch Modifier = {pitch_modifier}, Note Pitch = {note_pitch}, "
                          f"Volume1 = {volume1}, Volume2 = {volume2}")

if __name__ == "__main__":
    main()
