-- 1. Визначити кількість інцидентів, що трапились в кожному із штатів
-- Вивести список у порядку спадання
SELECT usa_state, COUNT(zipcode) FROM USA_State
GROUP BY usa_state
ORDER BY COUNT(zipcode) DESC

-- 2. Визначити кількість інцидентів однакового типу. 
-- Відсортувати за алфавітом.
SELECT severity, COUNT(accident_id) FROM Accident
GROUP BY severity
ORDER BY severity ASC

-- 3. Визначити кількість інцидентів в місяць
SELECT EXTRACT(MONTH FROM accident_date) AS MonthofDate, COUNT(accident_id)
FROM Accident
GROUP BY MonthofDate
ORDER BY MonthofDate ASC