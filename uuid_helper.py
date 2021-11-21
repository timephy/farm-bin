found_uuids = []
with open('uuid_helper_input', 'r') as f:
    blkid_lines = f.readlines()
    for line in blkid_lines:
        elements = line.split()
        for element in elements:
            if element.startswith('UUID'):
                found_uuids.append(element[6:-1])


known_uuids = []
with open('uuid_known', 'r') as f:
    blkid_lines = f.readlines()
    for line in blkid_lines:
        elements = line.split()
        for element in elements:
            if element.startswith('UUID'):
                known_uuids.append(element[6:-1])

new_uuids = list(filter(lambda uuid: uuid not in known_uuids, found_uuids))
print(new_uuids)
