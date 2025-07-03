#!/bin/bash
CWD=$(pwd)
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"

excludedPackages=("ui_kit" "gs_utils" "auto_route_service" "app_logger")

for package_name in $(ls $PACKAGES_DIR); do
    if [[ ! " ${excludedPackages[*]} " =~ " ${package_name} " ]]; then
         PACKAGE_DIR="$PACKAGES_DIR/$package_name"
         echo "Entering $PACKAGES_RELATIVE_PATH/$package_name"
         cd $PACKAGE_DIR && flutter packages pub run build_runner build --delete-conflicting-outputs
    fi
done
