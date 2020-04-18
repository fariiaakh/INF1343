USE dbhockey;
/*Query no 1*/
SELECT team_name FROM team_standing 
WHERE team_standing.season_year='2017-2018' 
ORDER BY team_standing.points DESC LIMIT 3;


/*Query no 2 */
SELECT sum(home_score) AS total_home, sum(visiting_score) AS total_visiting 
FROM matches WHERE matches.home_team='Boston Bruins' AND matches.visiting_team="Boston Bruins";



/*Query no 3*/
SELECT player_name FROM goalie_statistics ORDER BY goalie_statistics.save_percentage DESC;


/*Query no 4* oldest player on each team this season*/

SELECT MAX(Age), player_name, team_name from hockey_roster
((SELECT hockey_person.person_name, CURDATE()-hockey_person.birthday as Age 
FROM hockey_person INNER JOIN roster ON hp_id as hockey_roster)(SELECT roster.season_year="2018-2019"));
 
/*Query no 5*/
SELECT match_date FROM matches WHERE matches.home_team="Maple Leafs";
/*Query no 6*/
SELECT player_name FROM Player_Statistics 
Inner Join Skater Statistics ON hp_id
WHERE skater_statistics.skater_position='defense';
/*Query no 7*/
SELECT player_name,staff_name FROM roster Inner Join works_for 
WHERE roster.team_name='team_name' AND works_for.team_name= 'teamname';
/*Query no 8*/
SELECT player_name FROM hockey_person INNER JOIN award on hp_id ORDER BY season_year DESC limit 5 ;
/*Query no 9*/
SELECT staff_name FROM works_for Inner Join Team 
WHERE works_for.team_name=team.team_name AND conference='Eastern' AND title='head coach';
/*Query no 10*/
SELECT team_name FROM roster WHERE roster.player_name="player_name" ;