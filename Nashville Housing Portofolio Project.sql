------------------------------------------------------------------------------------------------------
------------------------------------------- DATA PROFILING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Looking All The Data from The Table
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Counting How Many Rows in The Table
SELECT COUNT(*) AS Row_Count
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Showing The Data Type For Every Column
SELECT COLUMN_NAME, DATA_TYPE
FROM NashvilleHousingPortfolioProject.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'NashvilleHousing'

------------------------------------------------------------------------------------------------------
------------------------------------------- DATA CLEANSING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- UniqueID Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Amount of Unique Value in UniqueID Column
SELECT COUNT(DISTINCT(UniqueID))
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Checking Missing Value on UniqueID Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE [UniqueID ] is Null

------------------------------------------------------------------------------------------------------
-- ParcelID Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Amount of Unique Value in ParcelID Column
SELECT COUNT(DISTINCT(ParcelID))
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Checking Missing Value on ParcelID Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE ParcelID is NULL

------------------------------------------------------------------------------------------------------
-- LandUse Column
~~~~~~~~~~~~~~~~~~~
-- Checking The Amount of Unique Value in LandUse Column
SELECT COUNT(DISTINCT(LandUse))
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Checking The Unique Value in LandUse Column
SELECT DISTINCT(LandUse)
FROM NashvilleHousingPortfolioProject..NashvilleHousing
ORDER BY LandUse

-- Checking Missing Value on LandUse Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE LandUse is Null

-- Changing The Naming on LandUse Column
SELECT LandUse,
CASE WHEN LandUse = 'SINGLE FAMILY' THEN 'Single Family'
	 WHEN LandUse = 'DUPLEX' THEN 'Duplex'
	 WHEN LandUse = 'ZERO LOT LINE' THEN 'Zero Lot Line'
	 WHEN LandUse = 'VACANT RESIDENTIAL LAND' THEN 'Vacant Residential Land'
	 WHEN LandUse = 'VACANT RES LAND' THEN 'Vacant Residential Land'
	 WHEN LandUse = 'TRIPLEX' THEN 'Triplex'
	 WHEN LandUse = 'RESIDENTIAL COMBO/MISC' THEN 'Residential Combo'
	 WHEN LandUse = 'QUADPLEX' THEN 'Quadplex'
	 WHEN LandUse = 'CHURCH' THEN 'Church'
	 WHEN LandUse = 'DORMITORY/BOARDING HOUSE' THEN 'Dormitory/Boarding House'
	 WHEN LandUse = 'SPLIT CLASS' THEN 'Split Class'
	 WHEN LandUse = 'PARSONAGE' THEN 'Parsonage'
	 WHEN LandUse = 'GREENBELT' THEN 'Green Belt'
	 WHEN LandUse = 'FOREST' THEN 'Forest'
	 WHEN LandUse = 'MOBILE HOME' THEN 'Mobile Home'
	 WHEN LandUse = 'DAY CARE CENTER' THEN 'Daycare Center'
	 WHEN LandUse = 'APARTMENT: LOW RISE (BUILT SINCE 1960)' THEN 'Apartment'
	 WHEN LandUse = 'TERMINAL/DISTRIBUTION WAREHOUSE' THEN 'Terminal/Distribution Warehouse'
	 WHEN LandUse = 'NON-PROFIT CHARITABLE SERVICE' THEN 'Non-Profit Charitable Service'
	 WHEN LandUse = 'OFFICE BLDG (ONE OR TWO STORIES)' THEN 'Office Building'
	 WHEN LandUse = 'LIGHT MANUFACTURING' THEN 'Light Manufacturing'
	 WHEN LandUse = 'CLUB/UNION HALL/LODGE' THEN 'Club/Union Hall/Lodge'
	 WHEN LandUse = 'STRIP SHOPPING CENTER' THEN 'Strip Shopping Center'
	 WHEN LandUse = 'GREENBELT/RES' THEN 'Green Belt'
	 WHEN LandUse = 'ONE STORY GENERAL RETAIL STORE' THEN 'Retail Store'
	 WHEN LandUse = 'CONVENIENCE MARKET WITHOUT GAS' THEN 'Convenience Market Without Gas'
	 WHEN LandUse = 'RESIDENTIAL CONDO' THEN 'Residential Condo'
	 WHEN LandUse = 'RESTURANT/CAFETERIA' THEN 'Restaurant/Cafetaria'
	 WHEN LandUse = 'SMALL SERVICE SHOP' THEN 'Small Service Shop'
	 WHEN LandUse = 'VACANT COMMERCIAL LAND' THEN 'Vacant Commercial Land'
	 WHEN LandUse = 'VACANT RESIENTIAL LAND' THEN 'Vacant Residential Land'
	 WHEN LandUse = 'VACANT RURAL LAND' THEN 'Vacant Rural Land'
	 WHEN LandUse = 'VACANT ZONED MULTI FAMILY' THEN 'Vacant Zoned Multi Family'
	 WHEN LandUse = 'CONDO' THEN 'Condo'
	 WHEN LandUse = 'PARKING LOT' THEN 'Parking Lot'
	 WHEN LandUse = 'NIGHTCLUB/LOUNGE' THEN 'Nightclub/Lounge'
	 WHEN LandUse = 'CONDOMINIUM OFC  OR OTHER COM CONDO' THEN 'Condo'
	 WHEN LandUse = 'METRO OTHER THAN OFC, SCHOOL,HOSP, OR PARK' THEN 'Metro'
	 WHEN LandUse = 'MORTUARY/CEMETERY' THEN 'Mortuary/Cemetery'
	 ELSE LandUse
	 END
