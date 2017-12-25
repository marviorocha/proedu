CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_categories_on_curse_id" ON "categories" ("curse_id");
CREATE TABLE "content_curses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "curse_id" integer, "content_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_content_curses_on_content_id" ON "content_curses" ("content_id");
CREATE INDEX "index_content_curses_on_curse_id" ON "content_curses" ("curse_id");
CREATE TABLE "contents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "body" text, "doc" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "curse_id" integer);
CREATE INDEX "index_contents_on_curse_id" ON "contents" ("curse_id");
CREATE TABLE "curses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "descricao" varchar, "picture" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "messagers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "subject" varchar, "body" text, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_messagers_on_user_id" ON "messagers" ("user_id");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "superadmin_role" boolean DEFAULT 'f', "teacher_role" boolean DEFAULT 'f', "studant_role" boolean DEFAULT 't', "name" varchar, "lastname" varchar);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "destroys" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "contrntcurses" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20171118181115'),
('20171122022905'),
('20171203141535'),
('20171206144408'),
('20171207123220'),
('20171216023548'),
('20171216025550'),
('20171216030518'),
('20171223120043'),
('20171223133342'),
('20171224120835'),
('20171224133433');


