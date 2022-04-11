#!/usr/bin/python3
"""This script will extract information from given API"""
import requests
import sys

if __name__ == "__main__":
    todo = requests.get("https://jsonplaceholder.typicode.com/todos")
    users = requests.get("https://jsonplaceholder.typicode.com/users")
    json_todo = todo.json()
    json_users = users.json()
    todo_list = json_todo[:]
    user_list = json_users[:]
    id_list = []
    for i in todo_list:
        if int(sys.argv[1]) == i.get('userId'):
            id_list.append(i)
    name = ""
    for i in user_list:
        if int(sys.argv[1]) == i.get('id'):
            name = i.get('name')
    count_finished = 0
    count_unfinished = 0
    for i in id_list:
        if i.get('completed'):
            count_finished += 1
        else:
            count_unfinished += 1
    print("Employee {} is done with tasks({}/{}):".format(name, count_finished,
                                                          count_finished +
                                                          count_unfinished))
    for i in id_list:
        if i.get('completed'):
            print("\t {}".format(i.get('title')))
