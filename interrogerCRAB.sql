use crab ;

select code, etat, adresseRue from Bornes inner join Station on Bornes.idStation = Station.idStation where Bornes.etat like 'HS';

select code, Station.idStation from Bornes inner join Station on Bornes.idStation = Station.idStation where Station.idStation = 2 ;

select nomTech, prenomTech from Technicien order by nomTech, prenomTech ;

select idInterv, Bornes.code, Technicien.nomTech, Technicien.prenomTech from Interventions inner join Technicien on Interventions.idTech = Technicien.idTech
inner join Bornes on Bornes.idBorne = Interventions.idBorne where Interventions.idBorne = 1 ;

select idInterv, Bornes.code, Technicien.nomTech, Technicien.prenomTech from Interventions inner join Technicien on Interventions.idTech = Technicien.idTech
inner join Bornes on Bornes.idBorne = Interventions.idBorne where Interventions.idBorne != 1 ;

select * from Interventions where dateHeureFin is NULL ;

select * from Interventions where timediff(DateHeureDebut, dateHeureFin) < '-03:00:00.000000' ;

select *, count(idBorne) from Interventions group by idBorne ;

select *, count(idBorne) from Interventions group by idBorne having count(idBorne) > 2 ;
