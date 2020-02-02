<template>
  <div id="app">
    <br />
    <VuetifyMoney
      v-model="value"
      v-bind:label="label"
      v-bind:disabled="disabled"
      v-bind:outlined="outlined"
      v-bind:options="options"
    />
    v-model value: {{ value }}
  </div>
</template>

<script>
import VuetifyMoney from "./components/VuetifyMoney.vue";

export default {
  name: "app",
  components: {
    VuetifyMoney
  },
  data: () => ({
    value: 12345678.4,
    label: "Valor",
    disabled: false,
    outlined: true,
    options: {
      locale: "pt-BR",
      prefix: "R$",
      precision: 2
    }
  })
};
</script>
