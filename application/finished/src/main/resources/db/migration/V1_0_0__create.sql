  CREATE TABLE IF NOT EXISTS todo
(
    id           uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    task         VARCHAR(255),
    status       boolean
);
