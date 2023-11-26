
CREATE TABLE [IF NOT EXISTS] economics (
   client_id serial,
   emp_var_rate float,
   cons_price_idx float,
   euribor_three_months float,
   number_employed float,
   FOREIGN KEY (client_id) REFERENCES client(id)
);

\COPY economics 
FROM 'economics.csv' 
DELIMITER ',' 
CSV HEADER;
