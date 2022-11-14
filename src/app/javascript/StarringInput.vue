<template>
<div>
  <input
    type="hidden"
    name="starring[name]"
    :value="starringsJson"
  >
  <vue-tags-input
    v-model="tag"
    :tags="tags"
    @tags-changed="newTags => tags = newTags"
  />
</div>
</template>

<script>
import { VueTagsInput } from "@johmun/vue-tags-input";
export default {
  components: {
    VueTagsInput,
  },
  data() {
    return {
      tag: '',
      tags: [],
    }
  },
  computed: {
    starringsJson() {
      return JSON.stringify(this.tags)
    }
  }
}
</script>

<style>

</style>