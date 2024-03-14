use univTulle ; 

select Etudiant.nom, Module.libelle from Suivre inner join Etudiant on Suivre.ine = Etudiant.ine inner join Module on Suivre.idModule = Module.idModule
where Etudiant.nom like "SINK" ;

select Etudiant.nom, Module.libelle from Suivre inner join Etudiant on Suivre.ine = Etudiant.ine inner join Module on Suivre.idModule = Module.idModule
 where Etudiant.nom not like "SINK" ;

select *, count(idModule) from Suivre group by idModule ;

select numEval, avg(note) from Passer where numEval = 1 ;

select Etudiant.nom, avg(note) from Passer inner join Etudiant on Passer.ine = Etudiant.ine where Etudiant.nom like "SINK" ;

select ine, avg(note) from Passer inner join Evaluation on Passer.numEval = Evaluation.numEval inner join Module on Evaluation.idModule = Module.idModule 
where Module.libelle like "Droit%" group by Passer.ine;

//Q°7 pas faite 

