CREATE TABLE IF NOT EXISTS `SEMAPHORE_LOCK` (
  `ROW_ID` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `LOCK_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `LOCK_NUM` TINYINT NOT NULL,
  `TOKEN` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `EXPIRES_ON` TIMESTAMP DEFAULT NULL,
  `CONTEXT` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`),
  UNIQUE (`LOCK_KEY`, `LOCK_NUM`),
  UNIQUE (`TOKEN`)
)