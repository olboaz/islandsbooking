const toggleDropdownMenu = () => {
  const avatar = document.querySelector('li.nav-item.dropdown');
  const avatarMenu = document.querySelector('.dropdown-menu.dropdown-menu-right');
  avatar.addEventListener('mouseover', (event) => {
    event.currentTarget.classList.add("show");
    avatarMenu.classList.add("show");
  });
}

export { toggleDropdownMenu };
