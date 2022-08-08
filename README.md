# NCAA-SQL-Exercise
It is more important to hit free throws or 3-pointers to win NCAA basketball games?  

In this SQL exercise, we will explore NCAA games between 2013 and 2018 to statistically determine if hitting free throws or 3-pointers is more important in winning NCAA basketball games.  

## The NCAA has taken both sides of this argument
In October 2018, the NCAA published the article titled, [The 3-pointer really does help you win NCAA games](https://www.ncaa.com/news/basketball-men/article/2018-10-30/36-million-shots-dont-lie-3-pointer-really-does-help-you-win). Then 2 months later (December 2018), the NCAA published, [Why the free throw is the most important shot in college basketball](https://www.ncaa.com/news/basketball-men/article/2018-12-12/why-free-throw-most-important-shot-college-basketball). 

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

## Prerequisites
1. Sign-in or Sign-up for a Google Cloud account.  
Since we're using Google Cloud's Big Query, you'll need to sign up for a Google Cloud account. If you don't already have a Google Cloud account, go to [Big Query](https://cloud.google.com/bigquery), and click "Try Big Query free."

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/1-bigquery.png" width="500">

2. Select your project, or create a new project in Google Cloud.

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/2-project.png" width="500">

3. Enter and Select "bigquery" in the search console. 
<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/3-searchquery.png" width="500">

## Free Throw SQL Query
4. Once you enter the BigQuery product, you should default to SQL workplace and a default Editor should appear.
5. Copy and paste the SQL code [bestfreethrowpercentages.sql](https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/bestfreethrowpercentages.sql) into the Editor
<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/4-editor1.png" width="600">

### Free Throw SQL Code Review
Taking a quick look at the code, you'll notice:
* We created columns to view the following:
   * Free Throws Attempted
   * Free Throws Made
   * Free Throws Percent
   * Did the team win?
* We filtered out for opposing teams that also made 100% of their free throws (unlikely, but we wanted to remove anomalies). 
* We filtered out all games where the team had less than 10 free throw attempts.
* We sorted by highest percent of free throws made.
* The table only shows the top 500 games of the highest free throw percentage.

6. Click "Run" 
You'll see a table of results appear at the bottom of the screen. Now let's take a look at the data, you should see the first 50 rows of data, games with the highest percent free throws.

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/5-results1.png" width="700">

You might notice that the first 50 rows have 100% free throw percentage made. Wow that's pretty good! But then look at the "win" column and you'll find that they didn't automatically win the games.

7. Let's export the data to take a closer look. I chose .CSV, but you're welcome to choose the method that is most comfortable for you.

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/6-saveresults.png" width="400">

8. Let's count how many games of the 500 highest free throws made percentage were won. I used the COUNTIF function (you can use any method you'd like). I counted 306 games or 61% of games were won where the team had the highest percent of free throws.

**Next, let's repeat the process for 3-pointers.**

## 3-pointer SQL Query
9. In the Editor, Select all SQL code and replace with the [bestthreepointerspercentages.sql](https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/bestthreepointerpercentages.sql) SQL code.

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/7-threesql.png" width="600">

### 3-Pointer SQL Code Review
Taking a quick look at the code, you'll notice:
* We created columns to view the following:
   * 3-Pointers Attempted
   * 3-Pointers Made
   * 3-Pointers Made Percent
   * Did the team win?
* We filtered out all games where the team had less than five 3-pointer attempts
* We sorted by highest percent of 3-pointers made
* The table only shows the top 500 games of the highest 3-pointers made percentage

10. Click "Run" 
You'll see a table of results appear at the bottom of the screen. Now let's take a look at the data, you should see the first 50 rows of data, games with the highest percent 3-pointers

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/8-results-three.png" width="700">

11. Let's export the data to take a closer look. I chose .CSV(local file), but you're welcome to choose the method that works best for you.
12. Let's count how many games of the 500 highest 3-pointers made percentage were won.

I used the COUNTIF function (you can use any method you'd like). I counted 440 of 500 games or 88% of games were won where the team had the highest percentage of successful 3-pointers.

## Conclusion
**Free Throws or 3-pointers?**

* Teams with the highest percent of **free throws** in the top 500 games, **won 61%** of the time.
* Teams with the highest percent of successful **3-pointers** in the top 500 games, **won 88%** of the time.

Therefore, teams who make a higher percentage of making **3-pointers are more likely to win** than a team that makes all of their free throws. 

In reality, this issue is significantly more complext than statistically analyzing free throws vs. 3-pointers. For example, a team in the lead will get a lot more free throw attempts as the losing team will foul to get possession of the ball.

## What's my connection?

From 2017-2019, I attended 34 out of 39 Georgia Tech Men's Basketball home games and [learned a lot about losing](https://www.linkedin.com/pulse/3-things-i-learned-from-watching-georgia-tech-basketball-dunn/). 

<img src="https://github.com/carolinedunn/NCAA-SQL-Exercise/blob/main/images/9-loyaltymatters.png" width="600">

Since then I started attending Georgia Tech Women's Basketball games and watched their jouney to the [NCAA Sweet Sixteen in 2021](https://ramblinwreck.com/jackets-meet-south-carolina-in-sweet-16-sunday/).

