<template>
  <div>
    <input type="hidden" name="movie[evaluation]" :value="rating" />
    <star-rating v-model="ratingOfNumber" :item-size="itemSize"></star-rating>
  </div>
</template>

<script type="text/javascript">
import { StarRating } from "vue-rate-it";
export default {
  components: {
    StarRating,
  },
  props: {
    itemSize: {
      type: Number,
      required: true,
    },
    ratingOfNumber: {
      type: Number,
    }
  },
  data() {
    return {
      rating: 3,
    };
  },
};
</script>

<style></style>
