CREATE TABLE IF NOT EXISTS tokens (
    userId           BIGSERIAL,
    externalUserId   TEXT,
    token            TEXT NOT NULL UNIQUE,
    created          TIMESTAMP DEFAULT now()
  );

CREATE TABLE IF NOT EXISTS wallet (
    userId       BIGINT,
    offerId      BIGINT
  );

CREATE TABLE IF NOT EXISTS wishlist (
    userId       BIGINT,
    productId    BIGINT
  );

CREATE TABLE IF NOT EXISTS picture (
    id           BIGSERIAL,
    userId       BIGINT,
    url          TEXT,
    publishDate  timestamp default current_timestamp
  );

CREATE TABLE IF NOT EXISTS interaction (
    id                   BIGSERIAL PRIMARY KEY,
    contact_loyaltyid    TEXT,
    campaign             TEXT,
    product              TEXT,
    type                 TEXT,
    name                 TEXT,
    picture              TEXT,
    points               double precision,
    createddate          timestamp
  );


CREATE OR REPLACE FUNCTION calcPoints () 
  RETURNS trigger AS $$
begin
update salesforce.contact 
  set accumulated_loyalty_points__c =   (select sum(points) from interaction                                                                                                                     where interaction.contact_loyaltyid = salesforce.contact.loyaltyid__c);
return new;
end;
$$ language plpgsql;

create trigger newInteractions after insert on interaction
for each row execute procedure calcPoints();

create trigger removeInteractions after delete on interaction
for each row execute procedure calcPoints();

create trigger updateInteractions after update on interaction
for each row execute procedure calcPoints();
