<template>
  <div>
    <input type="hidden" name="movie[evaluation]" :value="rating" />
    <star-rating v-model="rating"></star-rating>
  </div>
</template>

<script type="text/javascript">
import { StarRating } from "vue-rate-it";
export default {
  components: {
    StarRating,
  },
  data() {
    return {
      rating: 3,
    };
  },
};
</script>

<style></style>
