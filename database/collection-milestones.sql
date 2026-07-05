CREATE TABLE IF NOT EXISTS collection_milestones (
    milestone_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    reward_gold INT DEFAULT 0 NOT NULL,
    reward_gems INT DEFAULT 0 NOT NULL,
    reward_tickets INT DEFAULT 0 NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_collection_milestones_id ON collection_milestones(milestone_id);
