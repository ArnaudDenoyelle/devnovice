CREATE TABLE classification (
    id INTEGER PRIMARY KEY,
    level_id VARCHAR(10),
    level INTEGER,
    classification_id VARCHAR(10),
    deletion_date DATE
);

CREATE TABLE classification_label (
    id INTEGER PRIMARY KEY,
    locale VARCHAR(5),
    text VARCHAR(255),
    classification_id INTEGER,
    CONSTRAINT fk_classification_id
        FOREIGN KEY(classification_id)
            REFERENCES classification(id)
);