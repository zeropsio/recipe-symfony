DROP TABLE IF EXISTS symfony_demo_user;

CREATE TABLE symfony_demo_user
(
    id        SERIAL      PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    username  VARCHAR(255) NOT NULL,
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    roles     TEXT        NOT NULL
);

INSERT INTO symfony_demo_user (full_name, username, email, password, roles) VALUES ('Jane Doe', 'jane_admin', 'jane_admin@symfony.com', '$2y$13$3EJxNVreeSXjCJooqMEDsu8jjTtCWVQWKs5QaCRZ2VcrXK1ATq0E.', '["ROLE_ADMIN"]');
INSERT INTO symfony_demo_user (full_name, username, email, password, roles) VALUES ('Tom Doe', 'tom_admin', 'tom_admin@symfony.com', '$2y$13$aBB/wELjpysf6PpYuXLEBuK4pEGaWJLxnC7aa/8FFjLqQmLie8ni2', '["ROLE_ADMIN"]');
INSERT INTO symfony_demo_user (full_name, username, email, password, roles) VALUES ('John Doe', 'john_user', 'john_user@symfony.com', '$2y$13$RNUzIa1pIzwdARInhBNS/.m5fnZYEK5UvK0W74fJrWkmIjebLOhpy', '["ROLE_USER"]');
