--
-- Tabellenstruktur für Tabelle `seller`
--

CREATE TABLE `seller` (
  `sellerID` int(10) NOT NULL,
  `type` int(1) NOT NULL,
  `humanID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `seller`
--

INSERT INTO `seller` (`sellerID`, `type`, `humanID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Indizes für die Tabelle `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sellerID`);

--
-- AUTO_INCREMENT für Tabelle `seller`
--
ALTER TABLE `seller`
  MODIFY `sellerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
