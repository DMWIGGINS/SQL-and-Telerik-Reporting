## Presenting...............a Bracelet Database?


I was looking for a way to showcase my skills using SQL Server, SSMS and Telerik Report Designer.  As luck would have it, I was also starting to make and sell leather and gemstone beaded bracelets.  I created this database to keep track of supplies and costs as well as a Crosstab Report to track bracelet inventory.


## Database and SQL Queries

Here is my Bracelet Database Diagram with Foreign Key Relationships.

_Click image below to see fullsize_

[![Bracelet Database Diagram](images/DatabaseDiagramwithFK-thumb.png)](images/DatabaseDiagramwithFK-full.png)


Here are the [Create Table Scripts](https://github.com/DMWIGGINS/SQL-and-Telerik-Reporting/blob/main/tables.sql) edited for readability.


To create a Telerik Report, you must decide what parameters (if any) the user will need to select.

 
For this to report, the user can search by Bead (Gemstone), Bracelet Size, Button (I have a variety of fun buttons used for clasps) and Status (Available/Sold).


Here are the [Parameter Queries](https://github.com/DMWIGGINS/SQL-and-Telerik-Reporting/blob/main/inventoryreport.sql) that were used to populate the picklists as well as the main query that produces the report.


## Telerik interface and report design

_Click image below to see fullsize_

[![Telerik UI](images/ReportDesignerInterface.png)](images/ReportDesignerInterface.png)


## Picklists populated with information

Select Gemstone/Bead(s)

![BeadPicker](images/BeadPickerwithData.png)


Select Size(s)

![SizePicker](images/SizePickerwithData.png)


Select Button(s)

![ButtonPicker](images/ButtonPickerwithData.png)


Select Status 

![StatusPicker](images/StatusPickerwithData.png)


## Report examples with real data

Searching for _available_ bracelets with either aquamarine, aventurine, lepidolite or onyx, all button options, sizes 7.00, 7.25, 7.50, 7.75.

![Size7sAvailable](images/Size7sAvailable.png)


Searching for _sold_ bracelets with aquamarine, aventurine, lepidolite or onyx, all button options, sizes 7.00, 7.25, 7.50, 7.75.

![Size7sSold](images/Size7sSold.png)


Here is a general inventory report showing available bracelets with 10 of the gemstone/bead(s), all button options and all sizes. (2 images)

_Click below images to see fullsize_

[![AllSizesAvailablePart1](images/AllSizesAvailablePart1.PNG)](images/AllSizesAvailablePart1.PNG)

[![AllSizesAvailablePart2](images/AllSizesAvailablePart2.PNG)](images/AllSizesAvailablePart2.PNG)
















