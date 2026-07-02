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

COMMENT ON TABLE generals IS 'Bảng dữ liệu thẻ Võ Tướng (General Cards) trong Tam Quốc Sát';
COMMENT ON COLUMN generals.general_id IS 'Mã bài tướng (Bắt đầu bằng GNR+mã số, ví dụ GNR001) - Primary key, unique';
COMMENT ON COLUMN generals.name IS 'Tên võ tướng (Ví dụ: Lưu Bị, Tào Tháo...)';
COMMENT ON COLUMN generals.kingdom IS 'Quốc gia / Thế lực (Thục, Ngụy, Ngô, Quần Hùng)';
COMMENT ON COLUMN generals.max_hp IS 'Huyết lượng tối đa (Máu)';
COMMENT ON COLUMN generals.gender IS 'Giới tính (Nam / Nữ)';
COMMENT ON COLUMN generals.image_url IS 'Đường dẫn hình ảnh avatar / thẻ tướng';
COMMENT ON COLUMN generals.skills IS 'Danh sách và mô tả chi tiết các kỹ năng của võ tướng';
