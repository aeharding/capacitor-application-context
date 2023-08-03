export interface ApplicationContextPlugin {
  updateApplicationContext(
    applicationContext: Record<string, string>,
  ): Promise<void>;
}
