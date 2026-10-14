# Flutter Piano App

A project built in Flutter to simulate a piano interface. It explores working with system chrome settings to force landscape orientations and stacking custom widgets.

## What it does
* **Forced Landscape:** Uses `SystemChrome.setPreferredOrientations` to lock the application screen horizontally right at launch.
* **Fullscreen Experience:** Disables default system UI overlays for a clean, distraction-free musical layout.
* **Layered Key Stack:** Combines individual `WhiteKeys` and `BlackKeys` custom components using a native `Stack` widget over a dark backdrop.

## Project Structure
* `main.dart` - Entry point bootstrapping the application under a Material design theme.
* `home_page.dart` - Main state controller handling system layouts, screen dimensions, and structural piano rows.
* `widgets/` - Target folder housing individual custom components (`BlackKeys.dart`, `WhiteKeys.dart`) to manage tone and styling abstractions.

## How to run it
1. Resolve package properties: `flutter pub get`
2. Boot on your emulator or mobile hardware: `flutter run`
