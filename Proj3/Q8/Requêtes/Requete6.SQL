Select produit, AVG(autres_utilisations)/AVG(dispo_int)*100 as pourcentage
FROM equilibre_prod
GROUP BY produit
ORDER BY pourcentage DESC
LIMIT 10
