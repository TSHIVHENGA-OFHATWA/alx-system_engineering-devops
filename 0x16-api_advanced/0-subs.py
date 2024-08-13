#!/usr/bin/python3
""" queries the Reddit API and returns the number of subscribers."""

import requests


def number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit.

    Argurments : subreddit (str): The name of the subreddit.

    Returns:
    integer: The number of subscribers, or 0 if the subreddit is invalid.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    headers = {'User-Agent': 'Mozilla/10.0/API'}

    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        return data['data']['subscribers']
    else:
        return 0