CREATE table players(
	Player_id SMALLINT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(25) NOT NULL,
	Team VARCHAR (25),
	Coach VARCHAR (25),
	Games_Played SMALLINT,
	Games_Started SMALLINT,
	Minutes_Per_Game FLOAT (3, 1),
	Points_Per_Game FLOAT (3,1),
	Assists_Per_Game FLOAT (3,1),
	Rebounds_Per_Game FLOAT (3,1),
	Steals_Per_Game float (3,1),
	Blocks_Per_Game float (3,1),
	Turnovers_Per_Game float (3,1),
	Fouls_Per_Game float (2,1),
	Assist_To_Turnover_Ratio float (3,1),
	PRIMARY KEY (Player_id)
);

create table teams(
	Name varchar(25) not null,
	Championships smallint,
	Games_Played smallint,
	Wins smallint,
	Losses smallint, 
	Win_Percentage float (3,1),
	Points_Per_Game float (4,1),
	Assists__Per_Game float (3,1),
	Total_Rebounds_Per_Game float (3,1), 
	Offensive_Rebounds_Per_Game float (3,1),
	Defensive_Rebounds_Per_Game float (3,1),
	Blocks_Per_Game float (3,1),
	Steals_Per_Game float (3,1),
	Turnovers_Per_Game float (3,1),
	Fouls_Per_Game float (3,1),
	FG_Made float(3,1),
	FG_Attempted float (3,1),
	FG_Percentage float (3,1),
	3PT_Made float(3,1),
	3PT_Attempted float (3,1),
	3PT_Percentage float (3,1),
	FT_Made float(3,1),
	FT_Attempted float (3,1),
	FT_Percentage float (3,1),
	Coach varchar(25),
	General_Manager varchar(25),
	Stadium varchar(25),
	primary key (Name)
);

create table conferences(
	Name varchar(10),
	Championships smallint,
	1st_Place varchar(25),
	2nd_Place varchar(25), 
	3rd_Place varchar(25),
	4th_Place varchar(25),
	5th_Place varchar(25),
	6th_Place varchar(25),
	7th_Place varchar(25),
	8th_Place varchar(25),
	9th_Place varchar(25),
	10th_Place varchar(25),
	11th_Place varchar(25),
	12th_Place varchar(25),
	13th_Place varchar(25),
	14th_Place varchar(25),
	15th_Place varchar(25),
	primary key(Name)
);

create table stadiums(
	Stadium_id int not null auto_increment,
	Name varchar(25),
	Capacity smallint,
	isOnlyForBasketball boolean, 
	Per_Game_Attendance smallint,
	Average_Ticket_Cost float(5,2),
	Construction_Cost smallint,
	Total_Subsidies smallint,
	primary key (Stadium_id)
);

create table head_coaches(
	Coach_id int not null auto_increment,
	Name varchar(25),
	Championships smallint,
	Total_Games_Coached smallint,
	Total_Wins smallint,
	Total_Losses smallint,
	Career_Record varchar(20),
	Career_Hall_Of_Fame_Players smallint,
	Career_All_Star_Players smallint,
	Total_Years_Coached	smallint,
	primary key (Coach_id)
);

create table general_managers(
	Manager_id int not null auto_increment,
	Name varchar(25),
	Championships smallint,
	Wins smallint,
	Losses smallint,
	Win_Percentage float(4,2),
	Yearly_Salary smallint,
	Years_Under_Contract smallint,
	Years_In_Office smallint,
	Number_Of_All_Stars_Signed smallint, 
	Number_of_Draft_Picks smallint,
	Number_Of_Transactions smallint,
	primary key (Manager_id)
);

create table referees(
	Referee_id smallint not null auto_increment,	
	Name varchar(25),
	Years_Refereed smallint,
	isPlayoffReferee boolean,
	Fouls_Called_Per_Game float(4,2),
	Home_Team_Win_Percentage float(4,2),
	Foul_Percentage_Against_Home_Team float (4,2),
	Points_Per_Game float(4,1),
	Number_Of_Games_Officiated smallint,
	isChief boolean,
	isCrew boolean,
	primary key (Referee_id)
)

create table games(
	Date_Played date,
	Home_Team varchar(25),
	Away_Team varchar(25),
	Winner varchar(25),
	Performance_Leader smallint,
	Scoring_Leader smallint,
	Assist_Leader smallint,
	Rebound_Leader smallint,
	Block_Leader smallint,
	Steal_leader smallint,
	Referee_1 smallint,
	Referee_2 smallint,
	Referee_3 smallint,
	primary key (Date_Played, Time_Played, Home_Team)
);


create table player_played_in_game(
	Player_id smallint,
	Date_Played date,
	Home_Team varchar(25),
	Points smallint,
	Assists smallint,
	Rebounds smallint,
	Blocks smallint,
	Steals smallint,
	FG_Percentage float(4,2),
	3PT_Percentage float(4,2),
	Player_Name varchar(25),
	primary key(Player_id, Date_Played, Home_Team),
);

alter table conferences  
add foreign key(1st_Place) references teams(Name);

alter table conferences  
add foreign key(2nd_Place) references teams(Name);

alter table conferences  
add foreign key(3rd_Place) references teams(Name);

alter table conferences  
add foreign key(4th_Place) references teams(Name);

alter table conferences  
add foreign key(5th_Place) references teams(Name);

alter table conferences  
add foreign key(6th_Place) references teams(Name);

alter table conferences  
add foreign key(7th_Place) references teams(Name);

alter table conferences  
add foreign key(8th_Place) references teams(Name);

alter table conferences  
add foreign key(9th_Place) references teams(Name);

alter table conferences  
add foreign key(10th_Place) references teams(Name);

alter table conferences  
add foreign key(11th_Place) references teams(Name);

alter table conferences  
add foreign key(12th_Place) references teams(Name);

alter table conferences  
add foreign key(13th_Place) references teams(Name);

alter table conferences  
add foreign key(14th_Place) references teams(Name);

alter table conferences  
add foreign key(15th_Place) references teams(Name);

alter table games
add foreign key(Home_Team) references teams(Name);

alter table games
add foreign key(Away_Team) references teams(Name);

alter table games
add foreign key(Winner) references teams(Name);

