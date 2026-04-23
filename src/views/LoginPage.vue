<template>
  <div class="login-container">
    <div class="doodle-background">
      <div class="doodle-shape shape-1"></div>
      <div class="doodle-shape shape-2"></div>
      <div class="doodle-shape shape-3"></div>
    </div>
    
    <div class="login-card doodle-border doodle-shadow">
      <div class="login-header">
        <h1 class="handwritten">Welcome Back!</h1>
        <p class="subtitle">Sign in to your account</p>
      </div>
      
      <form @submit.prevent="handleSubmit" class="login-form">
        <InputField
          v-model="email"
          type="email"
          label="Email Address"
          placeholder="you@example.com"
          :required="true"
          prefix-icon="✉️"
        />
        
        <InputField
          v-model="password"
          type="password"
          label="Password"
          placeholder="••••••••"
          :required="true"
          prefix-icon="🔒"
        />
        
        <div class="form-options">
          <label class="checkbox-label">
            <input type="checkbox" v-model="rememberMe" />
            <span>Remember me</span>
          </label>
          <a href="#" class="forgot-link">Forgot password?</a>
        </div>
        
        <DoodleButton
          type="submit"
          variant="primary"
          size="large"
          :full-width="true"
          :loading="isLoading"
          class="login-button"
        >
          Sign In
        </DoodleButton>
      </form>
      
      <div class="divider">
        <span>or continue with</span>
      </div>
      
      <div class="social-login">
        <button class="social-button doodle-border" @click="loginWithGoogle">
          <span class="social-icon">G</span>
          Google
        </button>
        <button class="social-button doodle-border" @click="loginWithFacebook">
          <span class="social-icon">f</span>
          Facebook
        </button>
        <button class="social-button doodle-border" @click="loginWithTwitter">
          <span class="social-icon">🐦</span>
          Twitter
        </button>
      </div>
      
      <div class="signup-link">
        Don't have an account? <a href="#" class="link" @click.prevent="goToSignup">Sign up</a>
      </div>
    </div>
    
    <div class="footer">
      <p>© 2024 Doodle App. All rights reserved.</p>
      <p>Made with ❤️ from Figma design</p>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import DoodleButton from '@/components/DoodleButton.vue'
import InputField from '@/components/InputField.vue'

const router = useRouter()

const email = ref('')
const password = ref('')
const rememberMe = ref(false)
const isLoading = ref(false)

const handleSubmit = async () => {
  if (!email.value || !password.value) {
    alert('Please fill in all fields')
    return
  }

  isLoading.value = true
  
  // 模拟API调用
  await new Promise(resolve => setTimeout(resolve, 1500))
  
  console.log('Login attempt:', {
    email: email.value,
    password: password.value,
    rememberMe: rememberMe.value
  })
  
  isLoading.value = false
  alert('Login successful! (This is a demo)')
  
  // 在实际应用中，这里会跳转到仪表板
  // router.push('/dashboard')
}

const loginWithGoogle = () => {
  alert('Google login would be implemented here')
}

const loginWithFacebook = () => {
  alert('Facebook login would be implemented here')
}

const loginWithTwitter = () => {
  alert('Twitter login would be implemented here')
}

const goToSignup = () => {
  alert('Would navigate to signup page')
  // router.push('/signup')
}
</script>

<style scoped>
.login-container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: var(--spacing-xl);
  position: relative;
  overflow: hidden;
}

.doodle-background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: -1;
}

.doodle-shape {
  position: absolute;
  border-radius: 50%;
  opacity: 0.1;
}

.shape-1 {
  width: 300px;
  height: 300px;
  background: var(--color-doodle-primary);
  top: 10%;
  left: 5%;
  animation: float 20s ease-in-out infinite;
}

.shape-2 {
  width: 200px;
  height: 200px;
  background: var(--color-doodle-secondary);
  bottom: 15%;
  right: 10%;
  animation: float 15s ease-in-out infinite reverse;
}

.shape-3 {
  width: 150px;
  height: 150px;
  background: var(--color-doodle-accent);
  top: 50%;
  left: 80%;
  animation: float 25s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translateY(0) rotate(0deg); }
  50% { transform: translateY(-20px) rotate(180deg); }
}

.login-card {
  background: white;
  padding: var(--spacing-xl);
  border-radius: var(--border-radius-doodle);
  max-width: 400px;
  width: 100%;
  position: relative;
  z-index: 1;
}

.login-header {
  text-align: center;
  margin-bottom: var(--spacing-xl);
}

.login-header h1 {
  font-size: var(--font-size-large);
  color: var(--color-doodle-dark);
  margin-bottom: var(--spacing-sm);
}

.subtitle {
  color: #666;
  font-size: var(--font-size-small);
}

.login-form {
  margin-bottom: var(--spacing-lg);
}

.form-options {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: var(--spacing-md) 0;
}

.checkbox-label {
  display: flex;
  align-items: center;
  gap: var(--spacing-xs);
  cursor: pointer;
  font-size: 0.9em;
}

.checkbox-label input {
  width: 16px;
  height: 16px;
  accent-color: var(--color-doodle-primary);
}

.forgot-link {
  color: var(--color-doodle-primary);
  text-decoration: none;
  font-weight: 700;
  font-size: 0.9em;
}

.forgot-link:hover {
  text-decoration: underline;
}

.login-button {
  margin-top: var(--spacing-lg);
}

.divider {
  display: flex;
  align-items: center;
  margin: var(--spacing-lg) 0;
  color: #999;
}

.divider::before,
.divider::after {
  content: '';
  flex: 1;
  height: 1px;
  background: #ddd;
}

.divider span {
  padding: 0 var(--spacing-md);
  font-size: 0.9em;
}

.social-login {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--spacing-sm);
  margin-bottom: var(--spacing-lg);
}

.social-button {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: var(--spacing-xs);
  padding: var(--spacing-sm);
  background: white;
  cursor: pointer;
  transition: all 0.3s ease;
  font-family: var(--font-doodle);
  font-weight: 700;
  border: none;
  outline: none;
}

.social-button:hover {
  transform: translateY(-2px);
  box-shadow: var(--shadow-doodle-hover);
}

.social-icon {
  font-size: 1.2em;
}

.signup-link {
  text-align: center;
  color: #666;
  font-size: 0.9em;
}

.link {
  color: var(--color-doodle-primary);
  font-weight: 700;
  text-decoration: none;
  cursor: pointer;
}

.link:hover {
  text-decoration: underline;
}

.footer {
  margin-top: var(--spacing-xl);
  text-align: center;
  color: #999;
  font-size: 0.8em;
}

.footer p {
  margin: var(--spacing-xs) 0;
}

@media (max-width: 480px) {
  .login-container {
    padding: var(--spacing-md);
  }
  
  .login-card {
    padding: var(--spacing-lg);
  }
  
  .social-login {
    grid-template-columns: 1fr;
  }
}
</style>