FROM NashvilleHousingPortfolioProject..NashvilleHousing

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET LandUse = CASE WHEN LandUse = 'SINGLE FAMILY' THEN 'Single Family'
				   WHEN LandUse = 'DUPLEX' THEN 'Duplex'
				   WHEN LandUse = 'ZERO LOT LINE' THEN 'Zero Lot Line'
				   WHEN LandUse = 'VACANT RESIDENTIAL LAND' THEN 'Vacant Residential Land'
				   WHEN LandUse = 'VACANT RES LAND' THEN 'Vacant Residential Land'
				   WHEN LandUse = 'TRIPLEX' THEN 'Triplex'
				   WHEN LandUse = 'RESIDENTIAL COMBO/MISC' THEN 'Residential Combo'
				   WHEN LandUse = 'QUADPLEX' THEN 'Quadplex'
				   WHEN LandUse = 'CHURCH' THEN 'Church'
				   WHEN LandUse = 'DORMITORY/BOARDING HOUSE' THEN 'Dormitory/Boarding House'
				   WHEN LandUse = 'SPLIT CLASS' THEN 'Split Class'
				   WHEN LandUse = 'PARSONAGE' THEN 'Parsonage'
				   WHEN LandUse = 'GREENBELT' THEN 'Green Belt'
				   WHEN LandUse = 'FOREST' THEN 'Forest'
				   WHEN LandUse = 'MOBILE HOME' THEN 'Mobile Home'
				   WHEN LandUse = 'DAY CARE CENTER' THEN 'Daycare Center'
				   WHEN LandUse = 'APARTMENT: LOW RISE (BUILT SINCE 1960)' THEN 'Apartment'
				   WHEN LandUse = 'TERMINAL/DISTRIBUTION WAREHOUSE' THEN 'Terminal/Distribution Warehouse'
				   WHEN LandUse = 'NON-PROFIT CHARITABLE SERVICE' THEN 'Non-Profit Charitable Service'
				   WHEN LandUse = 'OFFICE BLDG (ONE OR TWO STORIES)' THEN 'Office Building'
				   WHEN LandUse = 'LIGHT MANUFACTURING' THEN 'Light Manufacturing'
				   WHEN LandUse = 'CLUB/UNION HALL/LODGE' THEN 'Club/Union Hall/Lodge'
				   WHEN LandUse = 'STRIP SHOPPING CENTER' THEN 'Strip Shopping Center'
				   WHEN LandUse = 'GREENBELT/RES' THEN 'Green Belt'
				   WHEN LandUse = 'ONE STORY GENERAL RETAIL STORE' THEN 'Retail Store'
				   WHEN LandUse = 'CONVENIENCE MARKET WITHOUT GAS' THEN 'Convenience Market Without Gas'
				   WHEN LandUse = 'RESIDENTIAL CONDO' THEN 'Residential Condo'
				   WHEN LandUse = 'RESTURANT/CAFETERIA' THEN 'Restaurant/Cafetaria'
				   WHEN LandUse = 'SMALL SERVICE SHOP' THEN 'Small Service Shop'
				   WHEN LandUse = 'VACANT COMMERCIAL LAND' THEN 'Vacant Commercial Land'
				   WHEN LandUse = 'VACANT RESIENTIAL LAND' THEN 'Vacant Residential Land'
				   WHEN LandUse = 'VACANT RURAL LAND' THEN 'Vacant Rural Land'
				   WHEN LandUse = 'VACANT ZONED MULTI FAMILY' THEN 'Vacant Zoned Multi Family'
				   WHEN LandUse = 'CONDO' THEN 'Condo'
				   WHEN LandUse = 'NIGHTCLUB/LOUNGE' THEN 'Nightclub/Lounge'
				   WHEN LandUse = 'CONDOMINIUM OFC  OR OTHER COM CONDO' THEN 'Condo'
				   WHEN LandUse = 'METRO OTHER THAN OFC, SCHOOL,HOSP, OR PARK' THEN 'Metro'
				   WHEN LandUse = 'MORTUARY/CEMETERY' THEN 'Mortuary/Cemetery'
				   WHEN LandUse = 'PARKING LOT' THEN 'Parking Lot'
				   ELSE LandUse
				   END

