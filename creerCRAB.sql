drop database if exists crab ;
create database crab ;

use crab ;

create table Technicien(
	idTech int not null,
	nomTech varchar(20) not null,
	prenomTech varchar(20) not null,
	primary key(idTech)
);

create table Station(
	idStation int not null,
	adresseRue varchar(20),
	primary key(idStation)
);

create table Bornes(
	idBorne int not null,
	code varchar(5),
	idStation int,  
	etat varchar(10),
	primary key(idBorne),
	foreign key(idStation) references Station(idStation) 
);

create table Interventions(
	idInterv int not null,
	DateHeureDebut varchar(30),
	dateHeureFin varchar(30),
	idBorne int,
	idTech int,
	primary key(idInterv),
	foreign key(idBorne) references Bornes(idBorne),
	foreign key(idTech) references Technicien(idTech)
);
