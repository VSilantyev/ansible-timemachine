---
name: Hostname

# Path to TimeMachine
path: /mnt/timemachine

# Maximum space to use (KB)
volumelimit: 2000000

# List of users that can use the TimeMachine (comma separated)
validusers: graeme
