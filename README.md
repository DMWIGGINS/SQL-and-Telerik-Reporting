

I was looking for a way to showcase my skills using SQL Server, SSMS and Telerik Report Designer.  As luck would have it, I was also starting to make and sell leather and gemstone beaded bracelets.  I created this database to keep track of supplies and costs as well as a Crosstab Report to track bracelet inventory.


Here is my Bracelet Database Diagram with Foreign Key Relationships.

_Click image below to see fullsize_

[![Bracelet Database Diagram](images/DatabaseDiagramwithFK-thumb.png)](images/DatabaseDiagramwithFK-full.png)


Here are the [Create Table Scripts](https://github.com/DMWIGGINS/SQL-and-Telerik-Reporting/blob/main/tables.sql) edited for readability.


To create a Telerik Report, you must decide what parameters (if any) the user will need to select.

I decided that it would be useful to search by Bead (Gemstone), Bracelet Size, Button (I have a variety of fun buttons used for clasps) and Status (Available/Sold).

Here are the [Parameter Queries](https://github.com/DMWIGGINS/SQL-and-Telerik-Reporting/blob/main/inventoryreport.sql) that were used to populate the select options as well as the main query that produces the report.


_Click image below to see fullsize_

[![Telerik UI](images/ReportDesignerInterface.png)](images/ReportDesignerInterface.png)

![Unpopulated Report](images/InventoryReportUnpopulated.png)

![BeadPicker](images/BeadPickerwithData.png)

![SizePicker](images/SizePickerwithData.png)

![ButtonPicker](images/ButtonPickerwithData.png)

![StatusPicker](images/StatusPickerwithData.png)

![Size7sAvailable](images/Size7sAvailable.png)

![Size7sSold](images/Size7sSold.png)


_Click below images to see fullsize_

[![AllSizesAvailablePart1](images/AllSizesAvailablePart1.PNG)](images/AllSizesAvailablePart1.PNG)

[![AllSizesAvailablePart2](images/AllSizesAvailablePart2.PNG)](images/AllSizesAvailablePart2.PNG)
















