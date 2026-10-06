USE greenarmor_ops;

CREATE TABLE evidence (
  id INT PRIMARY KEY,
  label VARCHAR(80) NOT NULL,
  value VARCHAR(255) NOT NULL
);

INSERT INTO evidence (id, label, value) VALUES
  (1, 'assessment_note', 'The database is reachable only from the CORE segment.'),
  (2, 'flag_2', 'GA{DATA_PATH_ESTABLISHED}');

CREATE TABLE access_notes (
  id INT PRIMARY KEY,
  system_name VARCHAR(80) NOT NULL,
  host_address VARCHAR(80) NOT NULL,
  username VARCHAR(80) NOT NULL,
  credential VARCHAR(255) NOT NULL,
  note VARCHAR(255) NOT NULL
);

INSERT INTO access_notes VALUES
  (1, 'GA-VAULT', '10.77.20.50', 'coreops', 'Ashfall-27!', 'Legacy SSH account retained for emergency operations.');
