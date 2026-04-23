<template>
  <button 
    :class="['doodle-button', variant, size, { 'full-width': fullWidth }]"
    :type="type"
    :disabled="disabled"
    @click="handleClick"
    class="doodle-border doodle-shadow"
  >
    <span class="button-content">
      <slot />
    </span>
    <span v-if="loading" class="loading-dots">
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    </span>
  </button>
</template>

<script setup lang="ts">
import { defineProps, withDefaults } from 'vue'

interface Props {
  variant?: 'primary' | 'secondary' | 'accent'
  size?: 'small' | 'medium' | 'large'
  type?: 'button' | 'submit' | 'reset'
  disabled?: boolean
  loading?: boolean
  fullWidth?: boolean
}

const props = withDefaults(defineProps<Props>(), {
  variant: 'primary',
  size: 'medium',
  type: 'button',
  disabled: false,
  loading: false,
  fullWidth: false
})

const emit = defineEmits<{
  click: [event: MouseEvent]
}>()

const handleClick = (event: MouseEvent) => {
  if (!props.disabled && !props.loading) {
    emit('click', event)
  }
}
</script>

<style scoped>
.doodle-button {
  position: relative;
  font-family: var(--font-doodle);
  font-weight: 700;
  cursor: pointer;
  transition: all 0.3s ease;
  background: white;
  color: var(--color-doodle-dark);
  border: none;
  outline: none;
}

.doodle-button::before {
  content: '';
  position: absolute;
  top: 4px;
  left: 4px;
  right: -4px;
  bottom: -4px;
  background: var(--color-doodle-dark);
  border-radius: var(--border-radius-doodle);
  z-index: -1;
  transition: all 0.3s ease;
}

.doodle-button:hover::before {
  top: 6px;
  left: 6px;
  right: -6px;
  bottom: -6px;
}

.doodle-button:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

.doodle-button:disabled::before {
  display: none;
}

/* 变体样式 */
.primary {
  background: var(--color-doodle-primary);
  color: white;
}

.secondary {
  background: var(--color-doodle-secondary);
  color: white;
}

.accent {
  background: var(--color-doodle-accent);
  color: var(--color-doodle-dark);
}

/* 尺寸样式 */
.small {
  padding: var(--spacing-xs) var(--spacing-sm);
  font-size: var(--font-size-small);
}

.medium {
  padding: var(--spacing-sm) var(--spacing-md);
  font-size: var(--font-size-medium);
}

.large {
  padding: var(--spacing-md) var(--spacing-lg);
  font-size: var(--font-size-large);
}

/* 全宽度 */
.full-width {
  width: 100%;
}

/* 加载动画 */
.loading-dots {
  display: inline-flex;
  margin-left: 8px;
}

.dot {
  width: 8px;
  height: 8px;
  margin: 0 2px;
  background-color: currentColor;
  border-radius: 50%;
  animation: dot-pulse 1.4s ease-in-out infinite;
}

.dot:nth-child(2) {
  animation-delay: 0.2s;
}

.dot:nth-child(3) {
  animation-delay: 0.4s;
}

@keyframes dot-pulse {
  0%, 60%, 100% {
    transform: scale(1);
    opacity: 1;
  }
  30% {
    transform: scale(1.2);
    opacity: 0.7;
  }
}
</style>