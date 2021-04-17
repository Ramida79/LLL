CREATE TABLE `skaner` (
  `nazwa` text,
  `skan` int
);

CREATE TABLE `skan` (
  `skan` int,
  `numer` int,
  `miejsce` int,
  `czas` int,
  `parametry` int
);

CREATE TABLE `miejsce` (
  `miejsce` int,
  `kraj` text,
  `miasto` text
);

CREATE TABLE `czas` (
  `czas` int,
  `rok` int,
  `miesiac` int,
  `dzien` int,
  `godzina` int,
  `minuta` int,
  `sekunda` int
);

CREATE TABLE `parametry` (
  `parametry` int,
  `rozdzielczosc` table
);

CREATE TABLE `rozdzielczosc` (
  `rozdzielczosc` int,
  `X` int,
  `Y` int
);

ALTER TABLE `skaner` ADD FOREIGN KEY (`skan`) REFERENCES `skan` (`skan`);

ALTER TABLE `skan` ADD FOREIGN KEY (`miejsce`) REFERENCES `miejsce` (`miejsce`);

ALTER TABLE `skan` ADD FOREIGN KEY (`czas`) REFERENCES `czas` (`czas`);

ALTER TABLE `skan` ADD FOREIGN KEY (`parametry`) REFERENCES `parametry` (`parametry`);

ALTER TABLE `parametry` ADD FOREIGN KEY (`rozdzielczosc`) REFERENCES `rozdzielczosc` (`rozdzielczosc`);
