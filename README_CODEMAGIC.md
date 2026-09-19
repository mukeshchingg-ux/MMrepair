# MM Repair — Codemagic Build Package

This package is prepared for a Codemagic Android APK build.

## Codemagic
1. Put this project into a GitHub repository (upload all files/folders, not the ZIP itself).
2. In Codemagic, connect the GitHub repository.
3. Select the `mm_repair_android` workflow from `codemagic.yaml`.
4. Start a build.
5. Download the generated APK from Artifacts.

## APK
The workflow runs:
`./gradlew assembleRelease`

Expected artifact:
`app/build/outputs/apk/release/*.apk`

## Important
This project is configured for Android:
- Application ID: com.micromobilerepair.mmrepair
- App name: Micro Mobile Repair
- Branding: MM Repair
- compileSdk: 35
- targetSdk: 35
- minSdk: 23
- WhatsApp: +91 62839 01749

For Google Play later, use a proper release keystore/signing configuration in Codemagic. This package is intended first for testing/building the app.
