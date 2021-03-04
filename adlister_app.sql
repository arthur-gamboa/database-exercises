CREATE TABLE users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    password VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE categories
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad_categories
(
    ad_id INTEGER UNSIGNED NOT NULL,
    category_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);


-- For a given ad, what is the email address of the user that created it?
SELECT u.email AS 'email'
FROM users u
JOIN ads a ON u.id = a.user_id
WHERE a.title = ' ';

-- For a given ad, what category, or categories, does it belong to?
SELECT c.name
FROM categories c
JOIN ad_categories ac ON c.id = ac.category_id
JOIN ads a ON ac.ad_id = a.id
WHERE a.id = ' ';

-- For a given category, show all the ads that are in that category.
SELECT a.title AS 'Ads'
FROM ads a
JOIN ad_categories ac ON a.id = ac.ad_id
JOIN categories c ON ac.category_id = c.id
WHERE c.name = ' ';

-- For a given user, show all the ads they have posted.
SELECT a.title as 'Ads'
FROM ads a
JOIN users u ON a.user_id = u.id
WHERE u.username = ' ';