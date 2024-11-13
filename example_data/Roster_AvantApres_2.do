clear
insheet using "Roster_AvantApres_2.tab", tab case names

label define Roster_AvantApres_2__id 1 `"▷​ Montant des subventions publiques COMMUNALES"' 2 `"▷​ Montant des subventions publiques PROVINCIALES"' 3 `"▷​ Montant des subventions publiques de la NC"' 4 `"▷​ Montant des subventions publiques de lÉTAT"' 5 `"▷ Montant des subventions publiques des ORGANISMES SOCIAUX (ASS, CAFAT, ...)"' 6 `"▷​ Montant des AUTRES subventions publiques"' 7 `"▶︎​ Montant des COTISATIONS"' 8 `"▶︎​ Montant des DONS"' 9 `"▶︎ Montant des ressources du MÉCÉNAT"' 10 `"​▶︎​ Montant des RECETTES DACTIVITÉ"' 11 `"▶︎​ Montant des AUTRES ressources"' 
label values Roster_AvantApres_2__id Roster_AvantApres_2__id
label variable Roster_AvantApres_2__id `"Id in Roster_AvantApres_2"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable Rsrc_PRV `"Ressources_prévisionnelles"'

label variable Rsrc_RL `"Ressources_réelles"'

label variable Roster_2_incomplet `"Roster_2_incomplet"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
