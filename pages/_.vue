<template>
  <div class="content-section">
    <div class="notfound-content">
      <h1>Page Not Found</h1>
      <p>We're sorry but we can't find the page you're looking for.</p>
      <NuxtLink to="/" class="btn btn-primary">Back to Home </NuxtLink>
    </div>
  </div>
</template>

<style lang="scss">
.content-section {
  display: inline-block;
  width: 100%;

  .notfound-content {
    margin-top: 80px;
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
  font-size: 16px;
  line-height: 32px;
  margin-bottom: 25px;
}
</style>
