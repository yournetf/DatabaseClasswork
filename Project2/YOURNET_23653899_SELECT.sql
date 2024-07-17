
SELECT p.*
FROM players p, teams t, conferences c
WHERE p.Team = t.Name
AND t.Name  = c.`2nd_Place`;

SELECT * FROM head_coaches hc 
WHERE Name NOT LIKE "M%";

SELECT COUNT(Date_Played)
FROM player_played_in_game ppig
GROUP BY Home_Team;

SELECT t.name, t.Points_Per_Game , s.Name, s.Per_Game_Attendance  
FROM stadiums s inner join teams t 
on s.Name = t.Stadium ;

SELECT MAX(Championships) AS GOAT
FROM head_coaches hc;

SELECT AVG(Per_Game_Attendance)
FROM stadiums s;

SELECT MIN(Wins)
FROM general_managers gm 
WHERE gm.Championships  IN (1, 2);

SELECT COUNT(*)
FROM stadiums s 
WHERE Capacity > 20000;

SELECT ppig.Home_Team, COUNT(ppig.Date_Played) AS Games_Played
FROM player_played_in_game ppig
GROUP BY ppig.Home_Team
HAVING COUNT(ppig.Date_Played) > 50; 


SELECT Name, Points_Per_Game 
FROM players p
WHERE Points_Per_Game > 24
ORDER BY Points_Per_Game DESC;

SELECT hc.Name, hc.Career_Record, t.Name
FROM head_coaches hc, teams t, conferences c
WHERE hc.Total_Wins BETWEEN 800 AND 2000
AND t.Name = c.`1st_Place`;


SELECT p.Name, p.Points_Per_Game, t.Name
FROM players p, teams t, stadiums s
WHERE p.Points_Per_Game > 30
AND t.Stadium = s.Name;

SELECT p.Name, p.Points_Per_Game, t.Name
FROM players p, teams t, head_coaches hc
WHERE p.Team = t.Name
AND t.Coach  = hc.Name;

SELECT DISTINCT p.Name, p.Points_Per_Game, t.Name
FROM players p, teams t, head_coaches hc
WHERE p.Team = t.Name
AND EXISTS (
    SELECT 1
    FROM head_coaches hc
    WHERE t.Coach = hc.Name
    AND hc.Name LIKE 'M%'
);
