ALTER TABLE learnsql.users ADD created_at DATETIME DEFAULT NOW() NOT NULL;
ALTER TABLE learnsql.users ADD updated_at DATETIME DEFAULT now() on update now() NOT NULL;
ALTER TABLE learnsql.users ADD salary DECIMAL(15, 2) NULL;

