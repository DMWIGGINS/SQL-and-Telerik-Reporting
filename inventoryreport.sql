/* Queries used to create Bracelet Inventory Report in Telerik Report Designer */

/* Queries to create the parameters for the user to select */
/* BeadPicker */
SELECT DISTINCT b.Gemstone,
	 b.BeadID
FROM Bead b
JOIN BraceletInventory bi ON bi.BeadID = b.BeadID
ORDER BY Gemstone ASC

/* SizePicker: Bracelet size ranging from 6.00 to 9.00 (may search for one or multiple) */
SELECT DISTINCT Size
FROM BraceletInventory
ORDER BY Size ASC

/* ButtonPicker: A variety of buttons are used as fasteners for the bracelets (may search for one or multiple)  */
SELECT Description, 
     ButtonID
FROM Button
ORDER BY Description ASC

/* StatusPicker: May search by Available, Sold or choose both */
SELECT DISTINCT bi.Status
FROM BraceletInventory bi
ORDER BY Status ASC

/* Main query to retrieve data using selected parameters*/
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
