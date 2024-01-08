import { Module } from "@nestjs/common";
import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { TypeOrmConfigService } from "./typeorm/typeorm.config.service";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ClassificationEntity } from "./typeorm/entities/classification";
import { ClassificationLabelEntity } from "./typeorm/entities/classification_label";

@Module({
  imports: [
    TypeOrmModule.forRootAsync({ useClass: TypeOrmConfigService }),
    TypeOrmModule.forFeature([
      ClassificationEntity,
      ClassificationLabelEntity,
    ]),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
