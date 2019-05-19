<template>
  <div id="app">
    <VuetifyMoney v-model="value" label="Money Value" v-bind:options="options"/>
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
    value: "12345678.90",
    options: {
      locale: "pt-BR",
      prefix: "R$",
      precision: 2
    }
  })
};
</script>
