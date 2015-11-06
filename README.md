#Healthy Aging API Documentation

This documentation will give you the various end points necessary to build a
comprehensive, cross-platform application for the Healthy Aging Study.  The
Application will consist of a series of games: flanker, digit symbol, (x, y, z)  that will collect various performance data.  There will also be a host of patient data collected via survey forms.

##URL:
`http://healthyaging-env.elasticbeanstalk.com`

##User

###Register

```POST ‘/auth’```
######Required Body Params:

* ```email``` - ```string```
* ```password``` - ```string```

__Example Success:__

```
{
  "status": "success",
  "data": {
    "id": 3,
    "provider": "email",
    "uid": "slickrick@theruler.com",
    "name": null,
    "nickname": null,
    "image": null,
    "email": "slickrick@theruler.com",
    "created_at": "2015-11-06T16:00:37.736Z",
    "updated_at": "2015-11-06T16:00:37.853Z",
    "total_correct_flanker_guesses": 0,
    "total_incorrect_flanker_guesses": 0,
    "flanker_games_played": 0,
    "total_correct_digit_symbol_guesses": 0,
    "total_incorrect_digit_symbol_guesses": 0,
    "digit_symbol_games_played": 0,
    "total_memory_impairment_points": 0,
    "memory_impairment_games_played": 0,
    "transgender?": null,
    "race": null,
    "hispanic_or_latino?": null,
    "education_level": null,
    "married?": null,
    "employed?": null,
    "headcount_in_household": null,
    "total_pretax_household_income": null,
    "height": null,
    "weight": null,
    "writing_hand": null,
    "gender": null,
    "emory_patient?": null,
    "biological_mother_known?": null,
    "biological_father_known?": null,
    "has_biological_siblings?": null
  }
}
```
Status Code: :ok


After a user registers he will need to pass the following parameters in the header of every subsequent request.  These will be provided in the headers of the response at ```'/auth'```.

