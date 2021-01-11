insert into `sql_assignment` (`Column_1`) 
  values ('create database worldCup') ;
insert into `sql_assignment` (`Column_1`) 
  values ('use worldCup') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* creation of tables*/') ;
insert into `sql_assignment` (`Column_1`) 
  values ('create table team(') ;
insert into `sql_assignment` (`Column_1`) 
  values ('name varchar(25),') ;
insert into `sql_assignment` (`Column_1`) 
  values ('matchId int,') ;
insert into `sql_assignment` (`Column_1`) 
  values ('scoreInThisMatch int,') ;
insert into `sql_assignment` (`Column_1`) 
  values ('primary key(name,matchId)') ;
insert into `sql_assignment` (`Column_1`) 
  values (')') ;
insert into `sql_assignment` (`Column_1`) 
  values ('create table player(') ;
insert into `sql_assignment` (`Column_1`) 
  values ('id int primary key,') ;
insert into `sql_assignment` (`Column_1`) 
  values ('name varchar(30),') ;
insert into `sql_assignment` (`Column_1`) 
  values ('type varchar(15),') ;
insert into `sql_assignment` (`Column_1`) 
  values ('teamName varchar(25),') ;
insert into `sql_assignment` (`Column_1`) 
  values ('runsScored int,') ;
insert into `sql_assignment` (`Column_1`) 
  values ('wicketsTaken int,') ;
insert into `sql_assignment` (`Column_1`) 
  values ('foreign key(teamName) references team(name)') ;
insert into `sql_assignment` (`Column_1`) 
  values (')') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* insertion into tables*/') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'India\',1149,342)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'New Zealand\',3491,320)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'South Africa\',1149,200)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'India\',3491,342)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'West Indies\',4321,439)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'India\',4321,32)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'South Africa\',6459,254)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'New Zealand\',6459,260)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'South Africa\',1132,189)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'West Indies\',1132,190)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'New Zealand\',6190,191)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into team values(\'West Indies\',6190,194)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (1,\'Rohit Sharma\',\'batsman\',\'India\',230,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (2,\'Virat kohli\',\'batsman\',\'India\',350,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (3,\'M.S Dhoni\',\'batsman\',\'India\',230,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (4,\'R Ashwin\',\'bowler\',\'India\',0,4)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (5,\'J Bumrah\',\'bowler\',\'India\',0,2)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (6,\'S Malik\',\'batsman\',\'South Africa\',140,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (7,\'S Khan\',\'batsman\',\'South Africa\',250,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (8,\'S Afridi\',\'bowler\',\'South Africa\',0,1)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (9,\'F Zaman\',\'bowler\',\'South Africa\',0,2)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (10,\'B Azam\',\'bowler\',\'South Africa\',0,1)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (11,\'M Wade\',\'batsman\',\'New Zealand\',346,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (12,\'A Finch\',\'batsman\',\'New Zealand\',412,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (13,\'A Cary\',\'bowler\',\'New Zealand\',0,4)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (14,\'P Cummins\',\'bowler\',\'New Zealand\',0,1)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (15,\'C Green\',\'bowler\',\'New Zealand\',0,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (16,\'J Anderson\',\'batsman\',\'West Indies\',318,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (17,\'A Rashid\',\'batsman\',\'West Indies\',298,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (18,\'B Strokes\',\'batsman\',\'West Indies\',421,0)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (19,\'T Curran\',\'bowler\',\'West Indies\',0,5)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('insert into player values (20,\'J Vince\',\'bowler\',\'West Indies\',0,6)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* Query1: Fetch the top 5 batsmen who scored the maximum runs */') ;
insert into `sql_assignment` (`Column_1`) 
  values ('select id,name,teamName,runsScored') ;
insert into `sql_assignment` (`Column_1`) 
  values ('from player') ;
insert into `sql_assignment` (`Column_1`) 
  values ('where type = \'batsman\' ') ;
insert into `sql_assignment` (`Column_1`) 
  values ('order by runsScored') ;
insert into `sql_assignment` (`Column_1`) 
  values ('desc limit 5') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* Query2: Fetch the top 5 bowlers who has taken the maximum wickets */') ;
insert into `sql_assignment` (`Column_1`) 
  values ('select id,name,teamName,wicketsTaken') ;
insert into `sql_assignment` (`Column_1`) 
  values ('from player') ;
insert into `sql_assignment` (`Column_1`) 
  values ('where type = \'bowler\'') ;
insert into `sql_assignment` (`Column_1`) 
  values ('order by wicketsTaken') ;
insert into `sql_assignment` (`Column_1`) 
  values ('desc limit 5') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* Query3:Fetch the average score scored by each team considering the matches played*/') ;
insert into `sql_assignment` (`Column_1`) 
  values ('select name,avg(scoreInThisMatch) ') ;
insert into `sql_assignment` (`Column_1`) 
  values ('from team') ;
insert into `sql_assignment` (`Column_1`) 
  values ('group by name') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* Query4:Increase the scores of each batsmen in the team, which has the least average computed in Step d, by 10 runs.*/') ;
insert into `sql_assignment` (`Column_1`) 
  values ('update player set runsScored = runsScored+10') ;
insert into `sql_assignment` (`Column_1`) 
  values ('where teamName=(select name from team group by name order by avg(scoreInThisMatch) asc limit 1)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('/* Query5:Create a procedure which takes country as the input and gives the highest score of the country up to date  as output*/') ;
insert into `sql_assignment` (`Column_1`) 
  values ('USE `sys`') ;
insert into `sql_assignment` (`Column_1`) 
  values ('DROP procedure IF EXISTS `getHighestEverScoreByCountry`') ;
insert into `sql_assignment` (`Column_1`) 
  values ('DELIMITER $$') ;
insert into `sql_assignment` (`Column_1`) 
  values ('USE `sys`$$') ;
insert into `sql_assignment` (`Column_1`) 
  values ('CREATE PROCEDURE `getHighestEverScoreByCountry` (IN country varchar(25), OUT score int)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('BEGIN') ;
insert into `sql_assignment` (`Column_1`) 
  values ('select max(scoreInThisMatch) into score') ;
insert into `sql_assignment` (`Column_1`) 
  values ('from team') ;
insert into `sql_assignment` (`Column_1`) 
  values ('group by name') ;
insert into `sql_assignment` (`Column_1`) 
  values ('having name = country') ;
insert into `sql_assignment` (`Column_1`) 
  values ('END$$') ;
insert into `sql_assignment` (`Column_1`) 
  values ('DELIMITER ') ;
insert into `sql_assignment` (`Column_1`) 
  values ('set @country = \'India\'') ;
insert into `sql_assignment` (`Column_1`) 
  values ('CALL `worldCup`.`getHighestEverScoreByCountry`(@country, @score)') ;
insert into `sql_assignment` (`Column_1`) 
  values ('select @score') ;
