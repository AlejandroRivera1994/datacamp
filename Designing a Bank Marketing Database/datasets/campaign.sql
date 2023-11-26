
CREATE TABLE [IF NOT EXISTS] campaign (
   campaign_id serial,
   client_id serial,
   number_contacts int,
   contact_duration int,
   pdays int,
   previous_campaign_contacts int,
   previous_outcome boolean,
   campaign_outcome boolean,
   last_contact_date date,
   PRIMARY KEY (campaign_id),
   FOREIGN KEY (client_id) REFERENCES client(id)
);

\COPY campaign 
FROM 'campaign.csv' 
DELIMITER ',' 
CSV HEADER;
