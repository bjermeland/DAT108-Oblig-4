DROP SCHEMA IF EXISTS oblig4 CASCADE;

CREATE SCHEMA oblig4;
SET search_path TO oblig4;

CREATE TABLE deltagerliste (
   id INTEGER,
   PRIMARY KEY (id)
);

CREATE TABLE deltager (
  fornavn VARCHAR(25),
  etternavn VARCHAR(25),
  mobil VARCHAR(8),
  kjonn VARCHAR(6),
  mobil VARCHAR(8),
  hashpassord VARCHAR,
  deltagerliste_id INTEGER,
  PRIMARY KEY (mobil),
  CONSTRAINT link FOREIGN KEY (deltagerliste_id) REFERENCES deltagerliste(id)
);

INSERT INTO oblig4.deltagerliste (id) values (1);