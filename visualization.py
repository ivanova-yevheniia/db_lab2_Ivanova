import psycopg2
import matplotlib.pyplot as plt

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

def query1():
    cur.execute(query_1)
    state = []
    accident = []
    for row in cur:
        state.append(row[0])
        accident.append(row[1])
    plt.bar(state, accident)
    plt.show()

def query2():
    cur.execute(query_2)
    severity = []
    accident = []
    for row in cur:
        severity.append(row[0])
        accident.append(row[1])
    x, y = plt.subplots()
    y.pie(accident, labels=severity, autopct='%1.0f%%')
    plt.show()

def query3():
    cur.execute(query_3)
    month = []
    accident = []
    for row in cur:
        month.append(row[0])
        accident.append(row[1])
    plt.bar(month, accident)
    plt.xticks(month, ['Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Oct', 'Nov'])
    plt.show()


if __name__ == '__main__':
    with conn:
        print("Database opened successfully")
        cur = conn.cursor()

        query1()
        query2()
        query3()
