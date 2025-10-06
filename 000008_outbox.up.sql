CREATE TABLE IF NOT EXISTS outbox (
    outbox_id      SERIAL PRIMARY KEY,
    event_type     VARCHAR(255) NOT NULL,
    aggregate_type VARCHAR(255) NOT NULL,
    aggregate_id   INT NOT NULL,
    payload        TEXT NOT NULL,
    status         VARCHAR(64) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'failed', 'done', 'dead')),
    attempts       INT NOT NULL DEFAULT 0,
    next_try_at    TIMESTAMP,
    last_error     TEXT,
    use_yn         BOOLEAN NOT NULL DEFAULT TRUE,
    create_code    VARCHAR(255) NOT NULL,
    create_date    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_code    VARCHAR(255),
    update_date    TIMESTAMP,
    delete_code    VARCHAR(255),
    delete_date    TIMESTAMP,
    version BIGINT NOT NULL DEFAULT 0
);