SELECT Pays,AVG(somme_kprot_dispo_phpj) as moyenne_kprot_dispo_phpj
FROM  (
SELECT Pays,Année,SUM(dispo_prot)/1000 as somme_kprot_dispo_phpj
 From dispo_alim
 Group by Pays,Année)
 GROUP BY Pays
 ORDER BY moyenne_kprot_dispo_phpj ASC
 LIMIT 10;