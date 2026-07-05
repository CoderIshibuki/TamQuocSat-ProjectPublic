CREATE TABLE IF NOT EXISTS playing_cards (
    card_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    card_type VARCHAR(50) NOT NULL,
    suit VARCHAR(20) NOT NULL,
    rank_point VARCHAR(5) NOT NULL,
    attack_range SMALLINT DEFAULT NULL,
    effect_description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_playing_cards_id ON playing_cards(card_id);
