CREATE TABLE heroes(
id INTEGER PRIMARY KEY,
name TEXT,
power TEXT,
created TEXT,
alias TEXT,
franchise_id INTEGER
);

CREATE TABLE franchises(
id INTEGER PRIMARY KEY,
name TEXT
);