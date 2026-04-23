<template>
  <div class="app">
    <header class="header">
      <h1 class="title">🎨 Doodle Style Login Page</h1>
      <p class="subtitle">Generated from Figma Design</p>
    </header>
    
    <main class="main">
      <div class="login-card">
        <h2>Welcome Back!</h2>
        <p class="description">This Vue 3 project was automatically generated from a Figma design.</p>
        
        <div class="features">
          <h3>✨ Features:</h3>
          <ul>
            <li>Vue 3 with TypeScript</li>
            <li>Doodle-style design tokens</li>
            <li>Responsive layout</li>
            <li>Ready for GitHub deployment</li>
          </ul>
        </div>
        
        <div class="actions">
          <button class="btn btn-primary" @click="login">
            🚀 Get Started
          </button>
          <button class="btn btn-secondary" @click="learnMore">
            📚 Learn More
          </button>
        </div>
      </div>
    </main>
    
    <footer class="footer">
      <p>Generated with ❤️ using Figma-to-GitHub automation</p>
      <p>GitHub: <a href="https://github.com/fanz27916-byte/doodle-login-page-vue" target="_blank">fanz27916-byte/doodle-login-page-vue</a></p>
    </footer>
  </div>
</template>

<script setup lang="ts">
const login = () => {
  alert('Login functionality would go here!')
}

const learnMore = () => {
  window.open('https://github.com/fanz27916-byte/doodle-login-page-vue', '_blank')
}
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Comic Neue', cursive, -apple-system, BlinkMacSystemFont, sans-serif;
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
  min-height: 100vh;
}

.app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.header {
  text-align: center;
  padding: 3rem 1rem;
  background: white;
  border-bottom: 4px solid #FF6B6B;
}

.title {
  font-size: 2.5rem;
  color: #1A535C;
  margin-bottom: 0.5rem;
}

.subtitle {
  font-size: 1.2rem;
  color: #666;
}

.main {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2rem;
}

.login-card {
  background: white;
  border-radius: 20px;
  padding: 2.5rem;
  max-width: 500px;
  width: 100%;
  box-shadow: 8px 8px 0px rgba(26, 83, 92, 0.2);
  border: 3px solid #1A535C;
}

.login-card h2 {
  color: #1A535C;
  margin-bottom: 1rem;
  font-size: 2rem;
}

.description {
  color: #666;
  margin-bottom: 2rem;
  line-height: 1.6;
}

.features {
  margin-bottom: 2rem;
}

.features h3 {
  color: #4ECDC4;
  margin-bottom: 1rem;
  font-size: 1.5rem;
}

.features ul {
  list-style: none;
  padding-left: 1.5rem;
}

.features li {
  margin-bottom: 0.5rem;
  position: relative;
}

.features li:before {
  content: '✓';
  color: #FFD166;
  font-weight: bold;
  position: absolute;
  left: -1.5rem;
}

.actions {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
}

.btn {
  padding: 1rem 2rem;
  border: none;
  border-radius: 10px;
  font-family: inherit;
  font-size: 1.1rem;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s ease;
  flex: 1;
  min-width: 150px;
}

.btn-primary {
  background: #FF6B6B;
  color: white;
}

.btn-primary:hover {
  background: #ff5252;
  transform: translateY(-2px);
  box-shadow: 4px 4px 0px rgba(26, 83, 92, 0.3);
}

.btn-secondary {
  background: #4ECDC4;
  color: white;
}

.btn-secondary:hover {
  background: #3db8af;
  transform: translateY(-2px);
  box-shadow: 4px 4px 0px rgba(26, 83, 92, 0.3);
}

.footer {
  text-align: center;
  padding: 2rem;
  background: #1A535C;
  color: white;
}

.footer a {
  color: #FFD166;
  text-decoration: none;
}

.footer a:hover {
  text-decoration: underline;
}

@media (max-width: 600px) {
  .title {
    font-size: 2rem;
  }
  
  .login-card {
    padding: 1.5rem;
  }
  
  .actions {
    flex-direction: column;
  }
  
  .btn {
    width: 100%;
  }
}
</style>