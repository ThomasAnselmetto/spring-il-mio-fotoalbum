--Lista delle foto

INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('panchina sul mare di poggibonsi che non so bene se abbia il mare o meno','Panchina al mare','https://picsum.photos/id/87/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('strada lastricata del centro storico di piobesi che tanto nessuno la conosce','Via lastricata','https://picsum.photos/id/57/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto3','Smartwork','https://picsum.photos/id/1/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto4','Pedestrian','https://picsum.photos/id/22/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto5','Scogli','https://picsum.photos/id/12/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto6','Happy feet','https://picsum.photos/id/31/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Struttura militare','https://picsum.photos/id/101/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Campo di grano','https://picsum.photos/id/98/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','Skateboard','https://picsum.photos/id/157/200/300',true)


--lista delle categorie
INSERT INTO `categories`(`name`,`description`) VALUES ('Selfie',"photos made by themselves")
INSERT INTO `categories`(`name`,`description`) VALUES ('Natura','Photos with nature subject')
INSERT INTO `categories`(`name`,`description`) VALUES ('Tecnologia',"Photos with technological focus")
INSERT INTO `categories`(`name`,`description`) VALUES ('Citta','Photos with cities subject')

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

--lista users
INSERT INTO `users`(`id`,`age`, `email`, `first_name`, `last_name`, `password`) VALUES (1,25,'pippo@piero.it','Pippo','Valenti','{noop}blablabla1')
INSERT INTO `users`(`id`,`age`, `email`, `first_name`, `last_name`, `password`) VALUES (2,31,'pippo@paolo.it','Pisolo','Valente','{noop}blablabla2')
INSERT INTO `users`(`id`,`age`, `email`, `first_name`, `last_name`, `password`) VALUES (3,34,'pippo@gianni.it','Mammolo','Valentis','{noop}blablabla3')

--lista ruoli
INSERT INTO `roles`(`id`, `name`) VALUES (1,'ADMIN')
INSERT INTO `roles`(`id`, `name`) VALUES (2,'USER')

--tabella ponte che stabilisce che ruolo ha ognuno degli utenti

INSERT INTO `users_roles`(`user_id`, `roles_id`) VALUES (1,1)
INSERT INTO `users_roles`(`user_id`, `roles_id`) VALUES (2,2)
INSERT INTO `users_roles`(`user_id`, `roles_id`) VALUES (3,2)