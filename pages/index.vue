<template>
  <div class="content-section">
    <img src="~/assets/images/camera.gif" alt="" class="right-img" />
    <div>
      <h1>We empower free and open source media streaming for the 21th century</h1>
      <p>Modern and secure solutions to empower media streaming in any application at any scale.</p>
      <NuxtLink to="/form" class="btn btn-primary btn-lg"
      >Request demo
      </NuxtLink
      >
      <a href="https://github.com/dreamvo/" target="_blank" class="btn btn-lg"
      >View on GitHub</a
      >
    </div>
  </div>
</template>

<script lang="ts">
export default {
  head: {
    title: 'Dreamvo',
    meta: [{ charset: 'utf-8' }]
  }
}
</script>

<style lang="scss">
.right-img {
  width: 492px;
  height: auto;
  margin-left: 60px;
  float: right;
}

.content-section {
  display: inline-block;
}

h1 {
  font-weight: bold;
  font-size: 32px;
  line-height: 44px;
  margin-bottom: 25px;
}

p {
  font-size: 16px;
  line-height: 32px;
  margin-bottom: 25px;
}
</style>
