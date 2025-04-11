-- create database postgres_db;
-- \c postgres_db;

CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts (title, body) VALUES ('First Post', 'This is my first post'), ('Second Post', 'This is my second post'), ('Third Post', 'Here is my third post!');

/*
after docker compose connect to the database by using this command and write password 'password'
 psql -h 0.0.0.0 -p 5432 -d postgres_db -U postgres -W
 */
--  ALTER USER postgres with encrypted password 'password';