* access-token: ```string``` (ex. cUmnxi-0LYWyfPuD6CrMYQ)
* client: ```string``` (ex. HavPTZL6KZIYu3eZqwwbLw)
* uid: ```string``` (user's email address)
* token ```Bearer``` (token is always 'Bearer')
* expiry: ```string``` (ex. 7492950878)

###Update User Survey Data
```PUT '/user/:id/survey'```

This endpoint should be called only after a user has been registered at *```POST '/auth'```*.

A few important things to note: 

* A FamilyQuestion table can only be created for a user if he indicates ***true*** on at least one of following three attributes on the User table:

	* ```biological_mother_known?```
	* ```biological_father_known?```
	* ```has_biological_siblings?```

	An example of this output can be seen below.  If the user does not indicate ***true*** on any of those fields it will not create a new FamilyQuestion record. All remaining Models will be applicable to every user, and they should have only one associated with their ID.
	
* Next point here?

###Index Family Questions
```GET '/family_questions'```

```
{
  "family_questions": [
    {
      "id": 1,
      "user_id": 1,
      "relation": mother,
      "birthyear": 1948,
      "still_living": yes,
      "diagnosed_with_MCI": null,
      "diagnosed_with_AD": null,
      "diagnosed_with_memory_loss_or_dementia": null,
      "diagnosed_with_Parkinsons": null,
      "ever_had_coronary_heart_disease_or_heart_attack": null,
      "diagnosed_with_diabetes": null,
      "diagnosed_with_hypertension": null,
      "diagnosed_with_high_cholesterol_or_triglycerides": null,
      "diagnosed_with_stroke_or_TIA": null
    },
    {
      "id": 2,
      "user_id": 2,
      "relation": brother,
      "birthyear": 1986,
      "still_living": yes,
      "diagnosed_with_MCI": null,
      "diagnosed_with_AD": null,
      "diagnosed_with_memory_loss_or_dementia": null,
      "diagnosed_with_Parkinsons": null,
      "ever_had_coronary_heart_disease_or_heart_attack": null,
      "diagnosed_with_diabetes": null,
      "diagnosed_with_hypertension": null,
      "diagnosed_with_high_cholesterol_or_triglycerides": null,
      "diagnosed_with_stroke_or_TIA": null
    }
  ]
}
```

###Index All Users

```GET ‘/users’```

__Example Success:__

```
{
  "user": [
    {
      "id": 1,
      "uid": "email@user1.com",
      "total_correct_flanker_guesses": 25,
      "total_incorrect_flanker_guesses": 1,
      "flanker_games_played": 7,
      "total_correct_digit_symbol_guesses": 123,
      "total_incorrect_digit_symbol_guesses": 7,
      "digit_symbol_games_played": 9,
      "total_memory_impairment_points": 24,
      "memory_impairment_games_played": 3,
      "transgender": null,
      "race": null,
      "hispanic_or_latino": null,
      "education_level": null,
      "married": null,
      "employed": null,
      "headcount_in_household": null,
      "total_pretax_household_income": null,
      "height": null,
      "weight": null,
      "writing_hand": null,
      "gender": null,
      "emory_patient": null,
      "biological_mother_known": null,
      "biological_father_known": null,
      "has_biological_siblings": null
    },
    {
      "id": 2,
      "uid": "email@user2.com",
      "total_correct_flanker_guesses": 62,
      "total_incorrect_flanker_guesses": 4,
      "flanker_games_played": 2,
      "total_correct_digit_symbol_guesses": 81,
      "total_incorrect_digit_symbol_guesses": 16,
      "digit_symbol_games_played": 3,
      "total_memory_impairment_points": 12,
      "memory_impairment_games_played": 2,
      "transgender": null,
      "race": "white",
      "hispanic_or_latino": null,
      "education_level": null,
      "married": null,
      "employed": null,
      "headcount_in_household": null,
      "total_pretax_household_income": null,
      "height": null,
      "weight": 122,
      "writing_hand": null,
      "gender": null,
      "emory_patient": null,
      "biological_mother_known": null,
      "biological_father_known": true,
      "has_biological_siblings": true
    }
  ]
}
```
###Index Flanker Games For User
```GET ‘/user/:id/flankers’```

The first clicktime records the time it took the user to record his first answer after pressing start.  The rest record the time between each click in milliseconds.


__Example Success:__

```
{
  "user": [
    {
      "id": 1,
      "correct_guesses": 27,
      "incorrect_guesses": 4,
      "user_id": 2,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 2,
      "correct_guesses": 144,
      "incorrect_guesses": 3,
      "user_id": 2,
      "clicktimes": "1343, 1734, 1888, 1001"
    },
    {
      "id": 3,
      "correct_guesses": 66,
      "incorrect_guesses": 9,
      "user_id": 2,
      "clicktimes": "1245, 1100, 988, 682"

    }
  ]
}
```
###Index Digit Symbol Games For User
```GET ‘/user/:id/digit_symbols’```


__Example Success:__

```
{
  "user": [
    {
      "id": 1,
      "correct_guesses": 17,
      "incorrect_guesses": 9,
      "user_id": 2,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 2,
      "correct_guesses": 93,
      "incorrect_guesses": 15,
      "user_id": 2,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 3,
      "correct_guesses": 44,
      "incorrect_guesses": 21,
      "user_id": 3,
      "clicktimes": "1445, 1400, 1299, 1001"
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
    "id": 5,
    "uid": "user5@loser.com",
    "total_correct_flanker_guesses": 0,
    "total_incorrect_flanker_guesses": 0,
    "flanker_games_played": 0,
    "total_correct_digit_symbol_guesses": 0,
    "total_incorrect_digit_symbol_guesses": 0,
    "digit_symbol_games_played": 0,
    "total_memory_impairment_points": 0,
    "memory_impairment_games_played": 0,
    "transgender": null,
    "race": "white",
    "hispanic_or_latino": null,
    "education_level": null,
    "married": null,
    "employed": null,
    "headcount_in_household": null,
    "total_pretax_household_income": null,
    "height": null,
    "weight": 184,
    "writing_hand": null,
    "gender": null,
    "emory_patient": null,
    "biological_mother_known": false,
    "biological_father_known": true,
    "has_biological_siblings": true
  }
}
```

##Flanker
###Create Flanker
```POST '/flankers'```

######Required Params:

* ```correct_guesses``` - ```integer```
* ```incorrect_guesses``` - ```integer```
* ```clicktimes``` - ```integer```

######*Clicktimes should be passed as an array of integers in Unix timestamp milliseconds.* 

__Example Success:__

```
{
  "flanker": {
    "id": 8,
    "correct_guesses": 30,
    "incorrect_guesses": 5,
    "user_id": 3,
    "clicktimes": "1445, 1400, 1299, 1001, 741, 902"
  }
}
```

###Index All Flanker Games
```GET '/flankers'```

__Example Success:__

```
{
  "flankers": [
    {
      "id": 1,
      "correct_guesses": 15,
      "incorrect_guesses": 2,
      "user_id": 1,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 2,
      "correct_guesses": 201,
      "incorrect_guesses": 35,
      "user_id": 2,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 3,
      "correct_guesses": 105,
      "incorrect_guesses": 0,
      "user_id": 3,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 4,
      "correct_guesses": 88,
      "incorrect_guesses": 21,
      "user_id": 3,
      "clicktimes": "1445, 1400, 1299, 1001"
    }
  ]
}
```
###Show Flanker
```GET '/flankers/:id'```

__Example Success:__

```
{
  "flanker": {
    "id": 1,
    "correct_guesses": 50,
    "incorrect_guesses": 5,
    "user_id": 2,
    "clicktimes": "1445, 1400, 1299, 1001"
  }
}
```


##Digit Symbol
###Create Digit Symbol
```POST '/digit_symbols'```

######Required Params:

* ```correct_guesses```
* ```incorrect_guesses```
* ```clicktimes```

__Example Success:__

```
{
  "digit_symbol": {
    "id": 2,
    "correct_guesses": 10,
    "incorrect_guesses": 1,
    "user_id": 4
    "clicktimes": "1445, 1400, 1299, 1001"
  }
}
```

###Index All Digit Symbol Games
```GET '/digit_symbols'```

__Example Success:__

```
{
  "digit_symbols": [
    {
      "id": 1,
      "correct_guesses": 10,
      "incorrect_guesses": 0,
      "user_id": 1,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 2,
      "correct_guesses": 88,
      "incorrect_guesses": 22,
      "user_id": 2,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 3,
      "correct_guesses": 77,
      "incorrect_guesses": 31,
      "user_id": 3,
      "clicktimes": "1445, 1400, 1299, 1001"
    },
    {
      "id": 4,
      "correct_guesses": 100,
      "incorrect_guesses": 5,
      "user_id": 3,
      "clicktimes": "1445, 1400, 1299, 1001"
    }
  ]
}
```

### Show Digit Symbol

```GET '/digit_symbols/:id'```

__Example Success:__

```
{
  "digit_symbol": {
    "id": 12,
    "correct_guesses": 38,
    "incorrect_guesses": 13,
    "user_id": 4,
    "clicktimes": "1445, 1400, 1299, 1001"
  }
}
```
