import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const homeText = document.getElementById('banner-typed-text');
  if (homeText) {
    new Typed('#banner-typed-text', {
      strings: ["Book your dream island"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
