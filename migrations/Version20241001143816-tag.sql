DROP TABLE IF EXISTS symfony_demo_tag;

CREATE TABLE symfony_demo_tag
(
    id   SERIAL      NOT NULL
        PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO symfony_demo_tag (name) VALUES ('lorem');
INSERT INTO symfony_demo_tag (name) VALUES ('ipsum');
INSERT INTO symfony_demo_tag (name) VALUES ('consectetur');
INSERT INTO symfony_demo_tag (name) VALUES ('adipiscing');
INSERT INTO symfony_demo_tag (name) VALUES ('incididunt');
INSERT INTO symfony_demo_tag (name) VALUES ('labore');
INSERT INTO symfony_demo_tag (name) VALUES ('voluptate');
INSERT INTO symfony_demo_tag (name) VALUES ('dolore');
INSERT INTO symfony_demo_tag (name) VALUES ('pariatur');
