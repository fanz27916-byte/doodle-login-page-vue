<template>
  <div class="input-container">
    <label v-if="label" :for="id" class="input-label">
      {{ label }}
      <span v-if="required" class="required">*</span>
    </label>
    <div class="input-wrapper doodle-border">
      <div v-if="prefixIcon" class="prefix-icon">
        <slot name="prefix">
          {{ prefixIcon }}
        </slot>
      </div>
      <input
        :id="id"
        :type="type"
        :value="modelValue"
        :placeholder="placeholder"
        :disabled="disabled"
        :required="required"
        @input="handleInput"
        @focus="handleFocus"
        @blur="handleBlur"
        class="doodle-input"
      />
      <div v-if="suffixIcon" class="suffix-icon">
        <slot name="suffix">
          {{ suffixIcon }}
        </slot>
      </div>
    </div>
    <div v-if="error" class="error-message">
      {{ error }}
    </div>
    <div v-if="hint && !error" class="hint">
      {{ hint }}
    </div>
  </div>
</template>

<script setup lang="ts">
import { defineProps, withDefaults, ref } from 'vue'

interface Props {
  modelValue?: string
  type?: string
  label?: string
  placeholder?: string
  disabled?: boolean
  required?: boolean
  error?: string
  hint?: string
  prefixIcon?: string
  suffixIcon?: string
}

const props = withDefaults(defineProps<Props>(), {
  type: 'text',
  disabled: false,
  required: false
})

const emit = defineEmits<{
  'update:modelValue': [value: string]
  focus: [event: FocusEvent]
  blur: [event: FocusEvent]
}>()

const id = ref(`input-${Math.random().toString(36).substr(2, 9)}`)
const isFocused = ref(false)

const handleInput = (event: Event) => {
  const target = event.target as HTMLInputElement
  emit('update:modelValue', target.value)
}

const handleFocus = (event: FocusEvent) => {
  isFocused.value = true
  emit('focus', event)
}

const handleBlur = (event: FocusEvent) => {
  isFocused.value = false
  emit('blur', event)
}
</script>

<style scoped>
.input-container {
  margin-bottom: var(--spacing-md);
}

.input-label {
  display: block;
  margin-bottom: var(--spacing-xs);
  font-weight: 700;
  color: var(--color-doodle-dark);
  font-family: var(--font-doodle);
}

.required {
  color: var(--color-doodle-primary);
}

.input-wrapper {
  display: flex;
  align-items: center;
  background: white;
  padding: 0 var(--spacing-sm);
  transition: all 0.3s ease;
}

.input-wrapper:focus-within {
  box-shadow: var(--shadow-doodle);
  transform: translateY(-2px);
}

.prefix-icon,
.suffix-icon {
  color: var(--color-doodle-secondary);
  font-size: 1.2em;
}

.doodle-input {
  flex: 1;
  padding: var(--spacing-sm);
  border: none;
  outline: none;
  background: transparent;
  font-family: var(--font-doodle);
  font-size: var(--font-size-medium);
  color: var(--color-doodle-dark);
  min-width: 0;
}

.doodle-input::placeholder {
  color: #999;
  font-style: italic;
}

.doodle-input:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

.error-message {
  margin-top: var(--spacing-xs);
  color: var(--color-doodle-primary);
  font-size: 0.9em;
  font-weight: 700;
}

.hint {
  margin-top: var(--spacing-xs);
  color: var(--color-doodle-secondary);
  font-size: 0.9em;
  font-style: italic;
}
</style>