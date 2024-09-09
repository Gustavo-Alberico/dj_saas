export class SaasModule {
  constructor({ module }) {
    console.log(`${module} module initialized`);
    this.moduleName = module;
  }
}
