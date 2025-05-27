
---

# 📘 Course Curriculum Page

A professional-grade, dynamic course curriculum screen for an educational mobile application. This screen enables learners to track their **weekly and daily progress**, interact with **exclusive reels**, and unlock chapters sequentially upon completion.

---

## 📌 Features

* **Weekly Progress Tracker**
  Visual tracker showing overall course completion percentage.

* **Daily Progress Card** 
  Optionally shows daily goals or habits (can be extended).

* **Locked Chapter System**
  Chapters remain locked until prior ones are completed — ensures structured progression.

* **Course Sections & Chapters**
  Supports modular content delivery (e.g. “Start Speaking: From Zero to Basic”).

* **Exclusive Reels**
  Highlight reels for supplementary engagement, e.g. videos with teachers.

* **Responsive UI/UX**
  Optimized for mobile screen dimensions with collapsible sections and interactive icons.

---

## 📁 Folder Structure

```
/components
  └── CourseProgressCard.dart
  └── ChapterList.dart
  └── ChapterItem.dart
  └── CircularPlayButton.dart
  └── AppBar.dart
  └── lessonCard.dart
  └── sectionTitle.dart
  └── horizontalCard.dart


/data
  └── courseData.dart

/screens
  └── CourseCurriculumScreen.dart

/constants
  └── curriculumStyles.dart
  └── AppDimensions.dart
  └── colors.dart.dart
/models

/core

/main.dart
```

---

## 🧠 Logic Overview

### 📈 Progress Logic

* Weekly progress is fetched from user activity and reflected on a progress bar.
* Each chapter/module tracks its own completion state .

### 🔓 Chapter Unlock Flow

1. First chapter is unlocked by default.
2. When a chapter is marked as complete:

   * Its status is updated (persisted to local or backend store).
   * The next chapter in sequence becomes unlocked.
3. Locked chapters have a blurred overlay and lock icon until prerequisites are fulfilled.


---

## 🔧 Tech Stack

* **Frontend**: Flutter 
* **State Management**: RiverPod
* **Backend (Optional)**: REST API

---




---

## ✅ To-Do / Enhancements

* [ ] Add daily progress logic.
* [ ] Sync chapter status with backend.
* [ ] Accessibility improvements (screen reader labels, contrast, etc.)
* [ ] Analytics tracking for reel views.

---

## 📸 UI Reference

![Curriculum UI Screenshot](./assets/ui-screenshot.png)

---

## 🛠️ Setup Instructions

1. Clone the repo
2. Install dependencies
3. Navigate to `CourseCurriculumScreen` to view the screen

---

## 🧑‍💻 Contributors

* Frontend Developer: \[Ishika SHukla]


---
