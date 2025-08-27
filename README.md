# Nous 🚀 – Startup Idea Evaluator

## 📌 Description
**Nous** is a mobile application where users can submit their startup ideas, receive a fun AI-generated rating, vote on others’ ideas, and see a leaderboard of top ideas. The app includes dark mode, swipe gestures, and a smooth, interactive UI.  

---

## 🧠 Problem Statement
Users can:  
✅ Submit their startup ideas  
⚙️ Get a fake AI-generated feedback rating  
👍 Vote on others’ ideas (one vote per idea)  
🏆 See a leaderboard of top ideas  

---

## 🧱 Features

### 1. Idea Submission Screen
- Form Fields: Startup Name, Tagline, Description  
- On submit:
  - Generate a fake AI rating (0–100)
  - Save the idea locally using **SharedPreferences**
  - Navigate to Idea Listing screen  

### 2. Idea Listing Screen
- Display all submitted ideas with:
  - Name, tagline, rating, vote count
  - “Upvote” button (one vote per idea)
  - “Read more” option to expand full description
  - Sort options: by rating or votes
- Swipe gestures to delete ideas  

### 3. Leaderboard Screen
- Show top 5 ideas (based on votes or ratings)
- Cool UI elements:
  - 🥇🥈🥉 badges
  - Gradient/shadow cards
 

### 4. Bonus Features
- Dark mode toggle  
- Toast notifications (on submission or voting)  
- Share ideas via social apps or clipboard  
- Custom fonts and icons  

---

## 🖼 Screenshots

### Idea Submission Screen
<img src="screenshots/MainScreen.png" width="300" alt="Idea Submission Screen">

### Idea Listing Screen
<img src="screenshots/ListenIdea.png" width="300" alt="Idea Listing Screen">

### Leaderboard Screen
<img src="screenshots/Leadboard.png" width="300" alt="Leaderboard Screen">

---

## 🎥 Video Walkthrough
Check out a quick 2–3 min demo of the app:  
<a href="https://youtu.be/9R3wrf1I1CA" target="_blank">
  <img src="https://img.youtube.com/vi/9R3wrf1I1CA/hqdefault.jpg" width="200" alt="Watch the video">
</a> 

---

## 🧑‍💻 Tech Stack
- **Flutter (Dart)**  
- Persistent storage: **SharedPreferences**  
- UI: Material widgets  
- Animations: Fade, Scale, Slide  
- Packages: `flutter_slidable`, `share_plus`, `google_fonts`  

---

## 🚀 How to Run Locally
#### Prerequisites

Install Flutter SDK

Android Studio or VS Code with Flutter extension

Emulator or physical Android/iOS device


##### Clone the repo:
git clone https://github.com/RohitManvar//nous.git

##### Navigate to project folder:
cd nous

##### Get dependencies:
flutter pub get

##### Run the app:
flutter run

## 📦 APK Installation

To try the app without building:

1.Download the latest APK from Release Section or direct 👉[Download Nous APK (GDrive)](https://drive.google.com/file/d/1YnKJn6uTOcQwPDmiJw1CnP1YSrEdlKIL/view?usp=drive_link)

2.Transfer it to your Android device.

3.Open the APK file and install the app.





