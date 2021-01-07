<template>
  <div class="content-section">
    <video
      src="~/assets/images/camera.mp4"
      autoplay
      loop
      class="right-img"
    ></video>
    <div class="home-content">
      <h1>Free and open source media streaming for the 21th century</h1>
      <p>
        Dreamvo builds modern and robust solutions to embed media streaming in
        any application at any scale.
      </p>
      <NuxtLink to="/request-demo" class="btn btn-primary btn-lg"
        >Get a demo
      </NuxtLink>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  head: {
    meta: [{ charset: 'utf-8' }],
  },
}
</script>

<style lang="scss">
$maxDesktopWidth: 920px;

.right-img {
  max-width: 100%;
  width: 492px;
  height: auto;
  margin-left: 15px;
  float: right;

  @media (max-width: $maxDesktopWidth) {
    width: 90%;
    margin: auto;
    float: none;
  }
}

.content-section {
  display: inline-block;
  width: 100%;

  .home-content {
    margin-top: 80px;

    @media (max-width: $maxDesktopWidth) {
      margin: 0;
    }

    @media (min-width: 600px) and (max-width: $maxDesktopWidth) {
      text-align: center;
    }
  }

  h1 {
    font-weight: bold;
    font-size: 32px;
    line-height: 44px;
    margin-bottom: 25px;
  }

  p {
    font-size: 18px;
    line-height: 32px;
    margin-bottom: 25px;
  }
}
</style>
