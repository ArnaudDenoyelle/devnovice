-- Déco
INSERT INTO classification VALUES (1, 'root', 1, 'deco', NULL);
INSERT INTO classification_label VALUES (90011, 'fr-FR', 'Décoration', 1);
INSERT INTO classification_label VALUES (90012, 'en-GB', 'Decoration', 1);
INSERT INTO classification_label VALUES (90013, 'de-DE', 'Dekoration', 1);

    -- Éclairage
    INSERT INTO classification VALUES (11, 'fam', 2, 'light', NULL);
    INSERT INTO classification_label VALUES (90111, 'fr-FR', 'Éclairage', 11);
    INSERT INTO classification_label VALUES (90112, 'en-GB', 'Lighting', 11);
    INSERT INTO classification_label VALUES (90113, 'de-DE', 'Beleuchtung', 11);

        -- Ampoules
        INSERT INTO classification VALUES (111, 'aisle', 3, 'bulb', NULL);
        INSERT INTO classification_label VALUES (91111, 'fr-FR', 'Ampoules', 111);
        INSERT INTO classification_label VALUES (91112, 'en-GB', 'Light bulbs', 111);
        INSERT INTO classification_label VALUES (91113, 'de-DE', 'Glühbirne', 111);

        -- Lampes
        INSERT INTO classification VALUES (112, 'aisle', 3, 'lampes', NULL);
        INSERT INTO classification_label VALUES (91121, 'fr-FR', 'Lampes', 112);
        INSERT INTO classification_label VALUES (91122, 'en-GB', 'lampes', 112);
        INSERT INTO classification_label VALUES (91123, 'de-DE', 'Lampen', 112);

    -- Murs
    INSERT INTO classification VALUES (12, 'fam', 2, 'wall', NULL);
    INSERT INTO classification_label VALUES (90121, 'fr-FR', 'Murs', 12);
    INSERT INTO classification_label VALUES (90122, 'en-GB', 'Walls', 12);
    INSERT INTO classification_label VALUES (90123, 'de-DE', 'Wände', 12);

        -- Peinture
        INSERT INTO classification VALUES (121, 'aisle', 3, 'paint', NULL);
        INSERT INTO classification_label VALUES (91211, 'fr-FR', 'Peinture', 121);
        INSERT INTO classification_label VALUES (91212, 'en-GB', 'Paint', 121);
        INSERT INTO classification_label VALUES (91213, 'de-DE', 'Malen', 121);

        -- Papier peint
        INSERT INTO classification VALUES (122, 'aisle', 3, 'wallpaper', NULL);
        INSERT INTO classification_label VALUES (91221, 'fr-FR', 'Papier peint', 122);
        INSERT INTO classification_label VALUES (91222, 'en-GB', 'Wallpaper', 122);
        INSERT INTO classification_label VALUES (91223, 'de-DE', 'Hintergrund', 122);

-- Brico
INSERT INTO classification VALUES (2, 'root', 1, 'brico', NULL);
INSERT INTO classification_label VALUES (90021, 'fr-FR', 'Bricolage', 2);
INSERT INTO classification_label VALUES (90022, 'en-GB', 'DIY', 2);
INSERT INTO classification_label VALUES (90023, 'de-DE', 'Heimwerken', 2);

    -- Outils
    INSERT INTO classification VALUES (21, 'fam', 1, 'tools', NULL);
    INSERT INTO classification_label VALUES (90211, 'fr-FR', 'Outils', 21);
    INSERT INTO classification_label VALUES (90212, 'en-GB', 'Tools', 21);
    INSERT INTO classification_label VALUES (90213, 'de-DE', 'Werkzeuge', 21);

        -- Électroportatif
        INSERT INTO classification VALUES (211, 'aisle', 1, 'electric', NULL);
        INSERT INTO classification_label VALUES (92111, 'fr-FR', 'Électroportatif', 211);
        INSERT INTO classification_label VALUES (92112, 'en-GB', 'Electric portable', 211);
        INSERT INTO classification_label VALUES (92113, 'de-DE', 'Elektrisch tragbar', 211);

        -- Outillage à main
        INSERT INTO classification VALUES (212, 'aisle', 1, 'hand-tools', NULL);
        INSERT INTO classification_label VALUES (92121, 'fr-FR', 'Outillage à main', 212);
        INSERT INTO classification_label VALUES (92122, 'en-GB', 'hand tools', 212);
        INSERT INTO classification_label VALUES (92123, 'de-DE', 'Handwerkzeuge', 212);

    -- Vêtements
    INSERT INTO classification VALUES (22, 'fam', 1, 'clothes', NULL);
    INSERT INTO classification_label VALUES (902201, 'fr-FR', 'Vêtements', 22);
    INSERT INTO classification_label VALUES (902202, 'en-GB', 'Clothes', 22);
    INSERT INTO classification_label VALUES (902203, 'de-DE', 'Kleidung', 22);

        -- Chaussures
        INSERT INTO classification VALUES (221, 'aisle', 1, 'shoes', NULL);
        INSERT INTO classification_label VALUES (92211, 'fr-FR', 'Chaussures', 221);
        INSERT INTO classification_label VALUES (92212, 'en-GB', 'Shoes', 221);
        INSERT INTO classification_label VALUES (92213, 'de-DE', 'Schuhe', 221);

        -- Chaussures
        INSERT INTO classification VALUES (222, 'aisle', 1, 'pants', NULL);
        INSERT INTO classification_label VALUES (92221, 'fr-FR', 'Pantalons', 222);
        INSERT INTO classification_label VALUES (92222, 'en-GB', 'Pants', 222);
        INSERT INTO classification_label VALUES (92223, 'de-DE', 'Hose', 222);