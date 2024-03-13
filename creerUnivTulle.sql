drop database if exists univTulle ; 
create database univTulle ; 

use univTulle ; 

create table Etudiant(
	ine varchar(25) not null ,
	nom varchar(25) not null ,
	prenom varchar(25) not null ,
	primary key(ine)
);

create table Module(
	idModule int not null,
	libelle varchar(25) not null,
	primary key(idModule)
);

create table Evaluation(
	numEval int not null,
	dateEval varchar(25) not null,
	duree varchar(20) not null,
	idModule int,
	primary key(numEval),
	foreign key(idModule) references Module(idModule)
);

create table Suivre(
	ine varchar(20),
	idModule int,
	primary key(ine, idModule),
	foreign key(ine) references Etudiant(ine),
	foreign key(idModule) references Module(idModule)
);

create table Passer(
	ine varchar(20),
	numEval int, 
	note int not null,
	primary key(ine, numEval), 
	foreign key(ine) references Etudiant(ine),
	foreign key(numEval) references Evaluation(numEval)
);
