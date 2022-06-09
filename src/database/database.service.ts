import { ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConnectionOptions } from 'typeorm';

export const databaseProviders = [
  TypeOrmModule.forRootAsync({
    inject: [ConfigService],
    async useFactory(config: ConfigService) {
      const isProduction = config.get('STAGE') === 'prod';
      return {
        ssl: isProduction,
        extra: {
          ssl: isProduction ? { rejectUnauthorized: false } : null,
        },
        type: config.get('DB_ENGINE'),
        host: config.get('DB_HOST'),
        username: config.get('DB_USER'),
        password: config.get('DB_PASSWORD'),
        port: +config.get('DB_PORT'),
        database: config.get('DB_NAME'),
        autoLoadEntities: true,
        synchronize: true,
      } as ConnectionOptions;
    },
  }),
];
