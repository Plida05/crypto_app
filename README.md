📱 CryptoApp — Real-Time Cryptocurrency Tracker

A mobile application built with Flutter that displays live cryptocurrency data from the CoinLore API.
<img width="347" height="764" alt="Screenshot 2026-06-01 121559" src="https://github.com/user-attachments/assets/d25d1e1f-ac0f-480a-99cf-7510391d362a" />
<img width="1080" height="2400" alt="Screenshot_1780293080" src="https://github.com/user-attachments/assets/c9a7973b-7a06-45b7-82b9-1aedcdf50cbe" />
Displays top cryptocurrencies including BTC, ETH, USDT, BNB, and more with live USD prices.

✨ Features

📊 Real-Time Data — Fetches live cryptocurrency prices from the CoinLore API
🔄 Refresh Button — Update data with a single tap
📋 Clean List View — Displays Rank, Name, Symbol, and USD Price for each coin
⚡ Fast & Lightweight — Built with Flutter for smooth performance on Android

🛠️ Tech Stack
Flutter→Mobile UI Framework
Dart→Programming Language
HTTP Package→API Requests
CoinLore API→Cryptocurrency Data Source
Android Studio→Emulator & SDK Management

🚀 Getting Started
Prerequisites

Flutter SDK >=3.0.0
Android Studio with Android SDK
Android Emulator or Physical Device

Installation

1. Clone the repository
    git clone https://github.com/Plida05/crypto_app.git
    cd crypto_app
2. Install dependencies
    flutter pub get
3. Run the app
    flutter run

📡 API Reference
This app uses the free CoinLore Public API:
    GET https://api.coinlore.net/api/tickers/
Response fields used:
FieldTypeDescriptionrankintCryptocurrency rank by market capnamestringFull name (e.g. Bitcoin)symbolstringTicker symbol (e.g. BTC)price_usdstringCurrent price in USD

📁 Project Structure
    crypto_app/
├── lib/
│   └── main.dart        # Main application file
├── android/             # Android-specific files
├── ios/                 # iOS-specific files
├── pubspec.yaml         # Dependencies & project config
└── README.md            # Project documentation

🧠 How It Works

1. App launches and calls fetchData() automatically via initState()
2. HTTP GET request is sent to CoinLore API
3. JSON response is decoded and stored in cryptoList
4. ListView.Builder renders each coin as a styled card
5. User can press Refresh to fetch the latest prices

Rr NABILA FATHARANI YUWVRIDA
