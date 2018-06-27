#!/bin/bash
echo {\"public_key\": \"`ssh-keygen -yf $1`\"}
