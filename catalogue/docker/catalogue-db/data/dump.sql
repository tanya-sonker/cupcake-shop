CREATE USER IF NOT EXISTS 'catalogue_user' IDENTIFIED BY 'default_password';

GRANT ALL ON socksdb.* TO 'catalogue_user';

CREATE TABLE IF NOT EXISTS sock (
	sock_id varchar(40) NOT NULL, 
	name varchar(20), 
	description varchar(200), 
	price float, 
	count int, 
	image_url_1 varchar(40), 
	image_url_2 varchar(40), 
	PRIMARY KEY(sock_id)
);

CREATE TABLE IF NOT EXISTS tag (
	tag_id MEDIUMINT NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	PRIMARY KEY(tag_id)
);

CREATE TABLE IF NOT EXISTS sock_tag (
	sock_id varchar(40), 
	tag_id MEDIUMINT NOT NULL, 
	FOREIGN KEY (sock_id) 
		REFERENCES sock(sock_id), 
	FOREIGN KEY(tag_id)
		REFERENCES tag(tag_id)
);

INSERT INTO sock VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "KupcakeShop special", "Limited time cupcakes!!! ;)", 17.15, 33, "/catalogue/images/weave1.jpg", "/catalogue/images/weave2.jpg");
INSERT INTO sock VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Mermaid", "For all those sea lovers out there. This is the diet Ariel would have!", 2.11, 115, "/catalogue/images/bit_of_leg_1.jpeg", "/catalogue/images/bit_of_leg_2.jpeg");
INSERT INTO sock VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Rainbow Rumble", "For all the bunny lovers..",  7.32, 738, "/catalogue/images/cross_1.jpeg", "/catalogue/images/cross_2.jpeg");
INSERT INTO sock VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "Bouquet", "Switch up the rose bouquet with this for your significant other next time!",  6.99, 820, "/catalogue/images/puma_1.jpeg", "/catalogue/images/puma_2.jpeg");
INSERT INTO sock VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "Strawberry Shortcake", "Socks fit for a Messiah. You too can experience walking in water with these special edition beauties. Each bite is lovingly proggled to leave you smothered",  9.99, 1, "/catalogue/images/holy_1.jpeg", "/catalogue/images/holy_2.jpeg");
INSERT INTO sock VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "Beauty & the Beast", "For better luck ;)",  10.99, 801, "/catalogue/images/youtube_1.jpeg", "/catalogue/images/youtube_2.jpeg");
INSERT INTO sock VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "St. Patrick's Day", "ho ho ho get on the Nice list with this!",  3.99, 808, "/catalogue/images/WAT.jpg", "/catalogue/images/WAT2.jpg");
INSERT INTO sock VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Classic", "Keep it simple.",  4.99, 127, "/catalogue/images/classic.jpg", "/catalogue/images/classic2.jpg");
INSERT INTO sock VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Chocolate Delight", "Like your life will be",  7.99, 438, "/catalogue/images/colourful_socks.jpg", "/catalogue/images/colourful_socks.jpg");
INSERT INTO sock VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "Succulent", "For when you feel like reaching for the stars during the day!",  8.99, 175, "/catalogue/images/catsocks.jpg", "/catalogue/images/catsocks2.jpg");

INSERT INTO tag (name) VALUES ("Cheesecake");
INSERT INTO tag (name) VALUES ("Colourful");
INSERT INTO tag (name) VALUES ("Flower");
INSERT INTO tag (name) VALUES ("Fruit");
INSERT INTO tag (name) VALUES ("Special Occasions");

INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "4");
INSERT INTO sock_tag VALUES ("6d62d909-f957-430e-8689-b5129c0bb75e", "4");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "2");
INSERT INTO sock_tag VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "2");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "5");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "5");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "2");
INSERT INTO sock_tag VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "1");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "4");
INSERT INTO sock_tag VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "4");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "1");
INSERT INTO sock_tag VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "1");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "5");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "5");
INSERT INTO sock_tag VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "5");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "2");
INSERT INTO sock_tag VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "2");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "4");
INSERT INTO sock_tag VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "4");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "3");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "3");
INSERT INTO sock_tag VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "3");




