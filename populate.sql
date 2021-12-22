---------------------------
-- Populate Personage table
---------------------------
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Hu Tao', 'Polearm', 'Pyro', 'DPS');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Keqing', 'Sword', 'Electro', 'DPS');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Mona', 'Catalyst', 'Hydro', 'Support');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Albedo', 'Sword', 'Geo', 'Support');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Bennet', 'Sword', 'Pyro', 'Support');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Fischl', 'Bow', 'Electro', 'Sub DPS');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Barbara', 'Catalyst', 'Hydro', 'Healer');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Arataki Itto', 'Claymore', 'Geo', 'DPS');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Zhongli', 'Polearm', 'Geo', 'Support');
INSERT INTO Personage(pers_name, pers_weapon, pers_feature, pers_main_role) 
VALUES('Raiden Shogun', 'Polearm', 'Electro', 'Support');

---------------------------
-- Populate Weapon table
---------------------------
INSERT INTO Weapon(weapon_name) VALUES('Sword');
INSERT INTO Weapon(weapon_name) VALUES('Claymore');
INSERT INTO Weapon(weapon_name) VALUES('Catalyst');
INSERT INTO Weapon(weapon_name) VALUES('Bow');
INSERT INTO Weapon(weapon_name) VALUES('Polearm');

---------------------------
-- Populate Feature table
---------------------------
INSERT INTO Feature(feature_name) VALUES('Anemo');
INSERT INTO Feature(feature_name) VALUES('Geo');
INSERT INTO Feature(feature_name) VALUES('Electro');
INSERT INTO Feature(feature_name) VALUES('Hydro');
INSERT INTO Feature(feature_name) VALUES('Pyro');
INSERT INTO Feature(feature_name) VALUES('Cryo');
INSERT INTO Feature(feature_name) VALUES('Dendro');

---------------------------
-- Populate Main_role table
---------------------------
INSERT INTO Main_role(main_role_name) VALUES('DPS');
INSERT INTO Main_role(main_role_name) VALUES('Sub DPS');
INSERT INTO Main_role(main_role_name) VALUES('Support');
INSERT INTO Main_role(main_role_name) VALUES('Healer');