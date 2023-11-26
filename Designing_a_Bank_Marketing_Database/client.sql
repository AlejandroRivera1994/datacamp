
CREATE TABLE [IF NOT EXISTS] client (
   id serial,
   age int,
   job text,
   marital text, 
   education text,
   credit_default boolean,
   housing boolean,
   loan boolean,
   PRIMARY KEY (id)
);

\COPY client 
FROM 'client.csv' 
DELIMITER ',' 
CSV HEADER;
