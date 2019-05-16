# vuetify-money

This component works with v-text-field (vuetify).

v-text-field
R$ 12.345.678,90

v-model
12345678.90

## Features

- Vuetify Dependency
- Accept copy/paste
- Works fine with Chrome and Firefox. Others not tested.

## Usage:

### Globally
```
Install:
$ npm install vuetify-money --save

Register component:
import Vue from "vue";
import VuetifyMoney from "vuetify-money";
Vue.use(VuetifyMoney);
export default VuetifyMoney;

Parent component:
<template>
  <div>
    <vuetify-money v-model="value" label="Money Value" v-bind:config="config"/>
    v-model value: {{ value }}
  </div>
</template>
<script>
export default {
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
### As component
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
$ npm login
$ sh npm.sh
