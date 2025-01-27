# Assignment 2: Fetching Data from a REST API

This project demonstrates fetching data from a REST API in a Flutter application. The fetched data is displayed in a `ListView` using **Provider** for state management.

---

## Features

- Fetch data from a public REST API ([JSONPlaceholder](https://jsonplaceholder.typicode.com/posts)).
- Display the fetched data in a scrollable `ListView`.
- Handle loading states with a `CircularProgressIndicator`.
- State management implemented using **Provider**.
- Dynamic data loading with a "Refresh" button.

---

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- Code editor (e.g., VS Code, Android Studio).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Nahid-web/task_from_scaleup/tree/main/assignment2_fetchingdata
   ```

2. Navigate to the project directory:
   ```bash
   cd assignment2_fetchingdata
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
│   └── post_provider.dart    # Provider for managing API state
├── services/
│   └── api_service.dart      # Service to fetch data from the API
├── screens/
│   └── api_screen.dart       # UI to display fetched data
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
- The `PostProvider` class fetches data using the `ApiService` and updates the UI using `notifyListeners()`.

### Fetching Data

- Data is fetched from the API using the `http` package.
- The `ApiService` handles the HTTP request and parses the response into a list of `Post` objects.

### UI

- The fetched data is displayed in a `ListView`.
- A `FloatingActionButton` triggers a refresh to fetch data again.
- A loading indicator is shown while data is being fetched.

---

## Screenshots

![image](https://github.com/user-attachments/assets/463c4694-b768-4923-a020-a764fda8c8ed)


---

