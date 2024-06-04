#!/usr/bin/python3
"""How many subs?"""


def top_ten(subreddit):
    """returns the number of subscribers"""
    import requests
    url = requests.get(
        "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit),
        headers={"User-Agent": "My-User-Agent"},
        allow_redirects=False
    )
    if url.status_code == 200:
        [print(child.get("data").get("title"))
        for child in url.json().get("data").get("children")]
    print('None')
