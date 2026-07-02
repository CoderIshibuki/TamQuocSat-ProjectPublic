CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_users_username ON users(username);

COMMENT ON TABLE users IS 'player table database';
COMMENT ON COLUMN users.username IS 'primary key, unique';
COMMENT ON COLUMN users.password IS 'password is encrypted with Argon2id';
