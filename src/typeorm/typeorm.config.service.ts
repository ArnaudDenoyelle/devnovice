import { Injectable } from "@nestjs/common";
import { TypeOrmModuleOptions, TypeOrmOptionsFactory } from "@nestjs/typeorm";
import { ClassificationLabelEntity } from "./entities/classification_label";
import { ClassificationEntity } from "./entities/classification";

@Injectable()
export class TypeOrmConfigService implements TypeOrmOptionsFactory {
  createTypeOrmOptions(): Promise<TypeOrmModuleOptions> | TypeOrmModuleOptions {
    return {
      type: "postgres",
      host: "localhost",
      port: 5432,
      database: "devnovice",
      username: "devnovice",
      password: "devnovice",
      ssl: { rejectUnauthorized: false },
      schema: "public",
      entities: [ClassificationEntity, ClassificationLabelEntity],
      synchronize: false,
    };
  }
}
