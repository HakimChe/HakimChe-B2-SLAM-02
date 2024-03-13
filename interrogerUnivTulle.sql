use univTulle ; 

select Etudiant.nom, Module.libelle from Suivre inner join Etudiant on Suivre.ine = Etudiant.ine inner join Module on Suivre.idModule = Module.idModule
where Etudiant.nom like "SINK" ;

select Etudiant.nom, Module.libelle from Suivre inner join Etudiant on Suivre.ine = Etudiant.ine inner join Module on Suivre.idModule = Module.idModule
 where Etudiant.nom not like "SINK" ;

select *, count(idModule) from Suivre group by idModule ;

select numEval, avg(note) from Passer where numEval = 1 ;

select Etudiant.nom, avg(note) from Passer inner join Etudiant on Passer.ine = Etudiant.ine where Etudiant.nom like "SINK" ;

select Etudiant.nom, avg(note) from Passer inner join Etudiant on Passer.ine = Etudiant.ine group by Etudiant.nom ;


