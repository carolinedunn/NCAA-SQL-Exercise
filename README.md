# NCAA-SQL-Exercise
It is more important to hit free throws or 3-pointers to win NCAA basketball games?  

In this SQL exercise, we will explore NCAA games between 2013 and 2018 to statistically determine if hitting free throws or 3-pointers is more important in winning NCAA basketball games.  

We will use [Google Cloud's Big Query product](https://cloud.google.com/bigquery) and their [NCAA Basketball dataset](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=ncaa_basketball&page=dataset) to quickly evaluate thousands of basketball game stats and come to an educated conclusion.  

## Methodology
We'll review wins and losses highest percentage of 3-point scoring games vs. highest percentage of made free throws in NCAA games. When we first pulled the data, there were a few games where only two free throws or one 3-pointer was attempted.  

### Minimum Thresholds
* At least ten free throws attempted by the team in a game
* At least five 3-pointers attempted by the team in a game

## Pre-Requisites
Since we're using Google Cloud's Big Query, you'll need to sign up for a Google Cloud account. If you don't already have a Google Cloud account, go to [Big Query](https://cloud.google.com/bigquery), and click "Try Big Query free"

![BigQuery screenshot]()
