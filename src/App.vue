<template>
  <div id="app">
    <header class="app-header doodle-border">
      <div class="container">
        <div class="header-content">
          <h1 class="handwritten">🎨 Doodle Login</h1>
          <nav class="nav">
            <router-link to="/" class="nav-link">Login</router-link>
            <router-link to="/about" class="nav-link">About</router-link>
            <a href="https://github.com/fanz27916-byte/doodle-login-page-vue" 
               target="_blank" 
               class="nav-link">
              <span class="nav-icon">📁</span> Source
            </a>
          </nav>
        </div>
      </div>
    </header>
    
    <main class="app-main">
      <router-view />
    </main>
    
    <footer class="app-footer">
      <div class="container">
        <p>Generated with ❤️ using Figma-to-GitHub automation</p>
        <p class="footer-links">
          <a href="https://github.com/fanz27916-byte/doodle-login-page-vue" target="_blank">GitHub</a>
          •
          <a href="#" @click.prevent="showCredits">Credits</a>
          •
          <a href="#" @click.prevent="showLicense">MIT License</a>
        </p>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
const showCredits = () => {
  alert('Design inspired by Figma community\nDeveloped with Vue 3 + TypeScript\nGenerated using Figma-to-GitHub automation')
}

const showLicense = () => {
  alert('MIT License\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software...')
}
</script>

<style scoped>
.app-header {
  background: var(--color-doodle-primary);
  color: white;
  padding: var(--spacing-md) 0;
  margin-bottom: var(--spacing-xl);
}

.header-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.app-header h1 {
  font-size: var(--font-size-xl);
  margin: 0;
}

.nav {
  display: flex;
  gap: var(--spacing-lg);
  align-items: center;
}

.nav-link {
  color: white;
  text-decoration: none;
  font-weight: 700;
  padding: var(--spacing-xs) var(--spacing-sm);
  border-radius: var(--border-radius-sm);
  transition: all var(--transition-normal) ease;
}

.nav-link:hover {
  background: rgba(255, 255, 255, 0.2);
  transform: translateY(-2px);
}

.nav-link.router-link-active {
  background: var(--color-doodle-accent);
  color: var(--color-doodle-dark);
}

.nav-icon {
  margin-right: var(--spacing-xs);
}

.app-main {
  flex: 1;
  padding: var(--spacing-xl) 0;
}

.app-footer {
  background: var(--color-doodle-dark);
  color: white;
  padding: var(--spacing-lg) 0;
  text-align: center;
  margin-top: auto;
}

.app-footer p {
  margin: var(--spacing-xs) 0;
}

.footer-links {
  display: flex;
  justify-content: center;
  gap: var(--spacing-md);
  margin-top: var(--spacing-sm);
}

.footer-links a {
  color: var(--color-doodle-accent);
  text-decoration: none;
}

.footer-links a:hover {
  text-decoration: underline;
}

@media (max-width: 768px) {
  .header-content {
    flex-direction: column;
    gap: var(--spacing-md);
    text-align: center;
  }
  
  .nav {
    flex-wrap: wrap;
    justify-content: center;
    gap: var(--spacing-sm);
  }
  
  .footer-links {
    flex-direction: column;
    gap: var(--spacing-xs);
  }
}
</style>