create database housing;
use housing;

CREATE TABLE `ahmedabad_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `ahmedabad_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  
  CONSTRAINT `Property_Id_ahm_L` FOREIGN KEY (`Property_Id`) REFERENCES `ahmedabad_lease` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `ahmedabad_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(70) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `ahmedabad_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(50) NOT NULL,
  `Seller_Type` varchar(70) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_Ahmedabad` FOREIGN KEY (`Property_Id`) REFERENCES `ahmedabad_property` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `bangluru_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `bangluru_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_id_bang_L` FOREIGN KEY (`Property_Id`) REFERENCES `bangluru_lease` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `bangluru_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(100) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(100) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `bangluru_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(50) NOT NULL,
  `Seller_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id` FOREIGN KEY (`Property_Id`) REFERENCES `bangluru_property` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `chennai_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `chennai_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_chen_L` FOREIGN KEY (`Property_Id`) REFERENCES `chennai_lease` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `chennai_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `chennai_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(50) NOT NULL,
  `Seller_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_Chennai` FOREIGN KEY (`Property_Id`) REFERENCES `chennai_property` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `delhi_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `delhi_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_delhi_L` FOREIGN KEY (`Property_Id`) REFERENCES `delhi_lease` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `delhi_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(50) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `delhi_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(70) NOT NULL,
  `Seller_Type` varchar(70) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_Delhi` FOREIGN KEY (`Property_Id`) REFERENCES `delhi_property` (`Property_Id`)
) ENGINE=InnoDB;

CREATE TABLE `faridabad_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `faridabad_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_faridabad_L` FOREIGN KEY (`Property_Id`) REFERENCES `faridabad_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `faridabad_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `faridabad_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_faridabad` FOREIGN KEY (`Property_Id`) REFERENCES `faridabad_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `ghaziabad_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `ghaziabad_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_ghazi_L` FOREIGN KEY (`Property_Id`) REFERENCES `ghaziabad_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `ghaziabad_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `ghaziabad_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_ghaziabad` FOREIGN KEY (`Property_Id`) REFERENCES `ghaziabad_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `gurgaon_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `gurgaon_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_gurgaon_L` FOREIGN KEY (`Property_Id`) REFERENCES `gurgaon_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `gurgaon_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `gurgaon_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_gurgaon` FOREIGN KEY (`Property_Id`) REFERENCES `gurgaon_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `hyderabad_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `hyderabad_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_hyderabad_L` FOREIGN KEY (`Property_Id`) REFERENCES `hyderabad_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `hyderabad_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `hyderabad_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_hyderabad` FOREIGN KEY (`Property_Id`) REFERENCES `hyderabad_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `kolkata_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `kolkata_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_kolk_L` FOREIGN KEY (`Property_Id`) REFERENCES `kolkata_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `kolkata_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `kolkata_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_kolkata` FOREIGN KEY (`Property_Id`) REFERENCES `kolkata_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `mumbai_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `mumbai_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `mumbai_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_mumbai` FOREIGN KEY (`Property_Id`) REFERENCES `mumbai_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `mumbaia_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_mumbai_L` FOREIGN KEY (`Property_Id`) REFERENCES `mumbai_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `navimumbai_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `navimumbai_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_navimum_L` FOREIGN KEY (`Property_Id`) REFERENCES `navimumbai_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `navimumbai_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `navimumbai_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_navimumbai` FOREIGN KEY (`Property_Id`) REFERENCES `navimumbai_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `noida_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `noida_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_noida_L` FOREIGN KEY (`Property_Id`) REFERENCES `noida_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `noida_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(50) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `noida_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_noida` FOREIGN KEY (`Property_Id`) REFERENCES `noida_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `pune_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `pune_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_pune_L` FOREIGN KEY (`Property_Id`) REFERENCES `pune_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `pune_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `pune_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_Pune` FOREIGN KEY (`Property_Id`) REFERENCES `pune_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `thane_lease` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Rent_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `thane_lease_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_thane_L` FOREIGN KEY (`Property_Id`) REFERENCES `thane_lease` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `thane_property` (
  `Property_Id` int NOT NULL,
  `Property_Type` varchar(45) NOT NULL,
  `Area_sqft` int NOT NULL,
  `Price_Ru` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `Property_Id_UNIQUE` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `thane_seller` (
  `Property_Id` int NOT NULL,
  `Seller` varchar(45) NOT NULL,
  `Seller_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Property_Id`),
  UNIQUE KEY `idthane_seller_UNIQUE` (`Property_Id`),
  CONSTRAINT `Property_Id_thane` FOREIGN KEY (`Property_Id`) REFERENCES `thane_property` (`Property_Id`)
) ENGINE=InnoDB ;

CREATE TABLE `ahmedabad_renting_property` (
  `property_id_ahmedabad` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_ahmedabad`)
) ENGINE=InnoDB;

