---
name: Hostname

# Path to TimeMachine
path: /mnt/timemachine

# Maximum space to use (KB)
volume_limit: 650000000

# List of users that can use the TimeMachine (comma separated)
valid_users: pi

# determine UUID on mac:
# diskutil info disk2s1|grep "Volume UUID"
volume_uuid: 1013FDB4-2B2D-3E76-9B69-20212646AE65
