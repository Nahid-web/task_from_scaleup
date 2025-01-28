# Assignment 3: Offline Capabilities with Local Storage

This Flutter project demonstrates implementing offline capabilities using **Hive** for local storage. The app fetches data from a REST API, caches it locally, and displays the cached data when offline.

---

## Features

- Fetch data from a public REST API ([JSONPlaceholder](https://jsonplaceholder.typicode.com/posts)).
- Cache the fetched data locally using **Hive**.
- Display cached data when the device is offline.
- State management implemented using **Provider**.
- Dynamic data refresh with a "Refresh" button.

---

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- Code editor (e.g., VS Code, Android Studio).

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Nahid-web/task_from_scaleup/tree/main/assignment3_localstorage
   ```

2. Navigate to the project directory:

   ```bash
   cd assignment3_localstorage
   ```

3. Get the required dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## File Structure

```
lib/
├── main.dart                 # Entry point of the app
├── models/
│   └── post_model.dart       # Post model for API data
├── providers/
│   └── offline_provider.dart # Provider for managing API state
├── services/
│   └── api_service.dart      # Service to fetch data from the API
├── screens/
│   └── offline_screen.dart   # UI to display fetched and cached data
```

---

## REST API

This project uses the following API endpoint from JSONPlaceholder:

**Endpoint:**

```
GET https://jsonplaceholder.typicode.com/posts
```

---

## How It Works

### State Management

- **Provider** is used to manage state and handle data fetching.
- The `OfflineProvider` class fetches data using the `ApiService` and updates the UI using `notifyListeners()`.

### Fetching and Caching Data

- Data is fetched from the API using the `http` package.
- The `ApiService` caches the data locally in a Hive box (`cachedData`).
- When offline, the app retrieves data directly from the Hive cache.

### UI

- The fetched or cached data is displayed in a `ListView`.
- A `FloatingActionButton` triggers a refresh to fetch and cache new data.
- A loading indicator (`CircularProgressIndicator`) is shown while data is being fetched.

---

## Customization

1. **Change the API Endpoint:**
   Update the API endpoint in `api_service.dart`:

   ```dart
   static const String apiUrl = 'YOUR_NEW_API_ENDPOINT';
   ```

2. **Switch Database:**
   Replace Hive with SQLite or another database if needed.

3. **Enhance Error Handling:**
   Add detailed error messages for API failures or database issues.

---

## Screenshots

Include screenshots of the app to demonstrate:

- Online mode (data fetched from API).
- ![image](https://github.com/user-attachments/assets/99ba1f2e-10f6-459b-8cfb-2d4ca39c164a)

- Offline mode (data loaded from cache).
- ![image](https://github.com/user-attachments/assets/03000b74-2830-499f-9517-daaece7fdc16)


---
