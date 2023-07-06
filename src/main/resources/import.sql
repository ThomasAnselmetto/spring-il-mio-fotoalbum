--Lista delle foto

INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto1','titolo foto 1','https://picsum.photos/id/87/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto2','titolo foto 2','https://picsum.photos/id/57/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto3','titolo foto 3','https://picsum.photos/id/1/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto4','titolo foto 4','https://picsum.photos/id/22/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto5','titolo foto 5','https://picsum.photos/id/12/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto6','titolo foto 6','https://picsum.photos/id/31/200/300',true)
INSERT INTO `photos`(`description`, `title`, `url`, `visible`) VALUES ('descrizione della foto7','titolo foto 7','https://picsum.photos/id/101/200/300',true)

--lista delle categorie
INSERT INTO `categories`(`name`) VALUES ('selfie')
INSERT INTO `categories`(`name`) VALUES ('natura')
INSERT INTO `categories`(`name`) VALUES ('tecnologia')
INSERT INTO `categories`(`name`) VALUES ('citta')

--dati tabelle ponte
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (1,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (2,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (3,2)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (4,3)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (5,1)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (6,4)
INSERT INTO `photo_category`(`photo_id`, `category_id`) VALUES (7,4)