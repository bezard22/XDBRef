-- mysql/create/foreignKey.sql

/* 
---------------------------------------------------------
Create a table "entry" with primary key "entryID" then
create a second atble "entryVal" which references "entry"
---------------------------------------------------------
 */

CREATE TABLE newDB.entry(
    entryID INT NOT NULL AUTO_INCREMENT,
    entryStr VARCHAR(50) NOT NULL,
    PRIMARY KEY (entryID)
);

CREATE TABLE newDB.entryVal(
    entryValID INT NOT NULL AUTO_INCREMENT,
    entryID INT NOT NULL,
    entryVal FLOAT NOT NULL,
    PRIMARY KEY (entryValID),
    FOREIGN KEY (entryID) REFERENCES newDB.entry(entryID)
);