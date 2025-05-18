CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  amount NUMERIC(10,2) NOT NULL,
  category_id INT REFERENCES categories(id),
  note TEXT
);