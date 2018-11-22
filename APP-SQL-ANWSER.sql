--
-- Database: `cinema_DB`
--
CREATE DATABASE cinema_DB;
USE cinema_DB;

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Id` int(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Genre` varchar(128) NOT NULL,
  `RealeaseDate` date NOT NULL,
  `Income` int(254) NOT NULL,
  CONSTRAINT Movie_Realisator_FK FOREIGN KEY(Id) REFERENCES Realisator (Id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Id`, `Title`, `Genre`, `RealeaseDate`, `Income`) VALUES
(1, '65', 'SciFi', '2015-02-09', 2782),
(2, 'Titanic', 'Romantic', '1998-01-20', 2185),
(3, 'Stargate', 'Disaster', '1994-02-01', 197),
(4, '2012', 'Disaster', '1995-03-04', 197),
(5, 'Star Wars I ', 'SciFi', '1900-10-10', 924),
(6, 'Star Wars IV', 'SciFi', '2010-09-10', 775),
(7, 'Star Wars III', 'SciFi', '2001-02-05', 848);

-
-- Table structure for table `realisator`
--

CREATE TABLE `realisator` (
  `Id` int(255) NOT NULL, PRIMARY KEY,
  `Firstname` varchar(5) NOT NULL,
  `LastName` varchar(5) NOT NULL,
  `Birthday` date NOT NULL,
  `nationality` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realisator`
--

INSERT INTO `realisator` (`Id`, `Firstname`, `LastName`, `Birthday`, `nationality`) VALUES
(1, 'James', 'Camer', '1954-08-14', 'Canadian'),
(2, 'Georg', 'Lucas', '1954-05-14', 'American'),
(3, 'Alfre', 'Hitch', '1899-06-30', 'British'),
(4, 'Rolan', 'Emmer', '1955-08-10', 'German');
