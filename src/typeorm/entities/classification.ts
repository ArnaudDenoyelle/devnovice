import {
  BaseEntity,
  Column,
  Entity,
  OneToMany,
  PrimaryGeneratedColumn,
} from "typeorm";
import { ClassificationLabelEntity } from "./classification_label";

@Entity({ name: "classification" })
export class ClassificationEntity extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: string;

  @Column({ name: "classification_id" })
  classificationId: string;

  @Column({ name: "level_id" })
  levelId: string;

  @Column({ name: "level" })
  level: number;

  @Column({ name: "deletion_date" })
  deletionDate: Date;

  @OneToMany(
    () => ClassificationLabelEntity,
    (labelEntity: ClassificationLabelEntity) => labelEntity.classification,
  )
  labels: ClassificationLabelEntity[];
}
