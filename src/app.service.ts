import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { In, IsNull, Repository } from 'typeorm';
import { ClassificationEntity } from "./typeorm/entities/classification";

@Injectable()
export class AppService {
  constructor(
    @InjectRepository(ClassificationEntity)
    private classificationRepository: Repository<ClassificationEntity>,
  ) {}

  /**
   * La base : on retourne tous les éléments
   * Par contre, ça charge que les classifications, pas les labels
   */
  async exemple1() {
    return await this.classificationRepository.find();
  }

  /**
   * On demande à charger les relations OneToMany avec la clause "relations"
   */
  async exemple2() {
    return await this.classificationRepository.find({
      relations: { labels: true },
    });
  }

  /**
   * Une clause where, c'est bien aussi 🙄
   * Avec les paramètres (facultatifs) take et skip, pour la pagination
   */
  async exemple3() {
    /*
     * Si t'as besoin que de la clause WHERE, tu as la variante findBy
     * mais elle ne permet pas de renseigner les autres paramètres
     * ⇒ this.classificationRepository.findBy({deletionDate: IsNull()})
     */
    return await this.classificationRepository.find({
      /*
       * Là, ça fait juste un AND entre tous les critères
       */
      where: {
        /*
         * Le gros intérêt ici, c'est que :
         * 1) ton IDE autocomplète les attributs
         * 2) Si tu mets un attribut qui n'existe pas, ça plante à la compilation
         */
        deletionDate: IsNull(),
        labels: {
          locale: "fr-FR",
        },
      },
      take: 5,
      skip: 2,
      relations: { labels: true },
      order: {
        id: "ASC",
        levelId: "ASC",
      },
    });
  }

  /**
   * Parfois, tu as besoin aussi d'un count.
   *
   * Tu peux faire un find et un count séparément.
   *
   * Tu peux faire aussi un findAndCount en un seul appel
   * (mais ça fait bien 2 requêtes SQL derrière)
   */
  async exemple4() {
    // Évidemment, t'as aussi la variante findAndCountBy
    return await this.classificationRepository.findAndCount({
      where: {
        deletionDate: IsNull(),
        labels: {
          locale: In(["fr-FR", "en-GB"]),
        },
      },
      take: 10,
      skip: 2,
      relations: { labels: true },
      order: {
        id: "ASC",
        levelId: "ASC",
      },
    });
  }
}
