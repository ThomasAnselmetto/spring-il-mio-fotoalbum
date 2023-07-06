--Lista delle foto

INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto1','Panchina su lungomare','https://picsum.photos/id/87/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto2','Via lastricata','https://picsum.photos/id/57/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto3','Smartwork','https://picsum.photos/id/1/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto4','Pedestrian','https://picsum.photos/id/22/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto5','Scogli','https://picsum.photos/id/12/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto6','Happy feet','https://picsum.photos/id/31/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Struttura militare','https://picsum.photos/id/101/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Campo di grano','https://picsum.photos/id/98/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Skateboard','https://picsum.photos/id/157/200/300',true)


--lista delle categorie
INSERT INTO `categories`(`name`) VALUES ('selfie')
INSERT INTO `categories`(`name`) VALUES ('natura')
INSERT INTO `categories`(`name`) VALUES ('tecnologia')
INSERT INTO `categories`(`name`) VALUES ('citta')

--dati tabelle ponte
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (1,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (1,2)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (1,3)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (1,4)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (2,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (3,2)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (3,4)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (4,3)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (5,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (6,4)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (7,4)