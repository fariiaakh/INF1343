USE dbhockey;

/*Query no 1: Which 3 teams have the most points during 2018-2019 season*/
SELECT team_name FROM team_standing 
WHERE team_standing.season_year='2018-2019' 
ORDER BY team_standing.points DESC LIMIT 3;

/*?Query no 2  how many goals did [team] score at home this season versus away?*/

WITH 
total_home AS 
(SELECT sum(matches.home_score) AS total_home, home_team AS team
FROM matches WHERE matches.home_team ='Toronto Maple Leafs' AND matches.season_year='2017-18'),

total_visiting AS

(SELECT sum(matches.visiting_score) AS total_visiting 
FROM matches WHERE matches.visiting_team='Toronto Maple Leafs' AND matches.season_year='2017-18')
SELECT team, total_home, total_visiting FROM total_home INNER JOIN total_visiting;

/*Query no 3 Who are the goalies with the highest save percentages?*/
SELECT player_name FROM goalie_stats ORDER BY goalie_stats.save_percentage DESC;

/*?Query no 4* oldest player on each team for the 2017-2018 season*/
#SELECT* FROM 


SELECT NAME, Team, Age FROM (SELECT roster.player_name AS Name, roster.team_name AS Team, hockey_person.age AS Age
FROM roster INNER JOIN hockey_person ON roster.hp_id=hockey_person.hp_id WHERE roster.season_year="2017-18"
ORDER BY hockey_person.age DESC)
GROUP BY roster.team_name;



/*?Query no 4 oldest player on each team for the 2017-2018 season*/

/*Select *
FROM ordta WHERE ordta.team="Boston Bruins" 
AND ordta.age>=ALL
(SELECT max(O2.age) FROM ordta O2 WHERE O2.team="Boston Bruins") UNION 
Select *
FROM ordta WHERE ordta.team="Detroit Red Wings" 
AND ordta.age>=ALL
(SELECT max(O2.age) FROM ordta O2 WHERE O2.team="Detroit Red Wings"); /*

SELECT  ordta1.*
FROM    ordta ordta1
        INNER JOIN
        (
            SELECT  Team, MAX(Age) max_age
            FROM    ordta
            GROUP BY Team
        ) ordta2  ON ordta1.Team = ordta2.Team AND
                ordta1.Age = ordta2.max_age;

/*Select distinct count(team_name) from team;

SELECT roster.player_name AS Name, roster.team_name AS Team, hockey_person.age AS Age
FROM roster INNER JOIN hockey_person ON roster.hp_id=hockey_person.hp_id WHERE roster.season_year="2017-18"
ORDER BY Team,Age DESC; 
*/

/*Query no 5 when were all the Maple Leaf home games during the 2018-2019 season?*/
SELECT match_date FROM matches WHERE matches.home_team LIKE "%Maple Leafs";

/*Query no 6 what are the names and teams of all defensemen*/
SELECT DISTINCT player_stats.player_name, player_stats.team_name FROM player_stats
Inner Join player ON player_stats.hp_id=player.hp_id
WHERE player.player_position LIKE '%defence';

/*Query no 7 what are the names of everyone affiliated with the chicago blackhawks during the 2017-2018 season*/
SELECT player_name AS team_roster FROM roster WHERE roster.team_name='Chicago Blackhawks' AND roster.season_year="2017-18"
UNION SELECT staff_name FROM works_for 
WHERE works_for.team_name= 'Chicago Blackhawks';

/*Query no 8 Who won the vezina trophy the last 2 years*/
SELECT winner_name FROM award WHERE award_name LIKE "%vezina trophy" ORDER BY season_year DESC LIMIT 2;

/*Query no 9  Who are the headcoaches for all the eastern conference teams?*/
SELECT DISTINCT staff_name FROM works_for Inner Join Team 
WHERE works_for.team_name=team.team_name AND conference='Eastern' AND title='head coach';

/*Query no 10 what teams has [player_name] been associated with*/
SELECT DISTINCT team_name FROM roster WHERE roster.player_name like "%david kampf";
