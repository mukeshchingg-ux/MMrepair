#!/bin/sh

APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle wrapper bootstrap: please run this project with a Gradle-enabled Codemagic environment."
echo "If Gradle is not available, Android Studio/Gradle wrapper regeneration is required."
exit 1
