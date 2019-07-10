<template>
  <div>
    <v-text-field
      v-model="modValue"
      v-bind:label="label"
      v-bind:value="compValue"
      v-on:keypress="onlyNumber"
      v-on:keyup="emit"
    ></v-text-field>
  </div>
</template>

<script>
export default {
  model: { prop: "value", event: "input" },
  props: {
    value: {
      // type: String,
      type: [String, Number],
      default: "0"
    },
    label: {
      type: String,
      default: ""
    },
    options: {
      type: Object,
      default: function() {
        return { locale: "pt-BR", prefix: "R$", precision: 2 };
      }
    }
  },
  data: () => ({
    modValue: ""
  }),
  computed: {
    /* Lógica:
       compValue é o ponto de parada
       O valor entra pelo prop e pára aqui, formatado.
       Ao digitar no v-text-field o valor é manipulado para NNNNNN.NN, emitido para o componente pai e retorna pelo prop, parando novamente aqui, formatado.
    */
    compValue() {
      // String only
      // return (this.modValue = this.humanFormat(this.machineFormat(this.value)));
      // String and Number
      return (this.modValue = this.humanFormat(this.machineFormat(this.humanFormat(this.value))));
    }
  },
  methods: {
    onlyNumber($event) {
      // console.log($event.keyCode); //keyCodes value
      let keyCode = $event.keyCode ? $event.keyCode : $event.which;
      if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) {
        // 46 is dot
        $event.preventDefault();
      }
    },
    emit() {
      this.$emit("input", this.machineFormat(this.modValue));
    },
    /* Formatar no padrão NNNNNN.NN */
    machineFormat(number) {
      if (number) {
        // Retirar prefixo
        if (number.includes(" ")) {
          number = number.split(" ")[1];
        }
        // Retirar pontos e virgulas
        number = number
          .replace(new RegExp(/[.]/, "g"), "")
          .replace(new RegExp(",", "g"), "");
        // Ajustar quantidade de zeros à esquerda
        number = number.padStart(parseInt(this.options.precision) + 1, "0");
        // Incluir ponto na casa correta, conforme a precisão configurada
        number =
          number.substring(0, number.length - parseInt(this.options.precision)) +
          "." +
          number.substring(
            number.length - parseInt(this.options.precision),
            number.length
          );
        if (isNaN(number)) {
          number = "0";
        }
      } else {
        number = "0";
      }
      return number;
    },
    humanFormat: function(number) {
      if (isNaN(number)) {
        number = "0";
      } else {
        // number = Number(number).toLocaleString(this.options.locale, {maximumFractionDigits: 2, minimumFractionDigits: 2, style: 'currency', currency: 'BRL'});
        number = Number(number).toLocaleString(this.options.locale, {
          maximumFractionDigits: this.options.precision,
          minimumFractionDigits: this.options.precision
        });
      }
      return this.options.prefix + " " + number;
    }
  }
};
</script>

