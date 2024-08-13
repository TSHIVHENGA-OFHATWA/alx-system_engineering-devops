#!/usr/bin/python3
"""queries the Reddit API and returns the number of subscribers."""


import requests


def number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit."""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    headers = {"User-Agent": "Mozilla/5.0"}

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json()
        the_subs = data['data']['subscribers']
        return the_subs
    else:
        return 0
