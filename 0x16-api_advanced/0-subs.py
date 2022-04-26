#!/usr/bin/python3
"""This script will find the number of prescribers for a given subreddit"""
import requests


def number_of_subscribers(subreddit):
    """This function will give the number of subscribers"""
    url = 'https://www.reddit.com/r/' + subreddit + '/about.json'
    headers = {"User-Agent": 'Samra'}
    response = requests.get(url, headers=headers)
    json_response = response.json()
    try:
        data = json_response['data']
        return data['subscribers']
    except Exception as e:
        return 0
