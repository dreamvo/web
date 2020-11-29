<template>
  <div>
    <div class="header">
      <div class="header-container">
        <NuxtLink to="/"
          ><img id="logo" src="~/assets/images/logo.svg" alt=""
        /></NuxtLink>

        <div ref="menu" class="menu" @change="toggleMenu">
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

        <div id="mobile-toggle" @click="toggleMenu">
          <img v-if="!isMenuOpen" src="~/assets/images/menu.svg" alt="" />
          <img v-if="isMenuOpen" src="~/assets/images/close.svg" alt="" />
        </div>
      </div>
    </div>

    <div class="container">
      <Nuxt />
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isMenuOpen: false,
    }
  },
  head: {
    title:
      'Dreamvo - Free and open source media streaming for the 21th century',
    meta: [
      { charset: 'utf-8' },
      {
        name: 'viewport',
        content: 'width=device-width,initial-scale=1,user-scalable=no',
      },
      {
        name: 'keywords',
        content:
          'dremavo,saas,service,cloud,hosted,solution,streaming,video,audio,media,self-hosted,open source,',
      },
      {
        name: 'description',
        content:
          'Modern and robust solutions to embed media streaming in any application at any scale.',
      },
      {
        property: 'og:description',
        content:
          'Modern and robust solutions to embed media streaming in any application at any scale.',
      },
    ],
    bodyAttrs: {
      class: 'theme-light',
    },
  },
  watch: {
    $route() {
      if (this.isMenuOpen) {
        this.toggleMenu()
      }
    },
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen

      if (this.isMenuOpen) {
        this.$refs.menu.setAttribute('class', 'menu open')
      } else {
        this.$refs.menu.setAttribute('class', 'menu')
      }
    },
  },
}
</script>

<style lang="scss">
$containerWidth: 1120px;
$headerWidth: 1270px;
$maxDesktopWidth: 920px;

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
  margin: 0 30px 50px 30px;
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

  @media (max-width: $maxDesktopWidth) {
    margin-bottom: 35px;
  }

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
        position: fixed;
        background: #ffffff;
        width: 100%;
        top: 80px;
        left: 0;
        height: 100vh;
      }

      ul {
        margin: auto;

        @media (max-width: $maxDesktopWidth) {
          margin: 0;
          left: 25px;
          position: absolute;
        }

        li {
          display: inline-block;
          font-weight: bold;
          font-size: 16px;
          margin-right: 63px;

          @media (max-width: $maxDesktopWidth) {
            display: block;
            margin: 35px 0;
            font-size: 18px;
          }

          a {
            color: #2e3341;
            transition: 0.1s;
            border-bottom: 0 solid transparent;
            padding-bottom: 3px;

            @media (max-width: $maxDesktopWidth) {
              border-bottom: none;
            }
          }

          a:hover {
            border-bottom: 3px solid #2e3341b8;

            @media (max-width: $maxDesktopWidth) {
              border-bottom: none;
            }
          }
        }

        li:last-child {
          @media (min-width: $maxDesktopWidth) {
            margin-right: 0;
          }
        }
      }
    }

    .menu.open {
      @media (max-width: $maxDesktopWidth) {
        display: inline-block;
      }
    }
  }

  #mobile-toggle {
    display: none;

    @media (max-width: $maxDesktopWidth) {
      display: inline-flex;
      cursor: pointer;
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
  transition: 0.2s;
}

.btn:hover {
  opacity: 0.8;
}

.btn.btn-primary {
  background-color: #6666ff;
  color: #ffffff;
}

.btn.btn-lg {
  padding: 17px 25px;
}
</style>
