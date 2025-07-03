#!/bin/bash
CWD=$(pwd)
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"
FLUTTER_BIN=${FLUTTER_BIN:-flutter}

get_all_cicd() {
    $FLUTTER_BIN pub get
    for d in $(ls $PACKAGES_DIR); do
        PACKAGE_DIR="$PACKAGES_DIR/$d"
        cd $PACKAGE_DIR && $FLUTTER_BIN pub get
    done
}

get_all() {
    flutter pub get
    for d in $(ls $PACKAGES_DIR); do
        PACKAGE_DIR="$PACKAGES_DIR/$d"
        echo "Entering $PACKAGES_RELATIVE_PATH/$d"
        cd $PACKAGE_DIR && flutter pub get
    done
}

case $1 in
    --cicd)
        get_all_cicd
        ;;
    *)
        # if no parameter passed
        get_all
        ;;
esac