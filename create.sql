-----------------------
-- Create Personage table
-----------------------
CREATE TABLE Personage
(
	pers_name		char(30) NOT NULL,
	pers_weapon		char(20) NOT NULL,
	pers_feature	char(20) NOT NULL,
	pers_main_role	char(20) NULL
);

-----------------------
-- Create Weapon table
-----------------------
CREATE TABLE Weapon
(
	weapon_name		char(20) NOT NULL
);

-----------------------
-- Create Feature table
-----------------------
CREATE TABLE Feature
(
	feature_name	char(20) NOT NULL
);

-----------------------
-- Create Main_role table
-----------------------
CREATE TABLE Main_role
(
	main_role_name	char(20) NOT NULL
);

----------------------
-- Define primary keys
----------------------
ALTER TABLE Personage ADD CONSTRAINT PK_Personage PRIMARY KEY (pers_name);
ALTER TABLE Weapon ADD CONSTRAINT PK_Weapon PRIMARY KEY (weapon_name);
ALTER TABLE Feature ADD CONSTRAINT PK_Feature PRIMARY KEY (feature_name);
ALTER TABLE Main_role ADD CONSTRAINT PK_main_role PRIMARY KEY (main_role_name);

----------------------
-- Define foreign keys
----------------------
ALTER TABLE Personage ADD CONSTRAINT FK_Personage_Weapon FOREIGN KEY (pers_weapon)
REFERENCES Weapon (weapon_name);
ALTER TABLE Personage ADD CONSTRAINT FK_Personage_Feature FOREIGN KEY (pers_feature)
REFERENCES Feature (feature_name);
ALTER TABLE Personage ADD CONSTRAINT FK_Personage_Main_role FOREIGN KEY (pers_main_role)
REFERENCES Main_role (main_role_name);