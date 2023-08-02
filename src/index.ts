import { registerPlugin } from '@capacitor/core';

import type { ApplicationContextPlugin } from './definitions';

const ApplicationContext = registerPlugin<ApplicationContextPlugin>(
  'ApplicationContext',
  {
    web: () => import('./web').then(m => new m.ApplicationContextWeb()),
  },
);

export * from './definitions';
export { ApplicationContext };
