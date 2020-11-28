<template>
  <div class="container">
    <div class="header">
      <NuxtLink to="/"
        ><img id="logo" src="~/assets/images/logo.svg" alt=""
      /></NuxtLink>

      <div class="menu">
        <ul>
          <li>
            <NuxtLink to="/">Products</NuxtLink>
          </li>
          <li>
            <NuxtLink to="/">Pricing</NuxtLink>
          </li>
          <li>
            <NuxtLink to="/">Open Source</NuxtLink>
          </li>
          <li>
            <NuxtLink to="/">GitHub</NuxtLink>
          </li>
        </ul>
      </div>
    </div>

    <Nuxt />
  </div>
</template>

<style lang="scss"></style>
