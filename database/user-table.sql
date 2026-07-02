CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_users_username ON users(username);

COMMENT ON TABLE users IS 'Bảng tài khoản người chơi Tam Quốc Sát';
COMMENT ON COLUMN users.username IS 'Primary key, unique';
COMMENT ON COLUMN users.password IS 'Mật khẩu đã mã hóa bằng Argon2id';
