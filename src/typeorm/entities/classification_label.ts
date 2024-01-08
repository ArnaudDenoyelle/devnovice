import {
  BaseEntity,
  Column,
  Entity, JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ClassificationEntity } from "./classification";

@Entity({ name: "classification_label" })
export class ClassificationLabelEntity extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: string;

  @Column()
  locale: string;

  @Column()
  text: string;

  @JoinColumn({ name: "classification_id" })
  @ManyToOne(() => ClassificationEntity)
  classification: ClassificationEntity;
}
