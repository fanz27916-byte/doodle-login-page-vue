#!/bin/bash

echo "🚀 Setting up Doodle Login Page Vue 3 Project..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "   Download from: https://nodejs.org/"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "⚠️  Node.js version is $NODE_VERSION. Vue 3 requires Node.js 16 or higher."
    echo "   Please upgrade Node.js: https://nodejs.org/"
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js $(node -v) and npm $(npm -v) are installed"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully!"
    
    # Create .env file if it doesn't exist
    if [ ! -f .env ]; then
        echo "🔧 Creating .env file..."
        cat > .env << EOF
# Environment variables for Doodle Login Page
VITE_APP_NAME=Doodle Login
VITE_APP_VERSION=1.0.0
EOF
        echo "✅ .env file created"
    fi
    
    echo ""
    echo "🎉 Setup complete!"
    echo ""
    echo "📋 Available commands:"
    echo "   npm run dev     - Start development server"
    echo "   npm run build   - Build for production"
    echo "   npm run preview - Preview production build"
    echo "   npm run lint    - Lint and fix code"
    echo ""
    echo "🚀 To start the development server:"
    echo "   npm run dev"
    echo ""
    echo "🌐 Then open: http://localhost:5173"
    echo ""
    echo "📁 Project structure:"
    echo "   src/components/  - Reusable Vue components"
    echo "   src/views/       - Page components"
    echo "   src/styles/      - CSS styles and design tokens"
    echo "   src/router/      - Vue Router configuration"
    echo ""
    echo "🔧 If you encounter any issues:"
    echo "   1. Delete node_modules and package-lock.json"
    echo "   2. Run: npm install"
    echo "   3. Run: npm run dev"
else
    echo "❌ Failed to install dependencies"
    echo ""
    echo "🔧 Troubleshooting steps:"
    echo "   1. Try clearing npm cache: npm cache clean --force"
    echo "   2. Delete node_modules folder: rm -rf node_modules"
    echo "   3. Delete package-lock.json: rm -f package-lock.json"
    echo "   4. Run: npm install"
    exit 1
fi