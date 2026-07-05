CREATE TABLE IF NOT EXISTS match_players (
    match_id VARCHAR(50) NOT NULL,
    user_id INT NOT NULL,
    general_id VARCHAR(20) NOT NULL,
    role VARCHAR(20) NOT NULL,
    is_winner BOOLEAN DEFAULT FALSE NOT NULL,
    damage_dealt INT DEFAULT 0 NOT NULL,
    kills INT DEFAULT 0 NOT NULL,
    PRIMARY KEY (match_id, user_id),
    CONSTRAINT fk_match_players_match FOREIGN KEY (match_id) REFERENCES match_history(match_id) ON DELETE CASCADE,
    CONSTRAINT fk_match_players_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_match_players_general FOREIGN KEY (general_id) REFERENCES generals(general_id) ON DELETE CASCADE
);
