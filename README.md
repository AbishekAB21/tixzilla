# Tixzilla
# 🎟️ Movie Ticket Booking App

A modern, Firebase-backed movie ticket booking application built using Flutter and Riverpod. The app allows users to sign in, browse currently playing movies, view movie details and trailers, and book tickets — including seat selection and secure payment integration (planned).

---

## 🚀 Features

### 👤 Authentication
- Firebase Authentication for sign-up, sign-in, and secure user session management.

### 🏠 Home Screen
- Displays a list of movies currently in theaters.
- Movie data is fetched from **Firebase Firestore**.
- Smooth UI built with responsiveness and animations in mind.

### 🎬 Movie Details
- Detailed movie information screen showing:
  - Movie trailer (using `video_player` package)
  - Ratings
  - Overview

### 🎫 Ticket Booking
- **Seat selection UI** (in progress).
- **Proceed to payment** screen.
- Planned integration with payment gateways like **Razorpay** or **Stripe**.

### 🛠️ Admin Panel (Planned)
- Admin site (web) to manage movie listings.
- Add/edit/delete movie data stored in Firebase.
- Until then, data can be manually added to Firestore.

---

## 🧰 Tech Stack

- **Flutter**
- **Riverpod** (state management)
- **Firebase**:
  - Authentication
  - Firestore
  - (Upcoming) Firebase Storage
- **video_player** Flutter package
- **Git** for version control

---

## 📁 Folder Structure Highlights

