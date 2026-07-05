CREATE TABLE IF NOT EXISTS user_collection_progress (
    user_id INT NOT NULL,
    milestone_id VARCHAR(50) NOT NULL,
    is_claimed BOOLEAN DEFAULT FALSE NOT NULL,
    claimed_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (user_id, milestone_id),
    CONSTRAINT fk_user_collection_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_user_collection_milestone FOREIGN KEY (milestone_id) REFERENCES collection_milestones(milestone_id) ON DELETE CASCADE
);