------------------------------------------------------------------------------------------------------
-- PropertyAddress Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on PropertyAddress Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE PropertyAddress is Null

-- Handling Missing Value on PropertyAddress Column
SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress
FROM NashvilleHousingPortfolioProject..NashvilleHousing a
JOIN NashvilleHousingPortfolioProject..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is null

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM NashvilleHousingPortfolioProject..NashvilleHousing a
JOIN NashvilleHousingPortfolioProject..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is null

-- Breaking The PropertyAddress into Individual Columns (Address, City, State)
SELECT PropertyAddress
FROM NashvilleHousingPortfolioProject..NashvilleHousing

SELECT PropertyAddress,
SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress) -1) AS Address,
SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress) +1, LEN(PropertyAddress)) AS City
FROM NashvilleHousingPortfolioProject..NashvilleHousing

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD PropertySplitAddress nvarchar(255)

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress) -1)

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD PropertySplitCity nvarchar(255)

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress) +1, LEN(PropertyAddress))

-- Removing PropertyAddress Column From Table
ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
DROP COLUMN PropertyAddress

------------------------------------------------------------------------------------------------------
-- SaleDate Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on SaleDate Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE SaleDate is null

-- Changing The Format Date on SaleDate Column
SELECT SaleDate, CONVERT(Date, SaleDate)
FROM NashvilleHousingPortfolioProject..NashVilleHousing

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD SaleDateConverted Date

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET SaleDateConverted = CONVERT(Date, SaleDate)

-- Removing SaleDate Column From Table
ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
DROP COLUMN SaleDate

------------------------------------------------------------------------------------------------------
-- SalePrice Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on SalePrice Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE SalePrice is Null

------------------------------------------------------------------------------------------------------
-- LegalReference Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on LegalReference Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE LegalReference is Null

------------------------------------------------------------------------------------------------------
-- SoldAsVacant Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on SoldAsVacant Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE SoldAsVacant is null

-- Checking The Unique Value on SoldAsVacant Column
SELECT DISTINCT(SoldAsVacant)
FROM NashvilleHousingPortfolioProject..NashvilleHousing

-- Changing The Value on SoldAsVacant Column to Yes And No
SELECT SoldAsVacant,
CASE WHEN SoldAsVacant = 'N' THEN 'No'
	 WHEN SoldAsVacant = 'Y' THEN 'Yes'
	 ELSE SoldAsVacant
	 END
FROM NashvilleHousingPortfolioProject..NashvilleHousing

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET SoldAsVacant = CASE WHEN SoldAsVacant = 'N' THEN 'No'
						WHEN SoldAsVacant = 'Y' THEN 'Yes'
						ELSE SoldAsVacant
						END

------------------------------------------------------------------------------------------------------
-- OwnerName Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on OwnerName Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE OwnerName is null

-- Handling Missing Value on OwnerName Column
SELECT a.ParcelID, a.OwnerName, b.ParcelID, b.OwnerName
FROM NashvilleHousingPortfolioProject..NashvilleHousing a
JOIN NashvilleHousingPortfolioProject..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.OwnerName is null

UPDATE a
SET OwnerName = ISNULL(a.OwnerName, b.OwnerName)
FROM NashvilleHousingPortfolioProject..NashvilleHousing a
JOIN NashvilleHousingPortfolioProject..NashvilleHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.OwnerName is null

-- TURNS OUT IT DOESN'T WORK, SO I DECIDED TO DELETE THE ROW THAT HAS A NULL VALUE IN OwnerName COLUMN
DELETE FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE OwnerName is NUll

------------------------------------------------------------------------------------------------------
-- OwnerAddress Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on OwnerAddress Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE OwnerAddress is null

