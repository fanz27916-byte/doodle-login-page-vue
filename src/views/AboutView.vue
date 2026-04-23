<template>
  <div class="about">
    <div class="about-card doodle-border doodle-shadow">
      <h1 class="handwritten">About This Project</h1>
      
      <div class="about-content">
        <p>This login page was generated from a Figma design using the Figma-to-GitHub automation skill.</p>
        
        <div class="features">
          <h2>✨ Features:</h2>
          <ul>
            <li>Vue 3 with TypeScript</li>
            <li>Doodle-style design system</li>
            <li>Responsive layout</li>
            <li>Reusable components</li>
            <li>Form validation</li>
            <li>Social login options</li>
            <li>GitHub Actions CI/CD</li>
          </ul>
        </div>
        
        <div class="tech-stack">
          <h2>🛠 Tech Stack:</h2>
          <div class="tech-grid">
            <div class="tech-item">
              <span class="tech-icon">⚡</span>
              <span class="tech-name">Vue 3</span>
            </div>
            <div class="tech-item">
              <span class="tech-icon">📘</span>
              <span class="tech-name">TypeScript</span>
            </div>
            <div class="tech-item">
              <span class="tech-icon">🚀</span>
              <span class="tech-name">Vite</span>
            </div>
            <div class="tech-item">
              <span class="tech-icon">🎨</span>
              <span class="tech-name">CSS Variables</span>
            </div>
            <div class="tech-item">
              <span class="tech-icon">📱</span>
              <span class="tech-name">Responsive</span>
            </div>
            <div class="tech-item">
              <span class="tech-icon">🤖</span>
              <span class="tech-name">GitHub Actions</span>
            </div>
          </div>
        </div>
        
        <div class="design-tokens">
          <h2>🎨 Design Tokens:</h2>
          <div class="color-palette">
            <div class="color-item" style="background-color: var(--color-doodle-primary);">
              <span>Primary</span>
              <span>#FF6B6B</span>
            </div>
            <div class="color-item" style="background-color: var(--color-doodle-secondary);">
              <span>Secondary</span>
              <span>#4ECDC4</span>
            </div>
            <div class="color-item" style="background-color: var(--color-doodle-accent);">
              <span>Accent</span>
              <span>#FFD166</span>
            </div>
            <div class="color-item" style="background-color: var(--color-doodle-dark);">
              <span>Dark</span>
              <span>#1A535C</span>
            </div>
            <div class="color-item" style="background-color: var(--color-doodle-light);">
              <span>Light</span>
              <span>#F7FFF7</span>
            </div>
          </div>
        </div>
        
        <div class="actions">
          <DoodleButton @click="goBack" variant="primary">
            ← Back to Login
          </DoodleButton>
          <DoodleButton @click="viewSource" variant="secondary">
            📁 View Source
          </DoodleButton>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useRouter } from 'vue-router'
import DoodleButton from '@/components/DoodleButton.vue'

const router = useRouter()

const goBack = () => {
  router.push('/')
}

const viewSource = () => {
  window.open('https://github.com/fanz27916-byte/doodle-login-page-vue', '_blank')
}
</script>

<style scoped>
.about {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: var(--spacing-xl);
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
}

.about-card {
  background: white;
  padding: var(--spacing-xl);
  border-radius: var(--border-radius-doodle);
  max-width: 800px;
  width: 100%;
}

.about-card h1 {
  text-align: center;
  margin-bottom: var(--spacing-xl);
  color: var(--color-doodle-dark);
  font-size: 2.5rem;
}

.about-content {
  max-width: 600px;
  margin: 0 auto;
}

.about-content p {
  margin-bottom: var(--spacing-lg);
  line-height: 1.6;
  font-size: var(--font-size-medium);
}

.features h2,
.tech-stack h2,
.design-tokens h2 {
  color: var(--color-doodle-dark);
  margin: var(--spacing-lg) 0 var(--spacing-md);
  font-size: 1.8rem;
}

.features ul {
  list-style: none;
  padding-left: var(--spacing-md);
}

.features li {
  margin-bottom: var(--spacing-sm);
  padding-left: var(--spacing-sm);
  position: relative;
}

.features li:before {
  content: '✓';
  color: var(--color-doodle-primary);
  font-weight: bold;
  position: absolute;
  left: -1.5rem;
}

.tech-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: var(--spacing-sm);
  margin: var(--spacing-md) 0;
}

.tech-item {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
  padding: var(--spacing-sm);
  background: var(--color-doodle-light);
  border-radius: 10px;
  border: 2px solid var(--color-doodle-secondary);
}

.tech-icon {
  font-size: 1.5em;
}

.tech-name {
  font-weight: 700;
  color: var(--color-doodle-dark);
}

.color-palette {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
  gap: var(--spacing-sm);
  margin: var(--spacing-md) 0;
}

.color-item {
  padding: var(--spacing-md);
  border-radius: 10px;
  color: white;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  min-height: 100px;
  border: 3px solid rgba(0, 0, 0, 0.1);
}

.color-item:last-child {
  color: var(--color-doodle-dark);
}

.color-item span:first-child {
  font-weight: 700;
  margin-bottom: var(--spacing-xs);
  font-size: 1.1em;
}

.color-item span:last-child {
  font-family: monospace;
  font-size: 0.9em;
  opacity: 0.9;
}

.actions {
  display: flex;
  gap: var(--spacing-md);
  margin-top: var(--spacing-xl);
  justify-content: center;
  flex-wrap: wrap;
}

@media (max-width: 768px) {
  .about {
    padding: var(--spacing-md);
  }
  
  .about-card {
    padding: var(--spacing-lg);
  }
  
  .about-card h1 {
    font-size: 2rem;
  }
  
  .tech-grid,
  .color-palette {
    grid-template-columns: repeat(2, 1fr);
  }
  
  .actions {
    flex-direction: column;
  }
}

@media (max-width: 480px) {
  .tech-grid,
  .color-palette {
    grid-template-columns: 1fr;
  }
}
</style>