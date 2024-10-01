DROP TABLE IF EXISTS symfony_demo_post_tag;

CREATE TABLE symfony_demo_post_tag
(
    post_id INTEGER NOT NULL
        REFERENCES symfony_demo_post
            ON DELETE CASCADE,
    tag_id  INTEGER NOT NULL
        REFERENCES symfony_demo_tag
            ON DELETE CASCADE,
    PRIMARY KEY (post_id, tag_id)
);

INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (1, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (1, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (2, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (2, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (3, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (3, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (4, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (4, 3);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (4, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (5, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (5, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (5, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (6, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (6, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (6, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (7, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (7, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (7, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (8, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (8, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (8, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (8, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (9, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (9, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (9, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (10, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (10, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (11, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (11, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (12, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (12, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (13, 3);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (13, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (13, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (13, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (14, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (14, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (14, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (14, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (15, 3);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (15, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (16, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (16, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (16, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (17, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (17, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (17, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (18, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (18, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (18, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (19, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (19, 3);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (19, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (19, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (20, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (20, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (20, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (21, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (21, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (21, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (21, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (22, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (22, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (22, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (22, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (23, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (23, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (23, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (23, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (24, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (24, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (25, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (25, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (25, 9);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (25, 4);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (26, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (26, 3);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (27, 6);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (27, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (28, 1);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (28, 2);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (29, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (29, 7);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (30, 5);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (30, 8);
INSERT INTO symfony_demo_post_tag (post_id, tag_id) VALUES (30, 7);
