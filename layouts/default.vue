<template>
  <div>
    <div class="header">
      <div class="header-container">
        <NuxtLink to="/"
          ><img id="logo" src="~/assets/images/logo.svg" alt=""
        /></NuxtLink>

        <div class="menu">
          <ul>
            <li>
              <NuxtLink to="/products">Products</NuxtLink>
            </li>
            <li>
              <NuxtLink to="/solutions">Solutions</NuxtLink>
            </li>
            <li>
              <NuxtLink to="/form">Pricing</NuxtLink>
            </li>
            <li>
              <a href="https://github.com/dreamvo/" target="_blank">GitHub</a>
            </li>
          </ul>
        </div>

        <span id="mobile-toggle" class="menu-open">
          <img src="~/assets/images/menu.svg" alt="" /><img
            src="~/assets/images/close.svg"
            alt=""
        /></span>
      </div>
    </div>

    <div class="container">
      <Nuxt />
    </div>
  </div>
</template>

<script>
export default {
  head: {
    title:
      'Dreamvo - Free and open source media streaming for the 21th century',
    meta: [{ charset: 'utf-8' }],
    bodyAttrs: {
      class: 'theme-light',
    },
  },
}
</script>

<style lang="scss">
$containerWidth: 1120px;
$headerWidth: 1270px;
$maxDesktopWidth: 960px;

@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 200;
  font-display: swap;
  src: url('~assets/fonts/OpenSans-Light.ttf') format('truetype');
}

@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url('~assets/fonts/OpenSans-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 600;
  font-display: swap;
  src: url('~assets/fonts/OpenSans-SemiBold.ttf') format('truetype');
}

@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 800;
  font-display: swap;
  src: url('~assets/fonts/OpenSans-Bold.ttf') format('truetype');
}

@font-face {
  font-family: 'Nunito';
  font-style: normal;
  font-weight: 200;
  font-display: swap;
  src: url('~assets/fonts/Nunito-Light.ttf') format('truetype');
}

@font-face {
  font-family: 'Nunito';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url('~assets/fonts/Nunito-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'Nunito';
  font-style: normal;
  font-weight: 600;
  font-display: swap;
  src: url('~assets/fonts/Nunito-SemiBold.ttf') format('truetype');
}

@font-face {
  font-family: 'Nunito';
  font-style: normal;
  font-weight: 800;
  font-display: swap;
  src: url('~assets/fonts/Nunito-Bold.ttf') format('truetype');
}

body {
  font-family: 'Open Sans', serif;
  font-size: 16px;
  margin: 0 30px 30px 50px;
}

body.theme-light {
  background-color: #ffffff;
  color: #2e3341;
}

body.theme-dark {
  background-color: #2e3341;
  color: #ffffff;
}

.container {
  width: $containerWidth;
  max-width: 100%;
  margin: auto;
}

.header {
  width: 100%;
  background-color: #ffffff;
  font-family: 'Nunito', serif;
  margin-bottom: 120px;

  .header-container {
    width: $headerWidth;
    max-width: 100%;
    padding: 25px 0;
    margin: 0 auto 0 auto;
    display: flex;
    justify-content: space-between;

    #logo {
      width: 160px;
      height: auto;
      display: inline-block;
    }

    .menu {
      display: flex;
      justify-content: space-around;

      @media (max-width: $maxDesktopWidth) {
        display: none;
      }

      ul {
        li {
          display: inline-block;
          font-weight: bold;
          font-size: 16px;
          margin-right: 63px;

          a {
            color: #2e3341;
          }
        }

        li:last-child {
          margin-right: 0;
        }
      }
    }
  }

  #mobile-toggle {
    display: none;

    @media (max-width: $maxDesktopWidth) {
      display: inline-flex;
      cursor: pointer;
    }

    :last-child {
      display: none;
    }
  }
}

a {
  text-decoration: none;
}

.btn {
  font-size: 16px;
  padding: 12px 20px;
  display: inline-block;
  border-radius: 3px;
  font-weight: bold;
  color: #2e3341;
  line-height: 22px;
}

.btn.btn-primary {
  background-color: #6666ff;
  color: #ffffff;
}

.btn.btn-lg {
  padding: 17px 25px;
}
</style>
