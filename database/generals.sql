CREATE TABLE IF NOT EXISTS generals (
    general_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    kingdom VARCHAR(20) NOT NULL,
    max_hp SMALLINT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    image_url VARCHAR(255),
    skills TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_generals_id ON generals(general_id);
