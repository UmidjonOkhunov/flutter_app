#!/bin/bash

# exit the script when there is any error
set -e

echo "====== pub get ======"
flutter pub get
# echo "====== Generating code ======"
# dart run build_runner build --delete-conflicting-outputs

# echo "====== Generate OTA localisation ======"
# cd lib/packages/beam_l10n && dart generator.dart && cd ../../..

if [ -x "$(command -v pod)" ]; then
  echo "====== Update ios depedency ======"
  flutter precache --ios
  cd ios
  pod install
  cd ..
fi

# adding format as it everytime it runs it produce codes with different format.
./format.sh
