# 🚀 HabitQuest Deployment Guide

This guide will walk you through deploying your HabitQuest application to the cloud using Render (free tier).

## 📋 Prerequisites

1. **GitHub Account**: Your code should be in a GitHub repository
2. **MongoDB Atlas Account**: For the database (free tier available)
3. **Render Account**: For hosting (free tier available)

## 🗄️ Step 1: Set Up MongoDB Atlas

1. Go to [MongoDB Atlas](https://www.mongodb.com/atlas) and create a free account
2. Create a new cluster (free tier: M0)
3. Create a database user with read/write permissions
4. Get your connection string
5. Replace `username`, `password`, and `cluster` in the connection string

## 🌐 Step 2: Deploy Backend to Render

1. **Push your code to GitHub** (if not already done):
   ```bash
   git add .
   git commit -m "Prepare for deployment"
   git push origin main
   ```

2. **Go to [Render](https://render.com)** and sign up/login

3. **Create a new Web Service**:
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Select the repository
   - Set the following:
     - **Name**: `habitquest-backend`
     - **Root Directory**: `server`
     - **Environment**: `Node`
     - **Build Command**: `npm install`
     - **Start Command**: `npm start`

4. **Set Environment Variables**:
   - `MONGO_URI`: Your MongoDB Atlas connection string
   - `JWT_SECRET`: A strong random string (use a password generator)
   - `EMAIL_USER`: Your Gmail address
   - `EMAIL_PASS`: Your Gmail app password
   - `CORS_ORIGIN`: Will be set after frontend deployment

5. **Deploy**: Click "Create Web Service"

6. **Note the URL**: Copy the backend URL (e.g., `https://habitquest-backend.onrender.com`)

## 🎨 Step 3: Deploy Frontend to Render

1. **Create a new Static Site**:
   - Click "New +" → "Static Site"
   - Connect your GitHub repository
   - Select the repository
   - Set the following:
     - **Name**: `habitquest-frontend`
     - **Root Directory**: `client`
     - **Build Command**: `npm install && npm run build`
     - **Publish Directory**: `build`

2. **Set Environment Variables**:
   - `REACT_APP_API_URL`: Your backend URL from Step 2

3. **Deploy**: Click "Create Static Site"

4. **Note the URL**: Copy the frontend URL (e.g., `https://habitquest-frontend.onrender.com`)

## 🔄 Step 4: Update CORS Origin

1. Go back to your backend service on Render
2. Update the `CORS_ORIGIN` environment variable with your frontend URL
3. Redeploy the backend service

## 🔧 Step 5: Update Frontend API Configuration

1. In your frontend code, update the API base URL to use the environment variable
2. Push the changes to GitHub
3. Render will automatically redeploy

## 🧪 Step 6: Test Your Deployment

1. Visit your frontend URL
2. Test user registration/login
3. Test creating and managing goals
4. Check that all features work as expected

## 📱 Step 7: Custom Domain (Optional)

1. In Render, go to your service settings
2. Add your custom domain
3. Update DNS records as instructed
4. Update environment variables with new URLs

## 🚨 Troubleshooting

### Common Issues:

1. **Build Failures**:
   - Check build logs in Render
   - Ensure all dependencies are in package.json
   - Verify Node.js version compatibility

2. **Database Connection Issues**:
   - Verify MongoDB Atlas connection string
   - Check IP whitelist in MongoDB Atlas
   - Ensure database user has correct permissions

3. **CORS Errors**:
   - Verify CORS_ORIGIN is set correctly
   - Check that frontend URL matches exactly

4. **Environment Variables**:
   - Ensure all required variables are set
   - Check for typos in variable names
   - Verify values are correct

## 🔒 Security Notes

1. **Never commit `.env` files** to Git
2. **Use strong JWT secrets**
3. **Enable HTTPS** (Render does this automatically)
4. **Regularly update dependencies**

## 📊 Monitoring

1. **Render Dashboard**: Monitor service health and logs
2. **MongoDB Atlas**: Monitor database performance
3. **Application Logs**: Check for errors and performance issues

## 🎉 Congratulations!

Your HabitQuest application is now deployed and accessible from anywhere in the world!

---

**Need Help?** Check Render's documentation or MongoDB Atlas support for additional assistance.
