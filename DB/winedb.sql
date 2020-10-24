-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema winedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `winedb` ;

-- -----------------------------------------------------
-- Schema winedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `winedb` DEFAULT CHARACTER SET utf8 ;
USE `winedb` ;

-- -----------------------------------------------------
-- Table `wine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wine` ;

CREATE TABLE IF NOT EXISTS `wine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `label_name` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `flavor` VARCHAR(200) NULL,
  `description` VARCHAR(1500) NULL,
  `rating` DOUBLE NOT NULL,
  `cost` DECIMAL(7,2) NOT NULL,
  `vineyard` VARCHAR(200) NULL,
  `year_produced` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS wineuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'wineuser'@'localhost' IDENTIFIED BY 'wineuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'wineuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `wine`
-- -----------------------------------------------------
START TRANSACTION;
USE `winedb`;
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (1, 'Palo61', 'Chardonnay', 'semi-dry', 'A delicate, fresh wine with balsalmic and floral notes.', 3.5, 25.00, 'Secco, Tenuta Di Burchino, Pisa hills, Tuscany', '2019');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (2, 'Palo61', 'RosÉ', 'semi-sweet, medium body', 'A medium-bodied light rose that tastes of rasberries & rose.', 5.9, 50.00, 'Seccoo, Tenuta Poggio Al Casone, Pisa hills, Tuscany', '2019');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (3, 'Palo61', 'Pinot Noir', 'dry, full body ', 'An intense & spicy red with black pepper & cherry notes.', 6.7, 50.00, 'Secco, Tenuta Santa Lucia, Pisa hills, Tuscany', '2019');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (4, 'Casasmith', 'Pinot Noir', 'dry, full body', 'Fresh, round and subtle. Raspberry, stone, tobacco and a true sense of place are my first thoughts. Expansive palate with ever-expanding complexities. Fill a glass and let the secrets unfold.', 8.5, 15.99, 'Northridge Wahluke Slope, Seattle, Washington, USA', '2017');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (5, 'Prophecy', 'Pinot Grigio', 'semi-dry', 'The Pinot Grigio offers the best of the high altitude delle Venezie region. Flavors of light citrus, tropical fruit, and mineral notes offer crisp, refreshment and are complemented by delicate floral aromas.', 3.5, 10.99, 'Prophecy, California, USA', '2015');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (6, 'Burchino', 'Sangiovese-Merlot', 'semi-dry, savory', 'A remarkable Chianti, named for its region of origin, will have a bright acidity, supple tannins and plenty of cherry fruit character. ', 3.9, 12.99, 'Toscana, Italy', '2010');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (7, 'Chateau Souverain', 'Merlot', 'semi-dry, fruity ', 'Chateau Souverain Merlot opens with dark red fruit aromas reminiscent of black cherry, plum, and fresh blueberries complemented by hints of brown spice and baking chocolate. This Merlot finishes with soft acidity and a fruit-driven balance that gives the wine a polished sense of elegance.', 3.3, 9.99, 'Napa Valley, USA', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (8, '19 Crimes The Punishment', 'Pinot Noir', 'dry, medium body', 'Medium bodied with soft, round tannins, cherry and strawberry fruit sweetness which complements the vanilla and spice oak undertones. All these elements combined create a well-balanced, enjoyable wine with a long finish.', 3.8, 9.99, 'South Eastern Australia, Australia', '2019');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (9, 'Whole Cluster ', 'Pinot Noir', 'dry, full body', 'As refreshing as a liquid fruit salad in a glass, this wine is ruby in color and opens with aromas of black cherry, raspberry, blackberry, and caramel. A fruit-forward and sweet entry lead to flavors that mirror aromas with the addition of cranberry, dark chocolate and baking spices that flow into a juicy mid-palate and soft, round finish accented by balancing acidity.', 4.0, 21.99, 'Willamette Valley Vineyards, USA', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (10, 'La Crema ', 'Pinot Noir', 'dry, fully body', 'Aromas of pomegranate and sweet tobacco are followed by flavors of berry fruit and plums with subtle hints of exotic spice and toast. On the palate, the wine has balanced acidity and fine tannins that drive a long finish.', 5.0, 29.99, 'Willamette Valley Vineyards, USA ', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (11, 'Jordan', 'Cabernet Sauvignon', 'dry, savory', 'Pure elegance in a glass. Aromas of black cherries, pomegranate, dried cranberries and a hint of graphite channel classic Bordeaux. Its lovely, silky texture coats the palate with layers of black cherries and a touch of cedar from French oak’s fine tannins. From beginning to end, the balance carries all the way through', 5.0, 69.99, 'Alexander Valley, Sonoma County, California', '2015');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (12, 'Kendall-Jackson Vintner\'s Reserve Chardonnay', 'Chardonnay', 'semi-dry, refreshing', 'Tropical flavors such as pineapple, mango and papaya, with citrus notes. aromas of vanilla and honey. A hint of toasted oak and butter.', 4.1, 17.00, 'Kendall-Jackson, California, USA', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (13, 'Joseph Phelps Insignia', 'Bordeaux Red Blend', 'dry, full body, earthy ', 'The 2016 Insignia is fresh and focused on entry with expressive cocoa powder, graphite and earthy spices. Elegant and complex with a supple, creamy texture and bold tannins, this latest vintage offers luscious ripe plum and blackberry character with hints of roasted coffee and dark cherry throughout the palate to a long, velvety finish.', 4.6, 249.99, 'Joseph Phelps Insignia, Napa Valley, California', '2016');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (14, 'Seghesio Sonoma ', 'Zinfandel', 'sweet', 'With a bouquet of cedar, spice, and sun-ripened blackberries, our Sonoma Zinfandel makes a strong first impression. Bold and richly textured on the palate with an intensity and purity of fruit reflected in notes of wild blueberries, plum, and black currants. A light dusting of tannins provides structure and a long finish that is boueyed by fresh juicy acidity.', 4.1, 26.00, 'Seghesio Sonoma County, California, USA', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (15, 'La Crema Sonoma Coast', 'Chardonnay', 'semi-dry, refreshing', 'Aromas of meyer lemon, gala apple and subtle hints of OAK are followed by flavors of white stone fruit, yellow plum and honeydew melon. On the palate, the wine is vibrant and concentrated with juicy acidity that drives a lingering finish.', 4.1, 23.99, 'Sonoma Coast, Sonoma County, California, USA', '2018');
INSERT INTO `wine` (`id`, `label_name`, `type`, `flavor`, `description`, `rating`, `cost`, `vineyard`, `year_produced`) VALUES (16, 'Chandon Brut', 'Brut', 'semi-sweet, bubbly', 'This wine offers the balance and elegance that has become Chandon\'s hallmark style. When you taste Brut Classic, look for nutty flavors with hints of brioche that build to a refreshingly dry finish. The wine delivers complex apple and pear characteristics accented by citrus spice over notes of almond and caramel in the bouquet.', 4.1, 24.99, 'California, USA', '2018');

COMMIT;

