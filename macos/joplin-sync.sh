#!/bin/bash

# Sync Joplin to ensure I have the latest tasks {{{
joplin sync
# }}}

# Extract Tasks from Joplin Notes {{{
node $HOME/src/joplin-sync/index.js
# }}}

# Make sure to re-sync with the changes {{{
joplin sync
# }}}
