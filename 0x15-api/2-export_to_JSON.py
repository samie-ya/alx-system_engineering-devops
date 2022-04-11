#!/usr/bin/python3
"""This script will extract information and save it in json file"""
import json
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
    list_of_dict = []
    dictionary = {}
    for i in id_list:
        i['task'] = i['title']
        del i['title']
        del i['id']
        i['username'] = i['userId']
        del i['userId']
        i['username'] = user_name
    file_name = sys.argv[1] + ".json"
    with open(file_name, "w", encoding='utf-8') as f:
        dic = {}
        dic[sys.argv[1]] = id_list
        f.write(json.dumps(dic))
