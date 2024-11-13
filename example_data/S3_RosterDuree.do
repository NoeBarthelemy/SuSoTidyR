clear
insheet using "S3_RosterDuree.tab", tab case names

label define S3_RosterDuree__id 1 `"Interruption d’activité (arrêt temporaire ou définitif) ❌​"' 2 `"Réduction d’activité 📉​"' 
label values S3_RosterDuree__id S3_RosterDuree__id
label variable S3_RosterDuree__id `"Id in S3_RosterDuree"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable S3Q2_ASSOARRET3 `"Duree_interruption"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
