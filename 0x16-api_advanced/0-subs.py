#!/usr/bin/python3
def number_of_subscribers(subreddit):
    """returns the number of subscribers"""
    import requests
    url = requests.get(
        "https://www.reddit.com/r/{}/about.json".format(subreddit),
        headers={"User-Agent": "My-User-Agent"},
        allow_redirects=False
    )
    if url.status_code >= 300:
        return 0
    return url.json().get("data").get("subscribers")
