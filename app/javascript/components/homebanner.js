import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Book your dream island"],
    typeSpeed: 50
  });
}

export { loadDynamicBannerText };
