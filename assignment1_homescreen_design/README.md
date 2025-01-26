# Home Page Design

This Flutter project implements a **Home Page Design** based on a given layout. It includes sections for:

- **Greeting Section** with a profile picture and welcome message.
- **Search Bar** for user input.
- **Movie Sections**:
  - Trending Movies
  - Continue Watching
  - Recommended for You
- **Bottom Navigation Bar** for seamless navigation between screens.

---

## Features

### 1. Greeting Section
- Displays a welcome message and profile picture.
- Circular profile image with optional gradient shadow effect.

### 2. Search Bar
- Includes a search icon, input field, and filter button.
- Minimalistic design with a rounded background.

### 3. Movie Sections
- **Trending Movies**:
  - Displays a horizontally scrollable list of movie posters.
  - Includes a title and "See More" button.
- **Continue Watching**:
  - Horizontal list of movies with progress bars indicating how much has been watched.
  - Includes a title and "See More" button.
- **Recommended for You**:
  - Horizontally scrollable list of recommended movies.
  - Includes a title and "See More" button.

### 4. Bottom Navigation Bar
- Fixed navigation bar with four tabs:
  - Home
  - Explore
  - Downloads
  - Profile
- Highlights the selected tab with a custom color.

---

## Getting Started

### Prerequisites
- Flutter SDK installed on your machine.
- A code editor such as VS Code or Android Studio.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Nahid-web/task_from_scaleup/tree/main/assignment1_homescreen_design
   ```
2. Navigate to the project directory:
   ```bash
   cd assignment1_homescreen_design
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
├── main.dart                   # Entry point of the app
├── features/
│   └── home/
│       ├── screen/
│       │   └── home_screen.dart   # Home screen implementation
│       ├── widget/
│       │   ├── greeting_section.dart   # Greeting section widget
│       │   ├── search_bar.dart         # Search bar widget
│       │   ├── movie_section.dart      # Movie section widget
│       │   ├── continue_watching.dart  # Continue Watching widget
│       │   └── recommended_section.dart # Recommended for You widget
              
```

---

## Customization

1. **Theme Colors**:
   - Modify colors like background, text, and button highlights in each widget.

2. **Movie Data**:
   - Replace placeholder images and data with real API data or local assets.

3. **Navigation**:
   - Link the `BottomNavigationBar` tabs to actual screens.

---

## Screenshots
Include screenshots of the app to demonstrate the design.
