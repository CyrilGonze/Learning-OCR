Select pays,AVG(CASE WHEN nb_personnes<>0 THEN nb_personnes ELSE NULL END)/(population*1000)*100 as pourcentage_gens_sous_nutrition
FROM sous_nutrition,population
WHERE (sous_nutrition.code_pays=population.code_pays AND sous_nutrition.annee=population.annee AND sous_nutrition.Pays=population.pays)
GROUP BY sous_nutrition.pays
ORDER BY pourcentage_gens_sous_nutrition DESC
LIMIT 10