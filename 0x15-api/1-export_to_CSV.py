#!/usr/bin/python3
"""This script will extract information and save it in csv file"""
import csv
import requests
import sys

if __name__ == "__main__":
    todo = requests.get("https://jsonplaceholder.typicode.com/todos")
    user = requests.get("https://jsonplaceholder.typicode.com/users")
    json_todo = todo.json()
    json_user = user.json()
    todo_list = json_todo[:]
    user_list = json_user[:]
    id_list = []
    for i in todo_list:
        if int(sys.argv[1]) == i.get('userId'):
            id_list.append(i)
    user_name = ""
    for i in user_list:
        if int(sys.argv[1]) == i.get('id'):
            user_name = i.get('username')
    for i in id_list:
        i['username'] = i['id']
        del i['id']
        i['username'] = user_name
    file_name = sys.argv[1] + ".csv"
    with open(file_name, "w", encoding='utf-8') as new_file:
        fields = ["userId", "username", "completed", "title"]
        csv_file = csv.DictWriter(new_file, fieldnames=fields,
                                  quoting=csv.QUOTE_ALL)
        for i in id_list:
            csv_file.writerow(i)
