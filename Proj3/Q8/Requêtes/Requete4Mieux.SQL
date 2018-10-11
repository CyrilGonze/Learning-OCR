SELECT Pays,AVG(kcal_pppj) as kcal_pppj_moy
FROM  (
SELECT Pays,Année,SUM(dispo_alim_kcal_p_j) as kcal_pppj
 From dispo_alim
 Group by Pays,Année)
 GROUP BY Pays
 ORDER BY kcal_pppj_moy
 LIMIT 10;