CREATE TABLE `ahmedabad_renting_seller` (
  `property_id_ahmedabad` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_ahmedabad`),
  CONSTRAINT `property_id_ahmedabad_fk` FOREIGN KEY (`property_id_ahmedabad`) REFERENCES `ahmedabad_renting_property` (`property_id_ahmedabad`)
) ENGINE=InnoDB;

CREATE TABLE `bangalore_renting_property` (
  `property_id_bangalore` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_bangalore`)
) ENGINE=InnoDB;

CREATE TABLE `bangalore_renting_seller` (
  `property_id_bangalore` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_bangalore`),
  CONSTRAINT `property_id_bangalore_fk` FOREIGN KEY (`property_id_bangalore`) REFERENCES `bangalore_renting_property` (`property_id_bangalore`)
) ENGINE=InnoDB;

CREATE TABLE `chennai_renting_property` (
  `property_id_chennai` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_chennai`)
) ENGINE=InnoDB;

CREATE TABLE `chennai_renting_seller` (
  `property_id_chennai` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_chennai`),
  CONSTRAINT `property_id_chennai_fk` FOREIGN KEY (`property_id_chennai`) REFERENCES `chennai_renting_property` (`property_id_chennai`)
) ENGINE=InnoDB;

CREATE TABLE `delhi_renting_property` (
  `property_id_delhi` int NOT NULL,
  
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `furnish_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`property_id_delhi`)
) ENGINE=InnoDB;

CREATE TABLE `delhi_renting_seller` (
  `property_id_delhi` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_delhi`),
  CONSTRAINT `property_id_delhi_fk` FOREIGN KEY (`property_id_delhi`) REFERENCES `delhi_renting_property` (`property_id_delhi`)
) ENGINE=InnoDB;

CREATE TABLE `faridabad_renting_property` (
  `property_id_faridabad` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_faridabad`)
) ENGINE=InnoDB;

CREATE TABLE `faridabad_renting_seller` (
  `property_id_faridabad` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_faridabad`),
  CONSTRAINT `property_id_faridabad_fk` FOREIGN KEY (`property_id_faridabad`) REFERENCES `faridabad_renting_property` (`property_id_faridabad`)
) ENGINE=InnoDB;



CREATE TABLE `ghaziabad_renting_property` (
  `property_id_ghaziabad` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `locationl` varchar(100) NOT NULL,
  `furnish_type` varchar(45) NOT NULL,
  PRIMARY KEY (`property_id_ghaziabad`)
) ENGINE=InnoDB;

CREATE TABLE `ghaziabad_property_seller` (
  `property_id_gurgaon` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_gurgaon`),
  CONSTRAINT `property_id_ghaziabad_fk` FOREIGN KEY (`property_id_gurgaon`) REFERENCES `ghaziabad_renting_property` (`property_id_ghaziabad`)
) ENGINE=InnoDB;



