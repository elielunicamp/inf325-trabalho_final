#!/bin/sh
redis-cli <<EOF
# Create a list
LPUSH mylist "item1"
LPUSH mylist "item2"
LPUSH mylist "item3"

# Create a set
SADD myset "member1"
SADD myset "member2"
SADD myset "member3"

# Create a hash
HSET myhash field1 "value1"
HSET myhash field2 "value2"
HSET myhash field3 "value3"
EOF

