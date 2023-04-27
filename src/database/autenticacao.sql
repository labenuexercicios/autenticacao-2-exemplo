-- Active: 1682607963874@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
  -- senha = fulano123
	('u001', 'Fulano', 'fulano@email.com', '$2a$12$nhL9JfDsPR1FyyZqLBYe0eVwAiZlrm4L2gsGrWGJxgZEul2nSzTHu', 'NORMAL'),
	
  -- senha = beltrana00
  ('u002', 'Beltrana', 'beltrana@email.com', '$2a$12$Jtu7ZILaoYEzRGux4EOFmOF6fBrQ5Ws9CSin1.xFP3ZWtQTupDyHS', 'NORMAL'),
	
  -- senha = astrodev99
  ('u003', 'Astrodev', 'astrodev@email.com', '$2a$12$28jExQ2lwiiRVEN9.xjgvef/BuP4kyA2DpQIdAbLvKD3foK7BSFU.', 'ADMIN');
