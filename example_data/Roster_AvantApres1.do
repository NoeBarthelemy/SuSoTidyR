clear
insheet using "Roster_AvantApres1.tab", tab case names

label define Roster_AvantApres1__id 1 `"▷ Nombre de personnes PHYSIQUES adhérentes"' 2 `"▷ Nombre DASSOCIATIONS adhérentes"' 3 `"▷ Nombre dentreprises PRIVÉES adhérentes"' 4 `"▷ Nombre de COLLECTIVITÉS publiques adhérentes"' 5 `"▷ Nombre dadhérents de nature "AUTRES""' 
label values Roster_AvantApres1__id Roster_AvantApres1__id
label variable Roster_AvantApres1__id `"Id in Roster_AvantApres1"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable Avant1 `"Avant evenements"'

label variable Apres1 `"Apres evenements"'

label variable Roster_1_incomplet_1 `"Roster_1_incomplet"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
