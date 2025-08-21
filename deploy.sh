#!/bin/bash

echo "🚀 HabitQuest Deployment Script"
echo "================================"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Please initialize git first:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Initial commit'"
    echo "   git remote add origin <your-github-repo-url>"
    echo "   git push -u origin main"
    exit 1
fi

# Check if there are uncommitted changes
if [ -n "$(git status --porcelain)" ]; then
    echo "⚠️  You have uncommitted changes. Please commit them first:"
    git status --short
    echo ""
    echo "Run: git add . && git commit -m 'Prepare for deployment'"
    exit 1
fi

# Check if remote origin is set
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ No remote origin found. Please add your GitHub repository:"
    echo "   git remote add origin <your-github-repo-url>"
    exit 1
fi

echo "✅ Git repository is ready"
echo ""

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub"
    echo ""
    echo "🌐 Next steps:"
    echo "1. Go to https://render.com and sign up/login"
    echo "2. Create a MongoDB Atlas account at https://mongodb.com/atlas"
    echo "3. Follow the deployment guide in DEPLOYMENT.md"
    echo ""
    echo "📚 Read DEPLOYMENT.md for detailed instructions"
else
    echo "❌ Failed to push to GitHub. Please check your git configuration."
    exit 1
fi
