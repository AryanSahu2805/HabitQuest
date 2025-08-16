# 🎯 HabitQuest - Habit Tracking & Gamification Platform

[![GitHub](https://img.shields.io/badge/GitHub-HabitQuest-blue?style=for-the-badge&logo=github)](https://github.com/AryanSahu2805/HabitQuest)
[![Node.js](https://img.shields.io/badge/Node.js-18.20.7-green?style=for-the-badge&logo=node.js)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18.2.0-blue?style=for-the-badge&logo=react)](https://reactjs.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Atlas-green?style=for-the-badge&logo=mongodb)](https://www.mongodb.com/atlas)

> **Transform your daily habits into an epic journey with HabitQuest - where every goal achieved brings you closer to greatness!**

## 📖 Table of Contents

- [Overview](#-overview)
- [✨ Features](#-features)
- [🚀 Tech Stack](#-tech-stack)
- [📋 Prerequisites](#-prerequisites)
- [⚙️ Installation](#️-installation)
- [🔧 Configuration](#-configuration)
- [🚀 Running the Application](#-running-the-application)
- [📱 Usage Guide](#-usage-guide)
- [🏗️ Project Structure](#️-project-structure)
- [🔌 API Endpoints](#-api-endpoints)
- [🎨 Customization](#-customization)
- [🐛 Troubleshooting](#-troubleshooting)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## 🌟 Overview

**HabitQuest** is a modern, full-stack web application designed to help users build and maintain positive habits through gamification, progress tracking, and personalized experiences. Built with React and Node.js, it combines intuitive user interfaces with powerful backend capabilities to create an engaging habit-tracking experience.

### 🎯 **Why HabitQuest?**

- **🎮 Gamified Experience**: Level up through ranks (Bronze → Silver → Gold → Platinum)
- **🐾 Virtual Pet Companion**: Adopt and interact with virtual pets for motivation
- **📊 Visual Progress Tracking**: Beautiful charts and statistics for goal monitoring
- **🔔 Smart Notifications**: Email reminders and progress updates
- **📱 Responsive Design**: Works seamlessly across all devices
- **🔒 Secure Authentication**: JWT-based user management with email verification

## ✨ Features

### 🎮 **Core Functionality**
- **User Authentication System**
  - Secure registration and login
  - JWT token-based sessions
  - Email verification for new accounts
  - Password hashing with bcrypt

- **Habit & Goal Management**
  - Create daily, weekly, monthly, and yearly goals
  - Track completion streaks and progress
  - Set priority levels and descriptions
  - Mark goals as completed

- **Progress Analytics**
  - Visual progress charts using Chart.js
  - Completion statistics and trends
  - Streak tracking and achievements
  - Performance insights

### 🐾 **Gamification Elements**
- **Ranking System**
  - Bronze → Silver → Gold → Platinum progression
  - Achievement badges for milestones
  - Visual rank indicators with animations

- **Virtual Pet Companion**
  - Choose from Dog, Cat, or Bird
  - Interactive pet animations
  - Motivational messages and encouragement
  - Pet customization options

### 🎨 **Personalization**
- **Theme Customization**
  - Light/Dark color schemes
  - Background themes (Teal, Purple, Blue)
  - Font style options (Montserrat, Roboto, Open Sans)
  - Pet animation preferences

- **User Settings**
  - Email notification preferences
  - Profile customization
  - Privacy and security settings

### 📱 **Social Features**
- **Instagram Integration**
  - Share achievements via URL
  - Story and feed sharing capabilities
  - Progress milestone celebrations

## 🚀 Tech Stack

### **Frontend**
- **React 18.2.0** - Modern UI framework with hooks
- **React Router 6.22.0** - Client-side routing
- **Chart.js 4.4.1** - Data visualization and analytics
- **React Chart.js 2 5.2.0** - React wrapper for Chart.js
- **Axios 1.6.8** - HTTP client for API communication
- **CSS3** - Styling with modern CSS features

### **Backend**
- **Node.js 18.20.7** - JavaScript runtime environment
- **Express.js 4.18.2** - Web application framework
- **MongoDB Atlas** - Cloud database service
- **Mongoose 8.2.0** - MongoDB object modeling
- **JWT (jsonwebtoken 9.0.2)** - Authentication tokens
- **bcryptjs 2.4.3** - Password hashing
- **Nodemailer 6.9.9** - Email service integration

### **Development Tools**
- **React Scripts 5.0.1** - Development and build tools
- **CORS** - Cross-origin resource sharing
- **dotenv** - Environment variable management

## 📋 Prerequisites

Before running HabitQuest, ensure you have the following installed:

- **Node.js** (v18.20.7 or higher)
  - Download from [nodejs.org](https://nodejs.org/)
  - Verify installation: `node --version`

- **npm** (Node Package Manager)
  - Usually comes with Node.js
  - Verify installation: `npm --version`

- **Git** (for cloning the repository)
  - Download from [git-scm.com](https://git-scm.com/)
  - Verify installation: `git --version`

- **MongoDB Atlas Account** (for database)
  - Sign up at [mongodb.com/atlas](https://www.mongodb.com/atlas)
  - Create a free cluster

## ⚙️ Installation

### **1. Clone the Repository**
```bash
git clone https://github.com/AryanSahu2805/HabitQuest.git
cd HabitQuest
```

### **2. Install Dependencies**

**Backend Dependencies:**
```bash
cd server
npm install
```

**Frontend Dependencies:**
```bash
cd ../client
npm install
```

### **3. Environment Configuration**

Create a `.env` file in the `server` directory:

```env
# Database Configuration
MONGO_URI=mongodb+srv://<username>:<password>@<cluster>.mongodb.net/<database>

# JWT Configuration
JWT_SECRET=your_jwt_secret_key_here

# Server Configuration
PORT=5001

# Email Service Configuration
EMAIL_USER=your_email@gmail.com
EMAIL_PASS=your_app_password
```

> **⚠️ Important**: Replace placeholder values with your actual credentials.

## 🔧 Configuration

### **MongoDB Atlas Setup**
1. Create a new cluster in MongoDB Atlas
2. Set up database access with username/password
3. Configure network access (allow all IPs for development)
4. Copy the connection string to your `.env` file

### **Gmail App Password**
1. Enable 2-factor authentication on your Gmail account
2. Generate an app password for HabitQuest
3. Use this password in the `EMAIL_PASS` field

### **JWT Secret**
Generate a secure random string for JWT token signing:
```bash
node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
```

## 🚀 Running the Application

### **1. Start the Backend Server**
```bash
cd server
npm start
```

**Expected Output:**
```
MONGO_URI: mongodb+srv://...
Server running on port 5001
MongoDB connected
Auth routes loaded successfully
Goal routes loaded successfully
Settings routes loaded successfully
```

### **2. Start the Frontend Application**
```bash
cd client
npm start
```

**Expected Output:**
```
Compiled successfully!
You can now view habitquest-client in the browser.
  Local:            http://localhost:3000
  On Your Network:  http://192.168.x.x:3000
```

### **3. Access the Application**
- **Frontend**: [http://localhost:3000](http://localhost:3000)
- **Backend API**: [http://localhost:5001](http://localhost:5001)

## 📱 Usage Guide

### **Getting Started**
1. **Register Account**: Create a new account with email, username, and password
2. **Email Verification**: Check your email for verification (if enabled)
3. **Login**: Access your personalized dashboard
4. **Choose Pet**: Select your virtual companion (Dog, Cat, or Bird)

### **Creating Goals**
1. Navigate to the Goals section
2. Click "Add New Goal"
3. Fill in goal details:
   - **Name**: Goal description
   - **Type**: Daily, Weekly, Monthly, or Yearly
   - **Priority**: Low, Medium, or High
   - **Description**: Additional details (optional)

### **Tracking Progress**
- Mark goals as completed daily
- View streak counters and achievements
- Monitor progress through visual charts
- Celebrate milestones and rank-ups

### **Customization**
- Change color schemes and themes
- Modify pet preferences
- Adjust notification settings
- Personalize your experience

## 🏗️ Project Structure

```
HabitQuest/
├── client/                          # React Frontend
│   ├── public/
│   │   ├── assets/                 # Images and static files
│   │   │   ├── logo.png           # Application logo
│   │   │   ├── dog.png            # Pet images
│   │   │   ├── cat.png
│   │   │   ├── bird.png
│   │   │   ├── achievement-*.png  # Achievement badges
│   │   │   └── rank-*.png         # Rank indicators
│   │   └── index.html             # Main HTML file
│   ├── src/
│   │   ├── components/            # React components
│   │   │   ├── Login.js           # Landing page
│   │   │   ├── Register.js        # User registration
│   │   │   ├── Dashboard.js       # Main dashboard
│   │   │   ├── GoalForm.js        # Goal creation
│   │   │   ├── GoalList.js        # Goal display
│   │   │   ├── Pet.js             # Virtual pet
│   │   │   ├── Settings.js        # User preferences
│   │   │   ├── CalendarView.js    # Calendar interface
│   │   │   ├── ProgressInsights.js # Analytics
│   │   │   └── MotivationalQuotes.js # Quotes
│   │   ├── App.js                 # Main application
│   │   ├── index.js               # Entry point
│   │   └── styles.css             # Global styles
│   └── package.json               # Frontend dependencies
├── server/                         # Node.js Backend
│   ├── config/
│   │   └── db.js                  # Database connection
│   ├── models/
│   │   ├── User.js                # User data model
│   │   └── Goal.js                # Goal data model
│   ├── routes/
│   │   ├── auth.js                # Authentication endpoints
│   │   ├── goals.js               # Goal management
│   │   └── settings.js            # User settings
│   ├── server.js                  # Main server file
│   ├── hashPassword.js            # Password utilities
│   └── package.json               # Backend dependencies
├── .env                           # Environment variables
├── .gitignore                     # Git ignore rules
└── README.md                      # This file
```

## 🔌 API Endpoints

### **Authentication Routes**
```
POST   /api/auth/register          # User registration
POST   /api/auth/login             # User login
GET    /api/auth/user              # Get user profile
```

### **Goal Management Routes**
```
GET    /api/goals                  # Fetch user goals
POST   /api/goals                  # Create new goal
PUT    /api/goals/:id              # Update goal
DELETE /api/goals/:id              # Delete goal
```

### **Settings Routes**
```
PUT    /api/settings               # Update user preferences
```

### **Test Route**
```
GET    /api                        # Backend health check
```

## 🎨 Customization

### **Adding New Pet Types**
1. Add pet image to `client/public/assets/`
2. Update pet options in `Settings.js`
3. Modify pet logic in `Pet.js`

### **Creating New Themes**
1. Define color schemes in CSS variables
2. Add theme options to settings
3. Implement theme switching logic

### **Adding Achievement Badges**
1. Design badge images
2. Place in `client/public/assets/`
3. Update achievement logic in components

## 🐛 Troubleshooting

### **Common Issues & Solutions**

#### **Port Already in Use**
```bash
# Kill processes using ports 3000 or 5001
lsof -ti:3000 | xargs kill -9
lsof -ti:5001 | xargs kill -9
```

#### **MongoDB Connection Issues**
- Verify your connection string in `.env`
- Check network access in MongoDB Atlas
- Ensure cluster is running and accessible

#### **Email Service Problems**
- Verify Gmail app password
- Check 2FA is enabled
- Ensure `EMAIL_USER` and `EMAIL_PASS` are correct

#### **Frontend Build Issues**
```bash
# Clear node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

#### **Proxy Configuration Problems**
- Verify backend is running on port 5001
- Check proxy setting in `client/package.json`
- Ensure no firewall blocking localhost connections

### **Debug Mode**
Enable detailed logging by adding to `server/server.js`:
```javascript
app.use((req, res, next) => {
  console.log(`${req.method} ${req.path}`);
  next();
});
```

## 🤝 Contributing

We welcome contributions to HabitQuest! Here's how you can help:

### **Development Setup**
1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Test thoroughly
5. Submit a pull request

### **Code Standards**
- Follow existing code style and conventions
- Add comments for complex logic
- Update documentation for new features
- Ensure all tests pass

### **Reporting Issues**
- Use GitHub Issues for bug reports
- Include detailed error messages
- Provide steps to reproduce
- Specify your environment details

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **React Team** for the amazing frontend framework
- **Express.js** for the robust backend framework
- **MongoDB** for the scalable database solution
- **Chart.js** for beautiful data visualization
- **Open Source Community** for inspiration and support

## 📞 Support & Contact

- **GitHub Issues**: [Report bugs or request features](https://github.com/AryanSahu2805/HabitQuest/issues)
- **Repository**: [https://github.com/AryanSahu2805/HabitQuest](https://github.com/AryanSahu2805/HabitQuest)
- **Maintainer**: Aryan Sahu

---

<div align="center">

**Made with ❤️ by the HabitQuest Team**

*Transform your habits, transform your life!*

[![GitHub stars](https://img.shields.io/github/stars/AryanSahu2805/HabitQuest?style=social)](https://github.com/AryanSahu2805/HabitQuest/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/AryanSahu2805/HabitQuest?style=social)](https://github.com/AryanSahu2805/HabitQuest/network)
[![GitHub issues](https://img.shields.io/github/issues/AryanSahu2805/HabitQuest)](https://github.com/AryanSahu2805/HabitQuest/issues)

</div>