-- Breaking The OwnerAddress Column into Individual Column (Address, City, State)
SELECT
OwnerAddress,
PARSENAME(REPLACE(OwnerAddress,',','.'), 3) AS Address,
PARSENAME(REPLACE(OwnerAddress,',','.'), 2) AS City,
PARSENAME(REPLACE(OwnerAddress,',','.'), 1) AS State
FROM NashvilleHousingPortfolioProject..NashvilleHousing

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD OwnerSplitAddress nvarchar(255)

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress,',','.'), 3)

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD OwnerSplitCity nvarchar(255)

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress,',','.'), 2)

ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
ADD OwnerSplitState nvarchar(255)

UPDATE NashvilleHousingPortfolioProject..NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress,',','.'), 1)

-- Removing OwnerAddress Column From Table
ALTER TABLE NashvilleHousingPortfolioProject..NashvilleHousing
DROP COLUMN OwnerAddress

------------------------------------------------------------------------------------------------------
-- Acreage Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on Acreage Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE Acreage is null

------------------------------------------------------------------------------------------------------
-- TaxDistrict Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on TaxDistrict Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE TaxDistrict is null

------------------------------------------------------------------------------------------------------
-- LandValue Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on LandValue Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE LandValue is null

------------------------------------------------------------------------------------------------------
-- BuildingValue Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on BuildingValue Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE BuildingValue is null

------------------------------------------------------------------------------------------------------
-- TotalValue Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on TotalValue Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE TotalValue is null

------------------------------------------------------------------------------------------------------
-- YearBuilt Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on YearBuilt Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE YearBuilt is null

-- Handling Missing Value on YearBuilt Column by Delete It.
DELETE FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE YearBuilt is null

------------------------------------------------------------------------------------------------------
-- Bedrooms Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on Bedrooms Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE Bedrooms is null

-- Handling Missing Value on Bedrooms Column by Delete It.
DELETE FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE Bedrooms is null

------------------------------------------------------------------------------------------------------
-- FullBath Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on FullBath Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE FullBath is null

-- Handling Missing Value on FullBath Column by Delete It.
DELETE FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE FullBath is null

------------------------------------------------------------------------------------------------------
-- HalfBath Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking Missing Value on HalfBath Column
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE HalfBath is null

-- Handling Missing Value on HalfBath Column by Delete It.
DELETE FROM NashvilleHousingPortfolioProject..NashvilleHousing
WHERE HalfBath is null

------------------------------------------------------------------------------------------------------
-- Removing Duplicates Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WITH CTE_Removing_Duplicates AS
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY ParcelID,
								LandUse,
								SalePrice,
								LegalReference,
								SoldAsVacant,
								OwnerName,
								Acreage,
								TaxDistrict,
								LandValue,
								BuildingValue,
								TotalValue,
								YearBuilt,
								Bedrooms,
								FullBath,
								HalfBath,
								PropertySplitAddress,
								PropertySplitCity,
								SaleDateConverted,
								OwnerSplitAddress,
								OwnerSplitCity,
								OwnerSplitState ORDER BY ParcelID) AS RN
FROM NashvilleHousingPortfolioProject..NashvilleHousing
)
DELETE FROM CTE_Removing_Duplicates
WHERE RN > 1

------------------------------------------------------------------------------------------------------
------------------------------------------ DATA EXPLORATION ------------------------------------------
------------------------------------------------------------------------------------------------------
SELECT *
FROM NashvilleHousingPortfolioProject..NashvilleHousing
ORDER BY [UniqueID ]

SELECT DISTINCT(LandUse),
COUNT(LandUse) AS AmountOfLandUse, 
AVG(SalePrice) AS AVGSalePrice
FROM NashvilleHousingPortfolioProject..NashvilleHousing
GROUP BY LandUse
ORDER BY AmountOfLandUse DESC

SELECT DISTINCT SoldAsVacant, COUNT(SoldAsVacant) AS AmountOfSoldAsVacant
FROM NashvilleHousingPortfolioProject..NashvilleHousing
GROUP BY SoldAsVacant
ORDER BY AmountOfSoldAsVacant DESC

SELECT DISTINCT OwnerName, COUNT(OwnerName) AS AmountOfOwnerName
FROM NashvilleHousingPortfolioProject..NashvilleHousing
GROUP BY OwnerName
ORDER BY AmountOfOwnerName DESC

SELECT DISTINCT PropertySplitCity, COUNT(PropertySplitCity) AS AmountOfPropertySplitCity, AVG(SalePrice) AS AVGSalePrice
FROM NashvilleHousingPortfolioProject..NashvilleHousing
GROUP BY PropertySplitCity
ORDER BY AmountOfPropertySplitCity DESC