ALTER TABLE learnsql.user_roles ADD created_at DATETIME DEFAULT now() NOT NULL;
ALTER TABLE learnsql.user_roles ADD updated_at DATETIME DEFAULT now() on update now() NOT NULL;
