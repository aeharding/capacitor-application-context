export interface ApplicationContextPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
