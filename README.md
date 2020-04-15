# vuetify-money

This component works with vuetify.

input
R$ 12.345.678,90

v-model
12345678.90

## Dependency
- VueJS
- Vuetify 2.x

## Links
<p><a href="https://59hh7.codesandbox.io/">See DEMO here</a></p>
<p><a href="https://github.com/juareznasato/vuetify-money" target="_blank">GitHub</a></p>
<p><a href="https://www.npmjs.com/package/vuetify-money" target="_blank">npm</a></p>

## Install
```
$ npm install vuetify-money --save

Register component:
1- Create a src/plugins/vuetify-money.js file with the following content:
import Vue from "vue";
import VuetifyMoney from "vuetify-money";
Vue.use(VuetifyMoney);
export default VuetifyMoney;

2- Add file to src/main.js:
import "./plugins/vuetify-money.js";

Parent component:
<template>
  <div>
    <vuetify-number
      v-model="value"
      v-bind:label="label"
      v-bind:readonly="readonly"
      v-bind:disabled="disabled"
      v-bind:outlined="outlined"
      v-bind:clearable="clearable"
      v-bind:options="options"
    />
    Parent v-model: {{ value }}
  </div>
</template>
<script>
export default {
  data: () => ({
    value: "1234567.89",
    label: "Value",
    readonly: false,
    disabled: false,
    outlined: true,
    clearable: true,
    options: {
      locale: "pt-BR",
      prefix: "R$",
      suffix: "",
      length: 9,
      precision: 2
    }
  })
};
</script>
