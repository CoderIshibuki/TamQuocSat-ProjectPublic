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

COMMENT ON TABLE playing_cards IS 'Bảng dữ liệu thẻ bài đánh (Playing Cards / Room Deck) trong Tam Quốc Sát';
COMMENT ON COLUMN playing_cards.card_id IS 'Mã bài đánh (Ví dụ PLC001, CRD001) - Primary key, unique';
COMMENT ON COLUMN playing_cards.name IS 'Tên lá bài (Ví dụ: Sát, Đào, Vô Trung Sinh Hữu...)';
COMMENT ON COLUMN playing_cards.card_type IS 'Loại bài (Cơ bản, Trang bị, Cẩm nang)';
COMMENT ON COLUMN playing_cards.suit IS 'Chất bài (Cơ, Rô, Chuồn, Bích)';
COMMENT ON COLUMN playing_cards.rank_point IS 'Số điểm (Từ A đến K)';
COMMENT ON COLUMN playing_cards.attack_range IS 'Tầm đánh (Áp dụng với vũ khí hoặc ngựa, có thể NULL)';
COMMENT ON COLUMN playing_cards.effect_description IS 'Chức năng / mô tả hiệu ứng của lá bài';
COMMENT ON COLUMN playing_cards.image_url IS 'Đường dẫn hình ảnh lá bài';
