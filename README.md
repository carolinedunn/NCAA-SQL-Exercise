# NCAA-SQL-Exercise
It is more important to hit free throws or 3-pointers to win NCAA basketball games?  

In this SQL exercise, we will explore NCAA games between 2013 and 2018 to statistically determine if hitting free throws or 3-pointers is more important in winning NCAA basketball games.  

## The NCAA has taken both sides of this argument
In October 2018, the NCAA published the article titled, [The 3-pointer really des help you win NCAA games](https://www.ncaa.com/news/basketball-men/article/2018-10-30/36-million-shots-dont-lie-3-pointer-really-does-help-you-win). Then 2 months later (December 2018), the NCAA published, [Why the free throw is the most important shot in college basketball](https://www.ncaa.com/news/basketball-men/article/2018-12-12/why-free-throw-most-important-shot-college-basketball). 

We will use [Google Cloud's Big Query product](https://cloud.google.com/bigquery) and their [NCAA Basketball dataset](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=ncaa_basketball&page=dataset) to quickly evaluate thousands of basketball game stats and come to an analytical conclusion.  

## Methodology
We'll review wins and losses highest percentage of 3-point scoring games vs. highest percentage of made free throws in NCAA games. When we first pulled the data, there were a few games where only two free throws or one 3-pointer was attempted.  

### Number of Games
We'll evaluate the top percentages in 500 game
* Top 500 games of percent successful free throws
* Top 500 games of percent successful 3-pointers

### Minimum Thresholds
* At least ten free throws attempted by the team in a game
* At least five 3-pointers attempted by the team in a game

## Pre-Requisites
1. Sign-in or Sign-up for a Google Cloud account.  
Since we're using Google Cloud's Big Query, you'll need to sign up for a Google Cloud account. If you don't already have a Google Cloud account, go to [Big Query](https://cloud.google.com/bigquery), and click "Try Big Query free"

![BigQuery screenshot]()

2. Select your project, or create a new project in Google Cloud
![Project screenshot]()

3. Enter and Select "bigquery" in the search console 
![Project screenshot]()

## Enter and Run your Free Throw query
4. Once you enter the BigQuery product, you should default to SQL workplace and a default Editor should appear.
5. Copy and paste the SQL code [bestfreethrowpercentages.sql]() into the Editor
![Editorscreenshot]
6. Click "Run" 
You'll see a table of results appear at the bottom of the screen.
![resultsscreenshot]
