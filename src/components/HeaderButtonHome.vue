<template>
  <router-link class="logoNav" to="/">
    <BaseLogo :freq=0.004></BaseLogo>
  </router-link>
</template>

<script>
import BaseLogo from '@/components/BaseLogo.vue';

export default {
  name: 'HeaderButtonHome',
  components: {
    BaseLogo,
  },
};
</script>

<style lang="scss">
.logoNav {
  width: 50px;
  height: 50px;
}
</style>
