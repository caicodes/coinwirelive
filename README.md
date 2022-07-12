# coinwirelive

Cryptocurrency Coin tracking application with real-time data from 

-   coingecko api

Working web/react implementation currently hosted at:

https://coinwirelive.web.app

Related projects include: 
-   Modolla Wallet
-   Coins Bank 

Features: 
-   anonymous app use (no reg'd login)
-   onboarding with 
    -   free signup anonymous or with email/pass
    -   link (passwordless)
    -   phone verification (modolla wallet only)
    -   google/facebook sign in/up
-   themes
    -   colorScheme (ability to add/integrate and/or user select more schemes coming soon)
    -   colorModes
        -   dark / light / system


### More Features Coming Soon

- Animations / Charts / Data Vis etc. to come...
- Snackbar messages
- Error handling on forms with error styles
- Micro animations on forms, feedback, energy animations... 
- Simple tour for first launch or via help menu
- More configurations in 'Settings' screen with firebase/local storage (onboarding)


#### Started from flutter create -t skeleton

To recreate the seed...

```

# skeleton template 
flutter create -t skeleton coinwire

```

#### configured for firebase with project name 
### firebase admin tools and flutterfire_CLI, then login/select)

```
flutterfire configure --project:coinwirelive
```


```
flutter pub add firebase_core firebase_auth cloud_firestore

```

From current pubspec.yaml
```

dependencies:
  cloud_firestore: ^3.2.1
  firebase_auth: ^3.4.1
  firebase_core: ^1.19.1
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

```

### Outline and information on project setup/architecture

Entry point set to coin_list_view... coin.dart is the model, soon to be refactored to coin_model using coingeckoapi integration...

```

/lib
    /src
        /coinwire
            coin_service 
                - coingeckoapi
            coin_controller
                - favorites / following
            coin_view
                - coin_list
                - coin_detail
        /settings 
            settings_service
            settings_controller
            settings_view
                -local (anonymous users vs local only?)
                -signup/login (firebase > users)

```

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
