#!/bin/bash

## For using this, you should configure bti first, simply by adding a .bti in your home directory and configure it

echo `mpc | head -n 1` "[MPD]" | bti 
