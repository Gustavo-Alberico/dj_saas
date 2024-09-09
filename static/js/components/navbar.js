import { SaasModule } from '/public/js/saasModule.js';

class Navbar extends SaasModule {
  constructor() {
    super({ module: 'Navbar' });
    this.mobileMenuActive = false;
  }

  changeMobileMenu() {
    this.mobileMenuActive = !this.mobileMenuActive;
  }
}

export default new Navbar();
