#Healthy Aging API Documentation

#URL:
https://healthyaging-dev.elasticbeanstalk.com

##User

###Register

```POST ‘/auth’```
######Required Params:

* ```email```
* ```password```

__Example Success:__

```
{
  "status": "success",
  "data": {
    "id": 5,
    "provider": "email",
    "uid": "slickrick@theruler.com",
    "name": null,
    "nickname": null,
    "image": null,
    "email": "slickrick@theruler.com",
    "created_at": "2015-10-15T23:14:38.335Z",
    "updated_at": "2015-10-15T23:14:38.427Z",
    "total_correct_flanker_guesses": 0,
    "total_incorrect_flanker_guesses": 0,
    "flanker_games_played": 0
  }
}
```
Status Code: :ok

After a user registers he will need to pass the following parameters in the header of every subsequent request.  These will be provided in the response headers.

* access-token: ```string``` (ex. cUmnxi-0LYWyfPuD6CrMYQ)
* client: ```string``` (ex. HavPTZL6KZIYu3eZqwwbLw)
* uid: ```string``` (user's email address)
* token ```Bearer``` (token is always 'Bearer')
* expiry: ```string``` (ex. 7492950878)

###Index All Users

```GET ‘/users’```

__Example Success:__

```
{
  "users": [
    {
      "id": 1,
      "uid": "slickrick@theruler.com",
      "total_correct_flanker_guesses": 34,
      "total_incorrect_flanker_guesses": 3,
      "flanker_games_played": 6
    },
    {
      "id": 2,
      "uid": "thenotorious@big.com",
      "total_correct_flanker_guesses": 712,
      "total_incorrect_flanker_guesses": 1,
      "flanker_games_played": 13
    },
    {
      "id": 3,
      "uid": "A-F-R-O@kid.com",
      "total_correct_flanker_guesses": 23420,
      "total_incorrect_flanker_guesses": 0,
      "flanker_games_played": 1641
    }
  ]
}
```
###Index Flanker Games Per User
```GET ‘/users/:id/flankers’```


__Example Success:__

```
{
  "flankers": [
    {
      "id": 1,
      "correct_guesses": 27,
      "incorrect_guesses": 4,
      "user_id": 2
    },
    {
      "id": 2,
      "correct_guesses": 144,
      "incorrect_guesses": 3,
      "user_id": 2
    },
    {
      "id": 3,
      "correct_guesses": 66,
      "incorrect_guesses": 9,
      "user_id": 2
    }
  ]
}
```

###Show User
```GET '/user/:id'```

__Example Success:__

```

{
  "user": {
    "id": 1,
      "uid": "slickrick@theruler.com",
      "total_correct_flanker_guesses": 34,
      "total_incorrect_flanker_guesses": 3,
      "flanker_games_played": 6
  }
}
```

##Flanker
```POST '/flankers'```

######Required Params:

* ```correct_guesses```
* ```incorrect_guesses```

__Example Success:__

```
{
  "flanker": {
    "id": 8,
    "correct_guesses": 30,
    "incorrect_guesses": 5,
    "user_id": 3
  }
}
```

###Index All Flanker Games
```GET '/flankers'```

```
{
  "flankers": [
    {
      "id": 1,
      "correct_guesses": 15,
      "incorrect_guesses": 2,
      "user_id": 1
    },
    {
      "id": 2,
      "correct_guesses": 201,
      "incorrect_guesses": 35,
      "user_id": 2
    },
    {
      "id": 3,
      "correct_guesses": 105,
      "incorrect_guesses": 0,
      "user_id": 3
    },
    {
      "id": 4,
      "correct_guesses": 88,
      "incorrect_guesses": 21,
      "user_id": 3
    }
  ]
}
```
