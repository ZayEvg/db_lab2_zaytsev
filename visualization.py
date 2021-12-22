import psycopg2
import matplotlib.pyplot as plt

#  поля заповнити власними значеннями
username = ''
password = ''
database = ''
host = ''
port = '5432'

query_1 = '''
SELECT pers_feature, COUNT(*) AS feature_count
FROM Personage
WHERE pers_main_role = 'Support'
GROUP BY pers_main_role, pers_feature
ORDER BY pers_main_role
'''

query_2 = '''
SELECT pers_feature, COUNT(*) AS feature_count
FROM Personage
GROUP BY pers_feature
ORDER BY pers_feature
'''

query_3 = '''
SELECT pers_weapon, COUNT(*) AS weapon_count
FROM Personage
GROUP BY pers_weapon
ORDER BY pers_weapon
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with con:
    curr_lane = con.cursor()
    x_lst = []
    y_lst = []
    curr_lane.execute(query_1)
    for row in curr_lane:
        x_lst.append(row[0].replace(' ', ''))
        y_lst.append(row[1])
    plt.title("Стихии героев поддержки")
    plt.bar(x_lst, y_lst, color='limegreen')
    plt.show()

    x_lst = []
    y_lst = []
    curr_lane.execute(query_2)
    for row in curr_lane:
        x_lst.append(row[0].replace(' ', ''))
        y_lst.append(row[1])
    plt.title("Герои разных стихий")
    plt.pie(y_lst, labels=x_lst,
            colors=['blueviolet', 'gold', 'royalblue', 'orangered'])
    plt.show()

    x_lst = []
    y_lst = []
    curr_lane.execute(query_3)
    for row in curr_lane:
        x_lst.append(row[0].replace(' ', ''))
        y_lst.append(row[1])
    plt.title("Герои с разным оружием")
    plt.bar(x_lst, y_lst, color='lightsteelblue')
    plt.show()
