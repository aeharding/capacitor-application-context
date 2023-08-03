import { WebPlugin } from '@capacitor/core';

import type { ApplicationContextPlugin } from './definitions';

export class ApplicationContextWeb
  extends WebPlugin
  implements ApplicationContextPlugin
{
  async updateApplicationContext(
    applicationContext: Record<string, string>,
  ): Promise<void> {
    applicationContext; // Silently do nothing

    return undefined;
  }
}
