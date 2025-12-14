# Assets Directory

This directory contains all static assets for the Reading Station Flutter application.

## Directory Structure

```
assets/
├── images/              # Image assets
│   ├── logo/           # App logos (PNG)
│   ├── illustrations/  # Empty state illustrations (SVG)
│   ├── onboarding/     # Onboarding slides (PNG)
│   └── badges/         # Achievement badges (PNG) - FR5
├── icons/              # Icon assets (SVG)
│   ├── tabs/          # Bottom navigation icons
│   ├── features/      # Feature-specific icons
│   └── actions/       # Action icons (add, edit, delete)
├── fonts/              # Font files (TTF)
│   ├── Roboto/        # Roboto font family
│   └── custom/        # Custom fonts - FR12.1
└── animations/         # Lottie animations (JSON)
```

## Asset Guidelines

### Images
- **Logo**: Use PNG format, provide @2x and @3x variants
- **Illustrations**: Use SVG for scalability
- **Onboarding**: Use high-quality PNG images
- **Badges**: Use PNG with transparency

### Icons
- **Format**: SVG preferred for scalability
- **Size**: Design at 24dp base size
- **Color**: Use single color, app will apply theme colors

### Fonts
- **Roboto**: Download from [Google Fonts](https://fonts.google.com/specimen/Roboto)
- **Custom**: Place custom TTF files in `fonts/custom/`
- Remember to declare fonts in `pubspec.yaml`

### Animations
- **Format**: Lottie JSON files
- **Source**: Create at [LottieFiles](https://lottiefiles.com/)
- **Size**: Keep file size under 100KB for performance

## Usage in Flutter

### Declaring Assets in pubspec.yaml

```yaml
flutter:
  assets:
    - assets/images/logo/
    - assets/images/illustrations/
    - assets/images/onboarding/
    - assets/images/badges/
    - assets/icons/tabs/
    - assets/icons/features/
    - assets/icons/actions/
    - assets/animations/

  fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto/Roboto-Regular.ttf
        - asset: assets/fonts/Roboto/Roboto-Bold.ttf
          weight: 700
        - asset: assets/fonts/Roboto/Roboto-Italic.ttf
          style: italic
    - family: CustomFont
      fonts:
        - asset: assets/fonts/custom/custom_font.ttf
```

### Loading Images

```dart
// PNG Images
Image.asset('assets/images/logo/logo.png')

// SVG Images (requires flutter_svg package)
SvgPicture.asset('assets/images/illustrations/empty_library.svg')
```

### Loading Lottie Animations

```dart
// Requires lottie package
Lottie.asset('assets/animations/loading.json')
```

## Feature-Specific Assets

### FR5 - Gamification
- Achievement badges: `assets/images/badges/`
- Unlock animations: `assets/animations/achievement_unlock.json`
- Streak animations: `assets/animations/streak_fire.json`

### FR6 - Analytics
- Empty state: `assets/images/illustrations/empty_stats.svg`
- Stats icons: `assets/icons/features/stats_icon.svg`

### FR11 - AI Assistant
- AI illustration: `assets/images/illustrations/ai_assistant.svg`
- AI icon: `assets/icons/features/ai_icon.svg`
- Thinking animation: `assets/animations/ai_thinking.json`

### FR12.1 - Custom Themes
- Custom fonts: `assets/fonts/custom/`
- Dark mode logo: `assets/images/logo/logo_dark.png`

## Notes

- All `.gitkeep` files can be removed once real assets are added
- Maintain consistent naming conventions (lowercase, underscores)
- Optimize all assets before committing (compress images, minify SVGs)
- Test assets on multiple device sizes and screen densities
