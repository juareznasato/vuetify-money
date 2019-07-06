<template>
  <v-app id="inspire">
    <v-toolbar dark app fixed clipped-left color="cyan"></v-toolbar>
    <v-content>
      <VuetifyMoney v-model="value" label="Money Value" v-bind:options="options"/>
      v-model value: {{ value }}
    </v-content>
  </v-app>
</template>

<script>
import VuetifyMoney from "./components/VuetifyMoney.vue";

export default {
  name: "app",
  components: {
    VuetifyMoney
  },
  data: () => ({
    value: 12345678.40,
    options: {
      locale: "pt-BR",
      prefix: "R$",
      precision: 2
    }
  })
};
</script>
