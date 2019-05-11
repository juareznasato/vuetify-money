# vuetify-money

This component is built to works with v-text-field (vuetify).

v-text-field
R$ 12.345.678,90

v-model
12345678.90

Browsers:
Works fine with Chrome and Firefox. Others not tested.

Use:

```
<template>
  <div>
    <VuetifyMoney v-model="value" label="Money Value" v-bind:config="config"/>
    v-model value: {{ value }}
  </div>
</template>

<script>
import VuetifyMoney from "@/components/VuetifyMoney.vue";

export default {
  components: {
    VuetifyMoney
  },
  data: () => ({
    value: "12345678.90",
    config: {
      locale: "pt-BR",
      prefix: "R$",
      precision: 2
    }
  })
};
</script>
```

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
