import { WebPlugin } from '@capacitor/core';

import type { ApplicationContextPlugin } from './definitions';

export class ApplicationContextWeb
  extends WebPlugin
  implements ApplicationContextPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
