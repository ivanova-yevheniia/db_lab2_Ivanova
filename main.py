import psycopg2
username = 'student01'
password = 'postgress'
database = 'usa_accident'
host = 'localhost'
port = '5432'

conn = psycopg2.connect(database=database,
                        host=host,
                        user=username,
                        password=password,
                        port=port)

query_1 = '''
-- 1. Визначити кількість інцидентів, що трапились в кожному із штатів
-- Вивести список у порядку спадання
SELECT usa_state, COUNT(zipcode) FROM USA_State
GROUP BY usa_state
ORDER BY COUNT(zipcode) DESC
'''

query_2 = '''
-- 2. Визначити кількість інцидентів однакового типу. 
-- Відсортувати за алфавітом.
SELECT severity, COUNT(accident_id) FROM Accident
GROUP BY severity
ORDER BY severity ASC
'''

query_3 = '''
-- 3. Визначити кількість інцидентів в місяць
SELECT EXTRACT(MONTH FROM accident_date) AS MonthofDate, COUNT(accident_id)
FROM Accident
GROUP BY MonthofDate
ORDER BY MonthofDate ASC
'''

def query_start(query):
    cur.execute(query)
    for row in cur:
        print(row)
    print()
    
if __name__ == '__main__':
    with conn:
        print("Database opened successfully")
        cur = conn.cursor()

        query_start(query_1)
        query_start(query_2)
        query_start(query_3)
