#!/usr/bin/python3
"""This script will find the top 10 posts for a given subreddit"""
import requests


def top_ten(subreddit):
    """This function will give the top ten posts"""
    url = 'https://www.reddit.com/r/' + subreddit + '/hot.json?limit=10'
    headers = {"User-Agent": 'Samra'}
    response = requests.get(url, headers=headers)
    json_response = response.json()
    try:
        children = json_response['data']['children']
        for post in children:
            print(post['data']['title'])
    except Exception as e:
        print(None)
