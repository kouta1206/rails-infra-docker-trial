<template>
  <div>
    <input type="hidden" name="movie[evaluation]" :value="rating" />
    <StarRating v-model="rating"></StarRating>
  </div>
</template>

<script>
import { StarRating } from 'vue-rate-it';
export default {
  components: {
    StarRating
  },
  data() {
    return {
      rating: 3,
    };
  },
};
</script>

<style>

</style>