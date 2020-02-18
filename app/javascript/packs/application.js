require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { toggleDropdownMenu } from "../components/navbar";

toggleDropdownMenu();
