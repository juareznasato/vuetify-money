# vuetify-money

This component works with vuetify. It uses v-text-field.

v-text-field
R$ 12.345.678,90

v-model
12345678.90

## Features

- Vuetify Dependency
- Accept copy/paste
- Works fine with Chrome and Firefox. Others not tested.

## Links
<p><a href="https://59hh7.codesandbox.io/">See DEMO here</a></p>
<p><a href="https://github.com/juareznasato/vuetify-money" target="_blank">GitHub</a></p>
<p><a href="https://www.npmjs.com/package/vuetify-money" target="_blank">npm</a></p>

## Usage:

### Globally
```
Install:
$ npm install vuetify-money --save

Register component:
1- Create a src/modules/vuetify-money.js file with the following content:
import Vue from "vue";
import VuetifyMoney from "vuetify-money";
Vue.use(VuetifyMoney);
export default VuetifyMoney;
2- Add to src/mains.js file:
import "./modules/vuetify-money.js";

Parent component:
<template>
  <div>
    <vuetify-money v-model="value" label="Money Value" v-bind:options="options"/>
    v-model value: {{ value }}
  </div>
</template>
<script>
export default {
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

```
### As component
```
<template>
  <div>
    <VuetifyMoney v-model="value" label="Money Value" v-bind:options="options"/>
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
    options: {
      locale: "pt-BR",
      prefix: "R$",
      precision: 2
    }
  })
};
</script>
```
