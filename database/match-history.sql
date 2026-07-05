CREATE TABLE IF NOT EXISTS match_history (
    match_id VARCHAR(50) PRIMARY KEY,
    room_code VARCHAR(20) NOT NULL,
    game_mode VARCHAR(50) NOT NULL,
    start_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    end_time TIMESTAMP WITH TIME ZONE,
    winner_team VARCHAR(50)
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_match_history_id ON match_history(match_id);
