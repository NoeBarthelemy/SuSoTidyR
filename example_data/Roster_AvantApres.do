clear
insheet using "Roster_AvantApres.tab", tab case names

label define Roster_AvantApres__id 1 `"▶︎ ​ Nombre TOTAL de salariés (y.c. dirigeants)"' 2 `"‎ ‎ ‎ ‎ ‎ ▶︎ ​ dont CDI"' 3 `"‎ ‎ ‎ ‎ ‎ ▶︎ ​ dont CDD"' 4 `"‎ ‎ ‎ ‎ ‎ ▶︎ ​ dont CONTRAT AIDÉ (contrats dapprentissage, de professionnalisation, dinsertion ...)"' 5 `"‎ ‎ ‎ ‎ ‎ ▶︎ ​ dont AUTRES (services civiques ...)"' 6 `"‎ ‎ ‎ ‎ ▷  dont salariés à temps PLEIN"' 7 `"‎ ‎ ‎ ‎ ▷ ​ dont salariés à temps PARTIEL (< 39 h / semaine)"' 
label values Roster_AvantApres__id Roster_AvantApres__id
label variable Roster_AvantApres__id `"Id in Roster_AvantApres"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable Avant `"Avant événements"'

label variable Apres `"Apres evenements"'

label variable Roster_1_incomplet `"Roster_1_incomplet"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