CREATE TABLE `gurgaon_renting_property` (
  `property_id_gurgaon` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(100) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_gurgaon`)
) ENGINE=InnoDB;

CREATE TABLE `gurgaon_renting_seller` (
  `property_id_gurgaon` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_gurgaon`),
  CONSTRAINT `property_id_gurgaon_fk` FOREIGN KEY (`property_id_gurgaon`) REFERENCES `gurgaon_renting_property` (`property_id_gurgaon`)
) ENGINE=InnoDB;

CREATE TABLE `hyderabad_renting_property` (
  `property_id_hyderabad` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_hyderabad`)
) ENGINE=InnoDB;

CREATE TABLE `hyderabad_renting_seller` (
  `property_id_hyderabad` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_hyderabad`),
  CONSTRAINT `property_id_hyderabad_fk` FOREIGN KEY (`property_id_hyderabad`) REFERENCES `hyderabad_renting_property` (`property_id_hyderabad`)
) ENGINE=InnoDB;

CREATE TABLE `kokata_renting_property` (
  `property_id_kolkata` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_kolkata`)
) ENGINE=InnoDB;

CREATE TABLE `kolkata_renting_seller` (
  `property_id_kolkata` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`property_id_kolkata`),
  CONSTRAINT `property_id_kolkata_fk` FOREIGN KEY (`property_id_kolkata`) REFERENCES `kokata_renting_property` (`property_id_kolkata`)
) ENGINE=InnoDB;

CREATE TABLE `mumbai_renting_property` (
  `property_id_mumbai` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_mumbai`)
) ENGINE=InnoDB;

CREATE TABLE `mumbai_renting_seller` (
  `property_id_mumbai` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_mumbai`),
  CONSTRAINT `property_id_mumbai_fk` FOREIGN KEY (`property_id_mumbai`) REFERENCES `mumbai_renting_property` (`property_id_mumbai`)
) ENGINE=InnoDB;

CREATE TABLE `navi mumbai_renting_property` (
  `property_id_navi mumbai` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `bhk_type` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_navi mumbai`)
) ENGINE=InnoDB;

CREATE TABLE `navi mumbai_renting_seller` (
  `property_id_navi mumbai` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_navi mumbai`),
  CONSTRAINT `property_id_navi mumbai_fk` FOREIGN KEY (`property_id_navi mumbai`) REFERENCES `navi mumbai_renting_property` (`property_id_navi mumbai`)
) ENGINE=InnoDB;

CREATE TABLE `noida_renting_property` (
  `property_id_noida` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_noida`)
) ENGINE=InnoDB;

CREATE TABLE `noida_renting_seller` (
  `property_id_noida` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_noida`),
  CONSTRAINT `property_id_noida_fk` FOREIGN KEY (`property_id_noida`) REFERENCES `noida_renting_property` (`property_id_noida`)
) ENGINE=InnoDB;

CREATE TABLE `pune_renting_property` (
  `property_id_pune` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id_pune`)
) ENGINE=InnoDB;

CREATE TABLE `pune_renting_seller` (
  `property_id_pune` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id_pune`),
  CONSTRAINT `property_id_pune_fk` FOREIGN KEY (`property_id_pune`) REFERENCES `pune_renting_property` (`property_id_pune`)
) ENGINE=InnoDB;

CREATE TABLE `thane_renting_property` (
  `property_id` int NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `area_sqft` int NOT NULL,
  `price` int NOT NULL,
  `location` varchar(60) NOT NULL,
  `furnish_type` varchar(20) NOT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB;

CREATE TABLE `thane_renting_seller` (
  `property_id` int NOT NULL,
  `seller` varchar(45) NOT NULL,
  `seller_type` varchar(25) NOT NULL,
  PRIMARY KEY (`property_id`),
  CONSTRAINT `property_id_thane_fk` FOREIGN KEY (`property_id`) REFERENCES `thane_renting_property` (`property_id`)
) ENGINE=InnoDB;
