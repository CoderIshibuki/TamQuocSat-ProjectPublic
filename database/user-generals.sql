CREATE TABLE IF NOT EXISTS user_generals (
    user_id INT NOT NULL,
    general_id VARCHAR(20) NOT NULL,
    acquired_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    mastery_level INT DEFAULT 1 NOT NULL,
    PRIMARY KEY (user_id, general_id),
    CONSTRAINT fk_user_generals_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_user_generals_general FOREIGN KEY (general_id) REFERENCES generals(general_id) ON DELETE CASCADE
);
