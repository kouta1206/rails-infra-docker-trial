<template>
  <div>
    <input type="hidden" name="starring[name]" :value="starringsJson" />
    <vue-tags-input
      v-model="tag"
      :tags="tags"
      @tags-changed="(newTags) => (tags = newTags)"
      placeholder="主演を入力ください"
      :autocomplete-items="filteredNames"
    />
  </div>
</template>

<script>
import { VueTagsInput } from "@johmun/vue-tags-input";
export default {
  components: {
    VueTagsInput,
  },
  props: {
    autocompleteStarringNames: {
      type: Array,
      default: [],
    },
  },
  data() {
    return {
      tag: "",
      tags: [],
      autocompleteItems: this.autocompleteStarringNames,
    };
  },
  computed: {
    starringsJson() {
      return JSON.stringify(this.tags);
    },
    filteredNames() {
      return this.autocompleteItems.filter((i) => {
        return i.text.toLowerCase().indexOf(this.tag.toLowerCase()) !== -1;
      });
    },
  },
};
</script>

<style></style>
