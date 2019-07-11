#!/bin/bash

if [[ ! -a /usr/local/include/bits/stdc++.h ]]; then
  echo "Linking bits/stdc++.h"
  ln -s ~/.mac_setup/scripts/stdc++.h /usr/local/include/bits/stdc++.h
  echo "Done."
fi
