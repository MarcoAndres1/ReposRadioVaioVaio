-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.10-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para vaiovaio
CREATE DATABASE IF NOT EXISTS `vaiovaio` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vaiovaio`;

-- Volcando estructura para tabla vaiovaio.noticia
CREATE TABLE IF NOT EXISTS `noticia` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `encabezado` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  `estado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla vaiovaio.noticia: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` (`id`, `titulo`, `encabezado`, `cuerpo`, `estado`) VALUES
	(001, 'Anunciaron tormentas eléctricas para la Región del Biobío', 'El evento climático se registraría durante la tarde y también afectaría a la Región del Maule.', 'La Dirección Meteorológica de Chile anunció que se registrarían tormentas eléctricas en el Biobio.\r\n\r\nEl evento climático se produciría durante la tarde y alcanzaría una categoría de normal a moderada.\r\n\r\nLas tormentas eléctricas también afectarían a la Región del Maule.', 0),
	(002, 'Garín ya tiene hora para debutar en Roland Garros', 'El chileno jugará, aproximadamente, entre las 07:00 y 08:00 horas de este lunes, tras el partido de Juan Ignacio Londero y Nikoloz Basilashvili.', 'El tenista chileno, 37° en el ranking ATP, enfrentará al estadounidense Reilly Opelka (58°), en segundo Grand Slam del año.\r\n\r\nGarín tiene una victoria sobre Opelka, en en 2018, en el Challenger de Savannah, un torneo en arcilla.', 0),
	(003, 'Colegio de Profesores anuncia paro nacional indefinido desde el 3 de junio', 'El titular del Magisterio, Mario Aguilar, calificó de "irrespetuoso" el trato del Ministerio de Educación.', 'El presidente del Colegio de Profesores, Mario Aguilar, anunció el inicio de un paro nacional indefinido a contar del lunes 3 de junio y como medida adoptada por la asamblea del profesorado desarrollada durante la jornada.', 0);
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
