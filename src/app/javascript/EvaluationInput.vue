<template>
  <div>
    <input type="hidden" name="movie[evaluation]" :value="puzzleSelect" />
    <star-rating v-model="puzzleSelect"></star-rating>
  </div>
</template>

<script type="text/javascript">
import { StarRating } from "vue-rate-it";
import { PuzzlePiece } from "vue-rate-it/glyphs/puzzle-piece";
export default {
  created() {
    this.settings = {
      itemSize: 20,
      incrementer: 0.5,
      colorz: "#ddfbcc",
      puzzlePiece: PuzzlePiece,
    };
  },
  components: {
    StarRating,
    PuzzlePiece,
  },
  data() {
    return {
      puzzleSelect: 2,
      settings: {
        itemSize: 20,
        incrementer: 0.5,
        colorz: "#ddfbcc",
        puzzlePiece: "",
      },
    };
  },
};
</script>

<style></style>
