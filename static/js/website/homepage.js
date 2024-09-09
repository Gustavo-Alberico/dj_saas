import { SaasModule } from '/public/js/saasModule.js';

class Homepage extends SaasModule {
  constructor() {
    super({ module: 'Homepage' });
  }
}

export default new Homepage();
