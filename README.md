📱 CryptoApp — Real-Time Cryptocurrency Tracker

A Flutter-based mobile application that displays real-time cryptocurrency market data using the CoinLore Public API. The app provides up-to-date information such as cryptocurrency rankings, symbols, and current prices in USD through a clean and responsive mobile interface.

---

## 📸 Preview
<img width="347" height="764" alt="Screenshot 2026-06-01 121559" src="https://github.com/user-attachments/assets/d25d1e1f-ac0f-480a-99cf-7510391d362a" />
<img width="347" height="764" alt="Screenshot_1780293080" src="https://github.com/user-attachments/assets/c9a7973b-7a06-45b7-82b9-1aedcdf50cbe" />
Displays top cryptocurrencies including BTC, ETH, USDT, BNB, and more with live USD prices.

---

## ✨ Features

📊 Real-Time Data — Fetches live cryptocurrency prices from the CoinLore API
🔄 Refresh Button — Update data with a single tap
📋 Clean List View — Displays Rank, Name, Symbol, and USD Price for each coin
⚡ Fast & Lightweight — Built with Flutter for smooth performance on Android

---

## 🛠️ Tech Stack
| Technology | Purpose |
|------------|---------|
| Flutter | Mobile App Development |
| Dart | Programming Language |
| HTTP Package | API Request |
| CoinLore API | Cryptocurrency Data |
| Android Studio | Development Environment |

---

## 📡 API

Data is retrieved from the **CoinLore Public API**.

```
GET https://api.coinlore.net/api/tickers/
```

Example data used:

- Rank
- Name
- Symbol
- Price (USD)

---

## 🚀 Installation

Clone the repository

```bash
git clone https://github.com/Plida05/crypto_app.git
```

Move into the project

```bash
cd crypto_app
```

Install dependencies

```bash
flutter pub get
```

Run the application

```bash
flutter run
```

---

📁 Project Structure

'''
    crypto_app/
├── lib/
│   └── main.dart        # Main application file
├── android/             # Android-specific files
├── ios/                 # iOS-specific files
├── pubspec.yaml         # Dependencies & project config
└── README.md            # Project documentation
'''

---

## ⚙️ How It Works

1. The application starts and requests cryptocurrency data from the CoinLore API.
2. The API returns data in JSON format.
3. The JSON response is parsed into Dart objects.
4. The application displays cryptocurrency information in a scrollable list.
5. Users can refresh the data anytime by pressing the **Refresh** button.

---

## 🎯 Learning Objectives

This project was developed to practice:

- Flutter fundamentals
- REST API integration
- HTTP requests
- JSON parsing
- State management
- Mobile UI development

---

## 👩‍💻 Author

**Nabila Fatharani Yuwvrida**

S1 Information Systems Student
