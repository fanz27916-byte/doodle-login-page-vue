# 🎨 Doodle Style Login Page - Vue 3

A beautiful, responsive login page with doodle-style design, automatically generated from Figma design using automation.

## ✨ Features

- **Vue 3** with Composition API and TypeScript
- **Doodle-style design system** with custom CSS variables
- **Responsive layout** that works on all devices
- **Reusable components** (DoodleButton, InputField)
- **Vue Router** for navigation
- **Pinia** for state management (ready to use)
- **Vite** for fast development and building
- **ESLint** with TypeScript support
- **GitHub Actions** CI/CD pipeline

## 🚀 Quick Start

### Option 1: Using setup script (Recommended)
```bash
# Make the script executable
chmod +x setup.sh

# Run the setup script
./setup.sh

# Start development server
npm run dev
```

### Option 2: Manual setup
```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Open in browser: http://localhost:5173
```

### Available Commands
```bash
npm run dev      # Start development server
npm run build    # Build for production
npm run preview  # Preview production build
npm run lint     # Lint and fix code
```

### Troubleshooting Import Errors
If you see `Failed to resolve import "@/views/LoginPage.vue"`, make sure you have:
1. Latest code: `git pull origin main`
2. Correct vite.config.ts with path aliases
3. Node.js 16+ installed

## 📁 Project Structure

```
src/
├── components/          # Reusable Vue components
│   ├── DoodleButton.vue  # Custom button with doodle style
│   └── InputField.vue    # Form input with validation
├── views/               # Page components
│   ├── LoginPage.vue    # Main login page
│   └── AboutView.vue    # About page
├── styles/              # CSS styles and design tokens
│   ├── tokens.css       # Design tokens (colors, spacing, etc.)
│   └── main.css        # Global styles and utilities
├── router/              # Vue Router configuration
│   └── index.ts
├── App.vue              # Root component with navigation
└── main.ts             # Application entry point
```

## 🎨 Design System

### Colors
```css
:root {
  --color-doodle-primary: #FF6B6B;   /* Vibrant red */
  --color-doodle-secondary: #4ECDC4; /* Teal */
  --color-doodle-accent: #FFD166;    /* Yellow */
  --color-doodle-dark: #1A535C;      /* Dark blue */
  --color-doodle-light: #F7FFF7;     /* Off-white */
}
```

### Typography
- **Font**: `Comic Neue` (handwritten style)
- **Sizes**: Responsive font scaling
- **Weights**: Bold for headings, regular for body

### Components
- **DoodleButton**: Custom button with hover effects
- **InputField**: Form input with icons and validation
- **LoginPage**: Complete login form with social options
- **AboutView**: Project information page

## 🎯 Usage

### Development
1. Clone the repository
2. Run `npm install`
3. Run `npm run dev`
4. Open `http://localhost:5173`

### Customization
1. Update design tokens in `src/styles/tokens.css`
2. Modify components in `src/components/`
3. Add new pages in `src/views/`
4. Update routing in `src/router/index.ts`

## 📦 Generated From

This project was automatically generated from a Figma design using the Figma-to-GitHub automation skill.

## 🛠 Tech Stack

- **Vue 3** - Progressive JavaScript framework
- **TypeScript** - Type safety
- **Vite** - Next generation frontend tooling
- **Vue Router** - Client-side routing
- **Pinia** - State management
- **ESLint** - Code quality
- **GitHub Actions** - CI/CD

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📞 Support

For issues and questions, please open an issue on GitHub.

---

Made with ❤️ using Figma-to-GitHub automation