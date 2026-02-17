# 🗞️ H4X0R News (Hacker News Client)

A modern, native iOS client for Hacker News built with **SwiftUI**. This app fetches the latest top stories using the Algolia API and allows users to read articles within the app using a WebKit integration.

## 📱 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/fda8630e-fa31-4bb9-8f55-7ac6565c78fb" width="250" alt="News List">
  <img src="https://github.com/user-attachments/assets/c1aae2f3-d34d-4270-ba93-0bb7c9b2dd2d" width="250" alt="Article View">
</p>

## 🚀 Key Features

* **Live Data Fetching:** Retrieves top stories in real-time using the [Hacker News Algolia API](https://hn.algolia.com/api).
* **Modern Networking:** Uses `async/await` for clean and efficient asynchronous data handling (replacing legacy closures).
* **WebView Integration:** Renders full articles within the app using `WKWebView` wrapped in `UIViewRepresentable`.
* **Navigation:** Seamless transition between the news list and article details using `NavigationStack`.
* **JSON Parsing:** Utilizes `Codable` and `Identifiable` protocols for safe data decoding.

## 🛠 Tech Stack & Modernization

While this project is based on a classic iOS Bootcamp curriculum, I have refactored the code to meet **2026 / Swift 6 standards**:

* **Language:** Swift 6
* **Framework:** SwiftUI
* **Architecture:** MVVM (Model-View-ViewModel) pattern
* **Concurrency:** Implemented **Structured Concurrency (`async`/`await`)** instead of completion handlers.
* **State Management:** Upgraded to the new **`@Observable`** macro (replacing `ObservableObject`) for better performance.
* **Thread Safety:** Applied **`@MainActor`** to ensure UI updates happen on the main thread safely.

## 📡 API Reference

This project uses the unauthenticated Algolia API:
```http
https://hn.algolia.com/api/v1/search?tags=front_page
