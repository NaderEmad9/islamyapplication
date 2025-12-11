# Islamy Application

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/splashl.png" alt="Islamy App" width="200"/>
</p>

<p align="center">
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-3.24-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter"></a>
  <a href="https://dart.dev"><img src="https://img.shields.io/badge/Dart-3.4-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart"></a>
  <a href="https://github.com/NaderEmad9/islamyapplication/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License"></a>
  <img src="https://img.shields.io/badge/Platform-Android%20|%20iOS-lightgrey?style=for-the-badge" alt="Platform">
</p>

<p align="center">
  A beautiful Flutter-based Islamic application that provides Quranic surahs, Hadith, Sebha (Tasbih), and Islamic Radio with customizable themes and multi-language support.
</p>

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 📖 **Quran Reader** | Browse and read all 114 surahs with Arabic text |
| 📚 **Hadith Collection** | Access authentic Hadith with easy navigation |
| 📿 **Sebha (Tasbih)** | Digital counter for Dhikr and Tasbih |
| 📻 **Islamic Radio** | Stream Islamic radio stations |
| 🌙 **Dark/Light Mode** | Customizable themes for comfortable reading |
| 🌐 **Multi-Language** | Full support for Arabic and English |
| 📱 **Offline Support** | Local data storage for offline access |

---

## 🛠️ Tech Stack

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white" alt="Dart"/>
  <img src="https://img.shields.io/badge/Provider-State%20Management-purple?style=flat-square" alt="Provider"/>
  <img src="https://img.shields.io/badge/SharedPreferences-Local%20Storage-orange?style=flat-square" alt="SharedPreferences"/>
</p>

| Category | Technology |
|----------|------------|
| **Framework** | Flutter 3.24+ |
| **Language** | Dart 3.4+ |
| **State Management** | Provider |
| **Local Storage** | SharedPreferences |
| **Localization** | flutter_localizations, intl |
| **Icons** | FluentUI Icons, Font Awesome, Flutter SVG |
| **Fonts** | Google Fonts |

---

## 🏗️ Architecture

The application follows a **Feature-First** architecture pattern for better maintainability and scalability:

```
lib/
├── main.dart                 # App entry point
├── home_screen.dart          # Main home screen
├── app_colors.dart           # App color constants
├── theme_data.dart           # Theme configuration
│
├── providers/                # State management
│   └── settings_provider.dart
│
├── l10n/                     # Localization
│   ├── app_en.arb
│   └── app_ar.arb
│
├── ui/                       # Shared UI components
│
├── Quran/                    # Quran feature module
│   ├── quran_screen.dart
│   └── surah_details.dart
│
├── Hadeth/                   # Hadith feature module
│   ├── hadeth_screen.dart
│   └── hadeth_details.dart
│
├── Sebha/                    # Sebha/Tasbih feature
│   └── sebha_screen.dart
│
├── Radio/                    # Islamic Radio feature
│   └── radio_screen.dart
│
├── Settings/                 # Settings feature
│   └── settings_screen.dart
│
└── Home/                     # Home components
```

### Architecture Diagram

```
┌─────────────────────────────────────────────────────────┐
│                      Presentation                        │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────────────┐ │
│  │  Quran  │ │ Hadeth  │ │  Sebha  │ │ Radio │Settings │ │
│  └────┬────┘ └────┬────┘ └────┬────┘ └────────┬────────┘ │
│       └───────────┴──────────┴────────────────┘          │
│                          │                               │
├──────────────────────────┼───────────────────────────────┤
│                    State Management                      │
│              ┌───────────┴───────────┐                   │
│              │       Provider        │                   │
│              │  (SettingsProvider)   │                   │
│              └───────────┬───────────┘                   │
├──────────────────────────┼───────────────────────────────┤
│                      Data Layer                          │
│    ┌─────────────────────┴─────────────────────┐         │
│    │            Local Assets (JSON/TXT)         │        │
│    │           SharedPreferences (Settings)     │        │
│    └───────────────────────────────────────────┘         │
└─────────────────────────────────────────────────────────┘
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (version 3.24 or later)
- [Dart](https://dart.dev/get-dart) (version 3.4 or later)

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/NaderEmad9/islamyapplication.git
   ```

2. **Navigate to the Project Directory**

   ```bash
   cd islamyapplication
   ```

3. **Install Dependencies**

   ```bash
   flutter pub get
   ```

4. **Run the Application**

   ```bash
   flutter run
   ```

---

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

| Test Type | Status |
|-----------|--------|
| Unit Tests | 🔄 In Progress |
| Widget Tests | 🔄 In Progress |
| Integration Tests | 📋 Planned |

---

## 📸 Screenshots

### Light Mode / Arabic Language

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/splashl.png" alt="Splash Light" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/quran.png" alt="Quran Light" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/hadith.png" alt="Hadith Light" width="200" style="margin: 8px;"/>
</p>

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/sebha.png" alt="Sebha Light" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/radio.png" alt="Radio Light" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/hadithin.png" alt="Hadith Details Light" width="200" style="margin: 8px;"/>
</p>

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/queanin.png" alt="Quran Details Light" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/set.png" alt="Settings Light" width="200" style="margin: 8px;"/>
</p>

### Dark Mode / English Language

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/splashd.png" alt="Splash Dark" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/qurand.png" alt="Quran Dark" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/hadithd.png" alt="Hadith Dark" width="200" style="margin: 8px;"/>
</p>

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/sebhad.png" alt="Sebha Dark" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/radiod.png" alt="Radio Dark" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/hadithind.png" alt="Hadith Details Dark" width="200" style="margin: 8px;"/>
</p>

<p align="center">
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/quranind.png" alt="Quran Details Dark" width="200" style="margin: 8px;"/>
  <img src="https://github.com/NaderEmad9/islamyapplication/raw/main/assets/screenshots/setd.png" alt="Settings Dark" width="200" style="margin: 8px;"/>
</p>

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Nader Emad**

[![GitHub](https://img.shields.io/badge/GitHub-NaderEmad9-181717?style=flat-square&logo=github)](https://github.com/NaderEmad9)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin)](https://linkedin.com/in/naderemad9)

---

<p align="center">
  Made with ❤️ and Flutter
</p>
