/* Queries used to create Bracelet Inventory Report in Telerik Report Designer */

/* Queries to create the parameters for the user to select */
/* BeadPicker */
SELECT DISTINCT b.Gemstone,
	 b.BeadID
FROM Bead b
JOIN BraceletInventory bi ON bi.BeadID = b.BeadID
ORDER BY Gemstone ASC

/* SizePicker */
SELECT DISTINCT Size
FROM BraceletInventory
ORDER BY Size ASC

/* ButtonPicker */
SELECT Description, 
     ButtonID
FROM Button
ORDER BY Description ASC

/* StatusPicker */
SELECT DISTINCT bi.Status
FROM BraceletInventory bi
ORDER BY Status ASC

/* Main query to retrieve selected data  */
/* BraceletData */
SELECT b.Gemstone,
	bi.Size,
	bu.Description,
	bi.Status,
	COUNT(Size) AS Count
FROM BraceletInventory bi
JOIN Bead b ON b.BeadID = bi.BeadID
JOIN Button bu ON bu.ButtonID = bi.ButtonID
WHERE b.BeadID IN (@BeadID)
	AND bi.Size IN (@Size)
	AND bu.ButtonID IN (@ButtonID)
	AND bi.Status IN (@Status)
GROUP BY b.Gemstone,
	bi.Size,
	bu.Description,
	bi.Status
ORDER BY b.Gemstone ASC
