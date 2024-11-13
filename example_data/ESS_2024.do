clear
insheet using "ESS_2024.tab", tab case names

label define activites_domaines_ESS2024 1 `"Culture : préservation ou promotion du patrimoine, activités culturelles hors spectacles"' 2 `"Spectacles et activités artistiques"' 3 `"Loisirs, divertissements, vie sociale"' 4 `"Hébergement social ou médico-social"' 5 `"Santé"' 6 `"Sport"' 7 `"Défense de causes, de droits, d’intérêts"' 8 `"Gestion de services économiques et de développement local"' 9 `"Action sociale, action humanitaire et caritative sans hébergement"' 10 `"Enseignement, formation et recherche"' 

label define activites_sous_domaines_ESS2024 10 `"Associations de locataires ou de propriétaires"' 11 `"Associations de défense des droits humains, des droits des femmes, de minorités, groupes d’entraide"' 12 `"Autres défenses de droits, de causes et d’intérêts"' 

label define Communes_NC 1 `"01 - Bélep"' 2 `"02 - Boulouparis"' 3 `"03 - Bourail"' 4 `"04 - Canala"' 5 `"05 - Dumbéa"' 6 `"06 - Farino"' 7 `"07 - Hienghène"' 8 `"08 - Houaïlou"' 9 `"09 - Ile des pins"' 10 `"10 - Kaala-gomen"' 11 `"11 - Koné"' 12 `"12 - Koumac"' 13 `"13 - La Foa"' 14 `"14 - Lifou"' 15 `"15 - Maré"' 16 `"16 - Moindou"' 17 `"17 - Mont-Dore"' 18 `"18 - Nouméa"' 19 `"19 - Ouégoa"' 20 `"20 - Ouvéa"' 21 `"21 - Païta"' 22 `"22 - Poindimié"' 23 `"23 - Ponérihouen"' 24 `"24 - Pouébo"' 25 `"25 - Pouembout"' 26 `"26 - Poum"' 27 `"27 - Poya"' 28 `"28 - Sarraméa"' 29 `"29 - Thio"' 30 `"30 - Touho"' 31 `"31 - Voh"' 32 `"32 - Yaté"' 33 `"33 - Kouaoua"' 99 `"Autre"' 9999 `"Ne sait pas ou refuse de répondre"' 

label variable interview__id `"Unique 32-character long identifier of the interview"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable assignment__id `"Assignment id (identifier in numeric format)"'

label variable sssys_irnd `"Random number in the range 0..1 associated with interview"'

label variable has__errors `"Errors count in the interview"'

label define interview__status 0 `"Restored"' 20 `"Created"' 40 `"SupervisorAssigned"' 60 `"InterviewerAssigned"' 65 `"RejectedBySupervisor"' 80 `"ReadyForInterview"' 85 `"SentToCapi"' 95 `"Restarted"' 100 `"Completed"' 120 `"ApprovedBySupervisor"' 125 `"RejectedByHeadquarters"' 130 `"ApprovedByHeadquarters"' -1 `"Deleted"' 
label values interview__status interview__status
label variable interview__status `"Status of the interview"'

label variable S1ASSO_NOM `"Nom_asso"'

label variable S1ASSO_RID `"RID"'

label define S1_CONFIRMATION_NOM 1 `"Oui"' 2 `"Non, le nom est toujours le même."' 
label values S1_CONFIRMATION_NOM S1_CONFIRMATION_NOM
label variable S1_CONFIRMATION_NOM `"Confirmation du nom"'

label variable S1_NOUVEAU_NOM `"Nouveau nom"'

label values S1ASSO_DOM activites_domaines_ESS2024
label variable S1ASSO_DOM `"Domaine_activite"'

label values S1ASSO_SOUSDOM activites_sous_domaines_ESS2024
label variable S1ASSO_SOUSDOM `"Sous domaine dactivité"'

label variable S1AD `"Adresse"'

label variable S1AD_COMP `"Complément_adresse"'

label variable S1AD_CP `"CP"'

label values S1AD_COM Communes_NC
label variable S1AD_COM `"Commune"'

label variable S1CONT_NOM `"Nom_repondant"'

label variable S1CONT_PRENOM `"Prenom_repondant"'

label define S1CONT_FONCTION 1 `"Président(e)"' 2 `"Vice-président(e)"' 3 `"Trésorier(e)"' 4 `"Trésorier(e) adjoint(e)"' 5 `"Secrétaire"' 6 `"Secrétaire adjoint(e)"' 7 `"Autre fonction"' 
label values S1CONT_FONCTION S1CONT_FONCTION
label variable S1CONT_FONCTION `"Fonction_repondant"'

label variable S1ASSO_FONCTION_AUTRE `"Autre_fonction"'

label variable S1CONT_MAIL `"Mail_repondant"'

label variable S1CONT_TEL `"Telephone_repondant"'

label variable VAR_Total_Avant `"Total équivalent au sous total AVANT exactions"'

label variable VAR_Total_Apres `"Total équivalent au sous total APRES exactions"'

label variable Total_NonReponse `"Taux_NonReponse"'

label define Infos_dispos 1 `"Oui, je peux obtenir ces informations."' 2 `"Non, je nai pas accès à ces informations"' 
label values Infos_dispos Infos_dispos
label variable Infos_dispos `"Informations disponibles ?"'

label variable Demande_contact `"Demande_contact"'

label variable Total_NonReponse_1 `"Taux_NonReponse_1"'

label define Infos_dispos_1 1 `"Oui, je peux obtenir ces informations."' 2 `"Non, je nai pas accès à ces informations"' 
label values Infos_dispos_1 Infos_dispos_1
label variable Infos_dispos_1 `"Informations disponibles ?"'

label variable Demande_contact_1 `"Demande_contact_1"'

label variable Nb_benevoles_av `"Nb_bénévoles_av"'

label variable Nb_benevoles_ap `"Nb_bénévoles_ap"'

label variable Profil_benef_av__0 `"Profil_bénéficiares_av:0"'

label variable Profil_benef_av__0c `"Profil_bénéficiares_av:0c"'

label variable Profil_benef_av__1 `"Profil_bénéficiares_av:1"'

label variable Profil_benef_av__1c `"Profil_bénéficiares_av:1c"'

label variable Profil_benef_av__2 `"Profil_bénéficiares_av:2"'

label variable Profil_benef_av__2c `"Profil_bénéficiares_av:2c"'

label variable Profil_benef_av__3 `"Profil_bénéficiares_av:3"'

label variable Profil_benef_av__3c `"Profil_bénéficiares_av:3c"'

label variable Profil_benef_av__4 `"Profil_bénéficiares_av:4"'

label variable Profil_benef_av__4c `"Profil_bénéficiares_av:4c"'

label variable Profil_benef_av__5 `"Profil_bénéficiares_av:5"'

label variable Profil_benef_av__5c `"Profil_bénéficiares_av:5c"'

label variable Profil_benef_av__6 `"Profil_bénéficiares_av:6"'

label variable Profil_benef_av__6c `"Profil_bénéficiares_av:6c"'

label variable Profil_benef_av__7 `"Profil_bénéficiares_av:7"'

label variable Profil_benef_av__7c `"Profil_bénéficiares_av:7c"'

label variable Profil_benef_av__8 `"Profil_bénéficiares_av:8"'

label variable Profil_benef_av__8c `"Profil_bénéficiares_av:8c"'

label variable Profil_benef_av__9 `"Profil_bénéficiares_av:9"'

label variable Profil_benef_av__9c `"Profil_bénéficiares_av:9c"'

label variable Profil_benef_av__10 `"Profil_bénéficiares_av:10"'

label variable Profil_benef_av__10c `"Profil_bénéficiares_av:10c"'

label variable Profil_benef_av__11 `"Profil_bénéficiares_av:11"'

label variable Profil_benef_av__11c `"Profil_bénéficiares_av:11c"'

label variable Profil_benef_av__12 `"Profil_bénéficiares_av:12"'

label variable Profil_benef_av__12c `"Profil_bénéficiares_av:12c"'

label variable Profil_benef_av__13 `"Profil_bénéficiares_av:13"'

label variable Profil_benef_av__13c `"Profil_bénéficiares_av:13c"'

label variable Profil_benef_av__14 `"Profil_bénéficiares_av:14"'

label variable Profil_benef_av__14c `"Profil_bénéficiares_av:14c"'

label variable Profil_benef_av__15 `"Profil_bénéficiares_av:15"'

label variable Profil_benef_av__15c `"Profil_bénéficiares_av:15c"'

label variable Profil_benef_av__16 `"Profil_bénéficiares_av:16"'

label variable Profil_benef_av__16c `"Profil_bénéficiares_av:16c"'

label variable Profil_benef_av__17 `"Profil_bénéficiares_av:17"'

label variable Profil_benef_av__17c `"Profil_bénéficiares_av:17c"'

label variable Profil_benef_av__18 `"Profil_bénéficiares_av:18"'

label variable Profil_benef_av__18c `"Profil_bénéficiares_av:18c"'

label variable Profil_benef_av__19 `"Profil_bénéficiares_av:19"'

label variable Profil_benef_av__19c `"Profil_bénéficiares_av:19c"'

label variable Profil_benef_av__20 `"Profil_bénéficiares_av:20"'

label variable Profil_benef_av__20c `"Profil_bénéficiares_av:20c"'

label variable Profil_benef_av__21 `"Profil_bénéficiares_av:21"'

label variable Profil_benef_av__21c `"Profil_bénéficiares_av:21c"'

label variable Profil_benef_av__22 `"Profil_bénéficiares_av:22"'

label variable Profil_benef_av__22c `"Profil_bénéficiares_av:22c"'

label variable Profil_benef_av__23 `"Profil_bénéficiares_av:23"'

label variable Profil_benef_av__23c `"Profil_bénéficiares_av:23c"'

label variable Profil_benef_av__24 `"Profil_bénéficiares_av:24"'

label variable Profil_benef_av__24c `"Profil_bénéficiares_av:24c"'

label variable Profil_benef_av__25 `"Profil_bénéficiares_av:25"'

label variable Profil_benef_av__25c `"Profil_bénéficiares_av:25c"'

label variable Profil_benef_av__26 `"Profil_bénéficiares_av:26"'

label variable Profil_benef_av__26c `"Profil_bénéficiares_av:26c"'

label variable Profil_benef_av__27 `"Profil_bénéficiares_av:27"'

label variable Profil_benef_av__27c `"Profil_bénéficiares_av:27c"'

label variable Profil_benef_av__28 `"Profil_bénéficiares_av:28"'

label variable Profil_benef_av__28c `"Profil_bénéficiares_av:28c"'

label variable Profil_benef_av__29 `"Profil_bénéficiares_av:29"'

label variable Profil_benef_av__29c `"Profil_bénéficiares_av:29c"'

label variable Profil_benef_av__30 `"Profil_bénéficiares_av:30"'

label variable Profil_benef_av__30c `"Profil_bénéficiares_av:30c"'

label variable Profil_benef_av__31 `"Profil_bénéficiares_av:31"'

label variable Profil_benef_av__31c `"Profil_bénéficiares_av:31c"'

label variable Profil_benef_av__32 `"Profil_bénéficiares_av:32"'

label variable Profil_benef_av__32c `"Profil_bénéficiares_av:32c"'

label variable Profil_benef_av__33 `"Profil_bénéficiares_av:33"'

label variable Profil_benef_av__33c `"Profil_bénéficiares_av:33c"'

label variable Profil_benef_av__34 `"Profil_bénéficiares_av:34"'

label variable Profil_benef_av__34c `"Profil_bénéficiares_av:34c"'

label variable Profil_benef_av__35 `"Profil_bénéficiares_av:35"'

label variable Profil_benef_av__35c `"Profil_bénéficiares_av:35c"'

label variable Profil_benef_av__36 `"Profil_bénéficiares_av:36"'

label variable Profil_benef_av__36c `"Profil_bénéficiares_av:36c"'

label variable Profil_benef_av__37 `"Profil_bénéficiares_av:37"'

label variable Profil_benef_av__37c `"Profil_bénéficiares_av:37c"'

label variable Profil_benef_av__38 `"Profil_bénéficiares_av:38"'

label variable Profil_benef_av__38c `"Profil_bénéficiares_av:38c"'

label variable Profil_benef_av__39 `"Profil_bénéficiares_av:39"'

label variable Profil_benef_av__39c `"Profil_bénéficiares_av:39c"'

label variable Profil_benef_av__40 `"Profil_bénéficiares_av:40"'

label variable Profil_benef_av__40c `"Profil_bénéficiares_av:40c"'

label variable Profil_benef_av__41 `"Profil_bénéficiares_av:41"'

label variable Profil_benef_av__41c `"Profil_bénéficiares_av:41c"'

label variable Profil_benef_av__42 `"Profil_bénéficiares_av:42"'

label variable Profil_benef_av__42c `"Profil_bénéficiares_av:42c"'

label variable Profil_benef_av__43 `"Profil_bénéficiares_av:43"'

label variable Profil_benef_av__43c `"Profil_bénéficiares_av:43c"'

label variable Profil_benef_av__44 `"Profil_bénéficiares_av:44"'

label variable Profil_benef_av__44c `"Profil_bénéficiares_av:44c"'

label variable Profil_benef_av__45 `"Profil_bénéficiares_av:45"'

label variable Profil_benef_av__45c `"Profil_bénéficiares_av:45c"'

label variable Profil_benef_av__46 `"Profil_bénéficiares_av:46"'

label variable Profil_benef_av__46c `"Profil_bénéficiares_av:46c"'

label variable Profil_benef_av__47 `"Profil_bénéficiares_av:47"'

label variable Profil_benef_av__47c `"Profil_bénéficiares_av:47c"'

label variable Profil_benef_av__48 `"Profil_bénéficiares_av:48"'

label variable Profil_benef_av__48c `"Profil_bénéficiares_av:48c"'

label variable Profil_benef_av__49 `"Profil_bénéficiares_av:49"'

label variable Profil_benef_av__49c `"Profil_bénéficiares_av:49c"'

label variable Profil_benef_av__50 `"Profil_bénéficiares_av:50"'

label variable Profil_benef_av__50c `"Profil_bénéficiares_av:50c"'

label variable Profil_benef_av__51 `"Profil_bénéficiares_av:51"'

label variable Profil_benef_av__51c `"Profil_bénéficiares_av:51c"'

label variable Profil_benef_av__52 `"Profil_bénéficiares_av:52"'

label variable Profil_benef_av__52c `"Profil_bénéficiares_av:52c"'

label variable Profil_benef_av__53 `"Profil_bénéficiares_av:53"'

label variable Profil_benef_av__53c `"Profil_bénéficiares_av:53c"'

label variable Profil_benef_av__54 `"Profil_bénéficiares_av:54"'

label variable Profil_benef_av__54c `"Profil_bénéficiares_av:54c"'

label variable Profil_benef_av__55 `"Profil_bénéficiares_av:55"'

label variable Profil_benef_av__55c `"Profil_bénéficiares_av:55c"'

label variable Profil_benef_av__56 `"Profil_bénéficiares_av:56"'

label variable Profil_benef_av__56c `"Profil_bénéficiares_av:56c"'

label variable Profil_benef_av__57 `"Profil_bénéficiares_av:57"'

label variable Profil_benef_av__57c `"Profil_bénéficiares_av:57c"'

label variable Profil_benef_av__58 `"Profil_bénéficiares_av:58"'

label variable Profil_benef_av__58c `"Profil_bénéficiares_av:58c"'

label variable Profil_benef_av__59 `"Profil_bénéficiares_av:59"'

label variable Profil_benef_av__59c `"Profil_bénéficiares_av:59c"'

label variable Profil_benef_av__60 `"Profil_bénéficiares_av:60"'

label variable Profil_benef_av__60c `"Profil_bénéficiares_av:60c"'

label variable Profil_benef_av__61 `"Profil_bénéficiares_av:61"'

label variable Profil_benef_av__61c `"Profil_bénéficiares_av:61c"'

label variable Profil_benef_av__62 `"Profil_bénéficiares_av:62"'

label variable Profil_benef_av__62c `"Profil_bénéficiares_av:62c"'

label variable Profil_benef_av__63 `"Profil_bénéficiares_av:63"'

label variable Profil_benef_av__63c `"Profil_bénéficiares_av:63c"'

label variable Profil_benef_av__64 `"Profil_bénéficiares_av:64"'

label variable Profil_benef_av__64c `"Profil_bénéficiares_av:64c"'

label variable Profil_benef_av__65 `"Profil_bénéficiares_av:65"'

label variable Profil_benef_av__65c `"Profil_bénéficiares_av:65c"'

label variable Profil_benef_av__66 `"Profil_bénéficiares_av:66"'

label variable Profil_benef_av__66c `"Profil_bénéficiares_av:66c"'

label variable Profil_benef_av__67 `"Profil_bénéficiares_av:67"'

label variable Profil_benef_av__67c `"Profil_bénéficiares_av:67c"'

label variable Profil_benef_av__68 `"Profil_bénéficiares_av:68"'

label variable Profil_benef_av__68c `"Profil_bénéficiares_av:68c"'

label variable Profil_benef_av__69 `"Profil_bénéficiares_av:69"'

label variable Profil_benef_av__69c `"Profil_bénéficiares_av:69c"'

label variable Profil_benef_av__70 `"Profil_bénéficiares_av:70"'

label variable Profil_benef_av__70c `"Profil_bénéficiares_av:70c"'

label variable Profil_benef_av__71 `"Profil_bénéficiares_av:71"'

label variable Profil_benef_av__71c `"Profil_bénéficiares_av:71c"'

label variable Profil_benef_av__72 `"Profil_bénéficiares_av:72"'

label variable Profil_benef_av__72c `"Profil_bénéficiares_av:72c"'

label variable Profil_benef_av__73 `"Profil_bénéficiares_av:73"'

label variable Profil_benef_av__73c `"Profil_bénéficiares_av:73c"'

label variable Profil_benef_av__74 `"Profil_bénéficiares_av:74"'

label variable Profil_benef_av__74c `"Profil_bénéficiares_av:74c"'

label variable Profil_benef_av__75 `"Profil_bénéficiares_av:75"'

label variable Profil_benef_av__75c `"Profil_bénéficiares_av:75c"'

label variable Profil_benef_av__76 `"Profil_bénéficiares_av:76"'

label variable Profil_benef_av__76c `"Profil_bénéficiares_av:76c"'

label variable Profil_benef_av__77 `"Profil_bénéficiares_av:77"'

label variable Profil_benef_av__77c `"Profil_bénéficiares_av:77c"'

label variable Profil_benef_av__78 `"Profil_bénéficiares_av:78"'

label variable Profil_benef_av__78c `"Profil_bénéficiares_av:78c"'

label variable Profil_benef_av__79 `"Profil_bénéficiares_av:79"'

label variable Profil_benef_av__79c `"Profil_bénéficiares_av:79c"'

label variable Profil_benef_av__80 `"Profil_bénéficiares_av:80"'

label variable Profil_benef_av__80c `"Profil_bénéficiares_av:80c"'

label variable Profil_benef_av__81 `"Profil_bénéficiares_av:81"'

label variable Profil_benef_av__81c `"Profil_bénéficiares_av:81c"'

label variable Profil_benef_av__82 `"Profil_bénéficiares_av:82"'

label variable Profil_benef_av__82c `"Profil_bénéficiares_av:82c"'

label variable Profil_benef_av__83 `"Profil_bénéficiares_av:83"'

label variable Profil_benef_av__83c `"Profil_bénéficiares_av:83c"'

label variable Profil_benef_av__84 `"Profil_bénéficiares_av:84"'

label variable Profil_benef_av__84c `"Profil_bénéficiares_av:84c"'

label variable Profil_benef_av__85 `"Profil_bénéficiares_av:85"'

label variable Profil_benef_av__85c `"Profil_bénéficiares_av:85c"'

label variable Profil_benef_av__86 `"Profil_bénéficiares_av:86"'

label variable Profil_benef_av__86c `"Profil_bénéficiares_av:86c"'

label variable Profil_benef_av__87 `"Profil_bénéficiares_av:87"'

label variable Profil_benef_av__87c `"Profil_bénéficiares_av:87c"'

label variable Profil_benef_av__88 `"Profil_bénéficiares_av:88"'

label variable Profil_benef_av__88c `"Profil_bénéficiares_av:88c"'

label variable Profil_benef_av__89 `"Profil_bénéficiares_av:89"'

label variable Profil_benef_av__89c `"Profil_bénéficiares_av:89c"'

label variable Profil_benef_av__90 `"Profil_bénéficiares_av:90"'

label variable Profil_benef_av__90c `"Profil_bénéficiares_av:90c"'

label variable Profil_benef_av__91 `"Profil_bénéficiares_av:91"'

label variable Profil_benef_av__91c `"Profil_bénéficiares_av:91c"'

label variable Profil_benef_av__92 `"Profil_bénéficiares_av:92"'

label variable Profil_benef_av__92c `"Profil_bénéficiares_av:92c"'

label variable Profil_benef_av__93 `"Profil_bénéficiares_av:93"'

label variable Profil_benef_av__93c `"Profil_bénéficiares_av:93c"'

label variable Profil_benef_av__94 `"Profil_bénéficiares_av:94"'

label variable Profil_benef_av__94c `"Profil_bénéficiares_av:94c"'

label variable Profil_benef_av__95 `"Profil_bénéficiares_av:95"'

label variable Profil_benef_av__95c `"Profil_bénéficiares_av:95c"'

label variable Profil_benef_av__96 `"Profil_bénéficiares_av:96"'

label variable Profil_benef_av__96c `"Profil_bénéficiares_av:96c"'

label variable Profil_benef_av__97 `"Profil_bénéficiares_av:97"'

label variable Profil_benef_av__97c `"Profil_bénéficiares_av:97c"'

label variable Profil_benef_av__98 `"Profil_bénéficiares_av:98"'

label variable Profil_benef_av__98c `"Profil_bénéficiares_av:98c"'

label variable Profil_benef_av__99 `"Profil_bénéficiares_av:99"'

label variable Profil_benef_av__99c `"Profil_bénéficiares_av:99c"'

label variable Profil_benef_av__100 `"Profil_bénéficiares_av:100"'

label variable Profil_benef_av__100c `"Profil_bénéficiares_av:100c"'

label variable Profil_benef_av__101 `"Profil_bénéficiares_av:101"'

label variable Profil_benef_av__101c `"Profil_bénéficiares_av:101c"'

label variable Profil_benef_av__102 `"Profil_bénéficiares_av:102"'

label variable Profil_benef_av__102c `"Profil_bénéficiares_av:102c"'

label variable Profil_benef_av__103 `"Profil_bénéficiares_av:103"'

label variable Profil_benef_av__103c `"Profil_bénéficiares_av:103c"'

label variable Profil_benef_av__104 `"Profil_bénéficiares_av:104"'

label variable Profil_benef_av__104c `"Profil_bénéficiares_av:104c"'

label variable Profil_benef_av__105 `"Profil_bénéficiares_av:105"'

label variable Profil_benef_av__105c `"Profil_bénéficiares_av:105c"'

label variable Profil_benef_av__106 `"Profil_bénéficiares_av:106"'

label variable Profil_benef_av__106c `"Profil_bénéficiares_av:106c"'

label variable Profil_benef_av__107 `"Profil_bénéficiares_av:107"'

label variable Profil_benef_av__107c `"Profil_bénéficiares_av:107c"'

label variable Profil_benef_av__108 `"Profil_bénéficiares_av:108"'

label variable Profil_benef_av__108c `"Profil_bénéficiares_av:108c"'

label variable Profil_benef_av__109 `"Profil_bénéficiares_av:109"'

label variable Profil_benef_av__109c `"Profil_bénéficiares_av:109c"'

label variable Profil_benef_av__110 `"Profil_bénéficiares_av:110"'

label variable Profil_benef_av__110c `"Profil_bénéficiares_av:110c"'

label variable Profil_benef_av__111 `"Profil_bénéficiares_av:111"'

label variable Profil_benef_av__111c `"Profil_bénéficiares_av:111c"'

label variable Profil_benef_av__112 `"Profil_bénéficiares_av:112"'

label variable Profil_benef_av__112c `"Profil_bénéficiares_av:112c"'

label variable Profil_benef_av__113 `"Profil_bénéficiares_av:113"'

label variable Profil_benef_av__113c `"Profil_bénéficiares_av:113c"'

label variable Profil_benef_av__114 `"Profil_bénéficiares_av:114"'

label variable Profil_benef_av__114c `"Profil_bénéficiares_av:114c"'

label variable Profil_benef_av__115 `"Profil_bénéficiares_av:115"'

label variable Profil_benef_av__115c `"Profil_bénéficiares_av:115c"'

label variable Profil_benef_av__116 `"Profil_bénéficiares_av:116"'

label variable Profil_benef_av__116c `"Profil_bénéficiares_av:116c"'

label variable Profil_benef_av__117 `"Profil_bénéficiares_av:117"'

label variable Profil_benef_av__117c `"Profil_bénéficiares_av:117c"'

label variable Profil_benef_av__118 `"Profil_bénéficiares_av:118"'

label variable Profil_benef_av__118c `"Profil_bénéficiares_av:118c"'

label variable Profil_benef_av__119 `"Profil_bénéficiares_av:119"'

label variable Profil_benef_av__119c `"Profil_bénéficiares_av:119c"'

label variable Profil_benef_av__120 `"Profil_bénéficiares_av:120"'

label variable Profil_benef_av__120c `"Profil_bénéficiares_av:120c"'

label variable Profil_benef_av__121 `"Profil_bénéficiares_av:121"'

label variable Profil_benef_av__121c `"Profil_bénéficiares_av:121c"'

label variable Profil_benef_av__122 `"Profil_bénéficiares_av:122"'

label variable Profil_benef_av__122c `"Profil_bénéficiares_av:122c"'

label variable Profil_benef_av__123 `"Profil_bénéficiares_av:123"'

label variable Profil_benef_av__123c `"Profil_bénéficiares_av:123c"'

label variable Profil_benef_av__124 `"Profil_bénéficiares_av:124"'

label variable Profil_benef_av__124c `"Profil_bénéficiares_av:124c"'

label variable Profil_benef_av__125 `"Profil_bénéficiares_av:125"'

label variable Profil_benef_av__125c `"Profil_bénéficiares_av:125c"'

label variable Profil_benef_av__126 `"Profil_bénéficiares_av:126"'

label variable Profil_benef_av__126c `"Profil_bénéficiares_av:126c"'

label variable Profil_benef_av__127 `"Profil_bénéficiares_av:127"'

label variable Profil_benef_av__127c `"Profil_bénéficiares_av:127c"'

label variable Profil_benef_av__128 `"Profil_bénéficiares_av:128"'

label variable Profil_benef_av__128c `"Profil_bénéficiares_av:128c"'

label variable Profil_benef_av__129 `"Profil_bénéficiares_av:129"'

label variable Profil_benef_av__129c `"Profil_bénéficiares_av:129c"'

label variable Profil_benef_av__130 `"Profil_bénéficiares_av:130"'

label variable Profil_benef_av__130c `"Profil_bénéficiares_av:130c"'

label variable Profil_benef_av__131 `"Profil_bénéficiares_av:131"'

label variable Profil_benef_av__131c `"Profil_bénéficiares_av:131c"'

label variable Profil_benef_av__132 `"Profil_bénéficiares_av:132"'

label variable Profil_benef_av__132c `"Profil_bénéficiares_av:132c"'

label variable Profil_benef_av__133 `"Profil_bénéficiares_av:133"'

label variable Profil_benef_av__133c `"Profil_bénéficiares_av:133c"'

label variable Profil_benef_av__134 `"Profil_bénéficiares_av:134"'

label variable Profil_benef_av__134c `"Profil_bénéficiares_av:134c"'

label variable Profil_benef_av__135 `"Profil_bénéficiares_av:135"'

label variable Profil_benef_av__135c `"Profil_bénéficiares_av:135c"'

label variable Profil_benef_av__136 `"Profil_bénéficiares_av:136"'

label variable Profil_benef_av__136c `"Profil_bénéficiares_av:136c"'

label variable Profil_benef_av__137 `"Profil_bénéficiares_av:137"'

label variable Profil_benef_av__137c `"Profil_bénéficiares_av:137c"'

label variable Profil_benef_av__138 `"Profil_bénéficiares_av:138"'

label variable Profil_benef_av__138c `"Profil_bénéficiares_av:138c"'

label variable Profil_benef_av__139 `"Profil_bénéficiares_av:139"'

label variable Profil_benef_av__139c `"Profil_bénéficiares_av:139c"'

label variable Profil_benef_av__140 `"Profil_bénéficiares_av:140"'

label variable Profil_benef_av__140c `"Profil_bénéficiares_av:140c"'

label variable Profil_benef_av__141 `"Profil_bénéficiares_av:141"'

label variable Profil_benef_av__141c `"Profil_bénéficiares_av:141c"'

label variable Profil_benef_av__142 `"Profil_bénéficiares_av:142"'

label variable Profil_benef_av__142c `"Profil_bénéficiares_av:142c"'

label variable Profil_benef_av__143 `"Profil_bénéficiares_av:143"'

label variable Profil_benef_av__143c `"Profil_bénéficiares_av:143c"'

label variable Profil_benef_av__144 `"Profil_bénéficiares_av:144"'

label variable Profil_benef_av__144c `"Profil_bénéficiares_av:144c"'

label variable Profil_benef_av__145 `"Profil_bénéficiares_av:145"'

label variable Profil_benef_av__145c `"Profil_bénéficiares_av:145c"'

label variable Profil_benef_av__146 `"Profil_bénéficiares_av:146"'

label variable Profil_benef_av__146c `"Profil_bénéficiares_av:146c"'

label variable Profil_benef_av__147 `"Profil_bénéficiares_av:147"'

label variable Profil_benef_av__147c `"Profil_bénéficiares_av:147c"'

label variable Profil_benef_av__148 `"Profil_bénéficiares_av:148"'

label variable Profil_benef_av__148c `"Profil_bénéficiares_av:148c"'

label variable Profil_benef_av__149 `"Profil_bénéficiares_av:149"'

label variable Profil_benef_av__149c `"Profil_bénéficiares_av:149c"'

label variable Profil_benef_av__150 `"Profil_bénéficiares_av:150"'

label variable Profil_benef_av__150c `"Profil_bénéficiares_av:150c"'

label variable Profil_benef_av__151 `"Profil_bénéficiares_av:151"'

label variable Profil_benef_av__151c `"Profil_bénéficiares_av:151c"'

label variable Profil_benef_av__152 `"Profil_bénéficiares_av:152"'

label variable Profil_benef_av__152c `"Profil_bénéficiares_av:152c"'

label variable Profil_benef_av__153 `"Profil_bénéficiares_av:153"'

label variable Profil_benef_av__153c `"Profil_bénéficiares_av:153c"'

label variable Profil_benef_av__154 `"Profil_bénéficiares_av:154"'

label variable Profil_benef_av__154c `"Profil_bénéficiares_av:154c"'

label variable Profil_benef_av__155 `"Profil_bénéficiares_av:155"'

label variable Profil_benef_av__155c `"Profil_bénéficiares_av:155c"'

label variable Profil_benef_av__156 `"Profil_bénéficiares_av:156"'

label variable Profil_benef_av__156c `"Profil_bénéficiares_av:156c"'

label variable Profil_benef_av__157 `"Profil_bénéficiares_av:157"'

label variable Profil_benef_av__157c `"Profil_bénéficiares_av:157c"'

label variable Profil_benef_av__158 `"Profil_bénéficiares_av:158"'

label variable Profil_benef_av__158c `"Profil_bénéficiares_av:158c"'

label variable Profil_benef_av__159 `"Profil_bénéficiares_av:159"'

label variable Profil_benef_av__159c `"Profil_bénéficiares_av:159c"'

label variable Profil_benef_av__160 `"Profil_bénéficiares_av:160"'

label variable Profil_benef_av__160c `"Profil_bénéficiares_av:160c"'

label variable Profil_benef_av__161 `"Profil_bénéficiares_av:161"'

label variable Profil_benef_av__161c `"Profil_bénéficiares_av:161c"'

label variable Profil_benef_av__162 `"Profil_bénéficiares_av:162"'

label variable Profil_benef_av__162c `"Profil_bénéficiares_av:162c"'

label variable Profil_benef_av__163 `"Profil_bénéficiares_av:163"'

label variable Profil_benef_av__163c `"Profil_bénéficiares_av:163c"'

label variable Profil_benef_av__164 `"Profil_bénéficiares_av:164"'

label variable Profil_benef_av__164c `"Profil_bénéficiares_av:164c"'

label variable Profil_benef_av__165 `"Profil_bénéficiares_av:165"'

label variable Profil_benef_av__165c `"Profil_bénéficiares_av:165c"'

label variable Profil_benef_av__166 `"Profil_bénéficiares_av:166"'

label variable Profil_benef_av__166c `"Profil_bénéficiares_av:166c"'

label variable Profil_benef_av__167 `"Profil_bénéficiares_av:167"'

label variable Profil_benef_av__167c `"Profil_bénéficiares_av:167c"'

label variable Profil_benef_av__168 `"Profil_bénéficiares_av:168"'

label variable Profil_benef_av__168c `"Profil_bénéficiares_av:168c"'

label variable Profil_benef_av__169 `"Profil_bénéficiares_av:169"'

label variable Profil_benef_av__169c `"Profil_bénéficiares_av:169c"'

label variable Profil_benef_av__170 `"Profil_bénéficiares_av:170"'

label variable Profil_benef_av__170c `"Profil_bénéficiares_av:170c"'

label variable Profil_benef_av__171 `"Profil_bénéficiares_av:171"'

label variable Profil_benef_av__171c `"Profil_bénéficiares_av:171c"'

label variable Profil_benef_av__172 `"Profil_bénéficiares_av:172"'

label variable Profil_benef_av__172c `"Profil_bénéficiares_av:172c"'

label variable Profil_benef_av__173 `"Profil_bénéficiares_av:173"'

label variable Profil_benef_av__173c `"Profil_bénéficiares_av:173c"'

label variable Profil_benef_av__174 `"Profil_bénéficiares_av:174"'

label variable Profil_benef_av__174c `"Profil_bénéficiares_av:174c"'

label variable Profil_benef_av__175 `"Profil_bénéficiares_av:175"'

label variable Profil_benef_av__175c `"Profil_bénéficiares_av:175c"'

label variable Profil_benef_av__176 `"Profil_bénéficiares_av:176"'

label variable Profil_benef_av__176c `"Profil_bénéficiares_av:176c"'

label variable Profil_benef_av__177 `"Profil_bénéficiares_av:177"'

label variable Profil_benef_av__177c `"Profil_bénéficiares_av:177c"'

label variable Profil_benef_av__178 `"Profil_bénéficiares_av:178"'

label variable Profil_benef_av__178c `"Profil_bénéficiares_av:178c"'

label variable Profil_benef_av__179 `"Profil_bénéficiares_av:179"'

label variable Profil_benef_av__179c `"Profil_bénéficiares_av:179c"'

label variable Profil_benef_av__180 `"Profil_bénéficiares_av:180"'

label variable Profil_benef_av__180c `"Profil_bénéficiares_av:180c"'

label variable Profil_benef_av__181 `"Profil_bénéficiares_av:181"'

label variable Profil_benef_av__181c `"Profil_bénéficiares_av:181c"'

label variable Profil_benef_av__182 `"Profil_bénéficiares_av:182"'

label variable Profil_benef_av__182c `"Profil_bénéficiares_av:182c"'

label variable Profil_benef_av__183 `"Profil_bénéficiares_av:183"'

label variable Profil_benef_av__183c `"Profil_bénéficiares_av:183c"'

label variable Profil_benef_av__184 `"Profil_bénéficiares_av:184"'

label variable Profil_benef_av__184c `"Profil_bénéficiares_av:184c"'

label variable Profil_benef_av__185 `"Profil_bénéficiares_av:185"'

label variable Profil_benef_av__185c `"Profil_bénéficiares_av:185c"'

label variable Profil_benef_av__186 `"Profil_bénéficiares_av:186"'

label variable Profil_benef_av__186c `"Profil_bénéficiares_av:186c"'

label variable Profil_benef_av__187 `"Profil_bénéficiares_av:187"'

label variable Profil_benef_av__187c `"Profil_bénéficiares_av:187c"'

label variable Profil_benef_av__188 `"Profil_bénéficiares_av:188"'

label variable Profil_benef_av__188c `"Profil_bénéficiares_av:188c"'

label variable Profil_benef_av__189 `"Profil_bénéficiares_av:189"'

label variable Profil_benef_av__189c `"Profil_bénéficiares_av:189c"'

label variable Profil_benef_av__190 `"Profil_bénéficiares_av:190"'

label variable Profil_benef_av__190c `"Profil_bénéficiares_av:190c"'

label variable Profil_benef_av__191 `"Profil_bénéficiares_av:191"'

label variable Profil_benef_av__191c `"Profil_bénéficiares_av:191c"'

label variable Profil_benef_av__192 `"Profil_bénéficiares_av:192"'

label variable Profil_benef_av__192c `"Profil_bénéficiares_av:192c"'

label variable Profil_benef_av__193 `"Profil_bénéficiares_av:193"'

label variable Profil_benef_av__193c `"Profil_bénéficiares_av:193c"'

label variable Profil_benef_av__194 `"Profil_bénéficiares_av:194"'

label variable Profil_benef_av__194c `"Profil_bénéficiares_av:194c"'

label variable Profil_benef_av__195 `"Profil_bénéficiares_av:195"'

label variable Profil_benef_av__195c `"Profil_bénéficiares_av:195c"'

label variable Profil_benef_av__196 `"Profil_bénéficiares_av:196"'

label variable Profil_benef_av__196c `"Profil_bénéficiares_av:196c"'

label variable Profil_benef_av__197 `"Profil_bénéficiares_av:197"'

label variable Profil_benef_av__197c `"Profil_bénéficiares_av:197c"'

label variable Profil_benef_av__198 `"Profil_bénéficiares_av:198"'

label variable Profil_benef_av__198c `"Profil_bénéficiares_av:198c"'

label variable Profil_benef_av__199 `"Profil_bénéficiares_av:199"'

label variable Profil_benef_av__199c `"Profil_bénéficiares_av:199c"'

label variable Nb_benef_av__0 `"Nb_bénéficiares_av:0"'

label variable Nb_benef_av__0c `"Nb_bénéficiares_av:0c"'

label variable Nb_benef_av__1 `"Nb_bénéficiares_av:1"'

label variable Nb_benef_av__1c `"Nb_bénéficiares_av:1c"'

label variable Nb_benef_av__2 `"Nb_bénéficiares_av:2"'

label variable Nb_benef_av__2c `"Nb_bénéficiares_av:2c"'

label variable Nb_benef_av__3 `"Nb_bénéficiares_av:3"'

label variable Nb_benef_av__3c `"Nb_bénéficiares_av:3c"'

label variable Nb_benef_av__4 `"Nb_bénéficiares_av:4"'

label variable Nb_benef_av__4c `"Nb_bénéficiares_av:4c"'

label variable Nb_benef_av__5 `"Nb_bénéficiares_av:5"'

label variable Nb_benef_av__5c `"Nb_bénéficiares_av:5c"'

label variable Nb_benef_av__6 `"Nb_bénéficiares_av:6"'

label variable Nb_benef_av__6c `"Nb_bénéficiares_av:6c"'

label variable Nb_benef_av__7 `"Nb_bénéficiares_av:7"'

label variable Nb_benef_av__7c `"Nb_bénéficiares_av:7c"'

label variable Nb_benef_av__8 `"Nb_bénéficiares_av:8"'

label variable Nb_benef_av__8c `"Nb_bénéficiares_av:8c"'

label variable Nb_benef_av__9 `"Nb_bénéficiares_av:9"'

label variable Nb_benef_av__9c `"Nb_bénéficiares_av:9c"'

label variable Nb_benef_av__10 `"Nb_bénéficiares_av:10"'

label variable Nb_benef_av__10c `"Nb_bénéficiares_av:10c"'

label variable Nb_benef_av__11 `"Nb_bénéficiares_av:11"'

label variable Nb_benef_av__11c `"Nb_bénéficiares_av:11c"'

label variable Nb_benef_av__12 `"Nb_bénéficiares_av:12"'

label variable Nb_benef_av__12c `"Nb_bénéficiares_av:12c"'

label variable Nb_benef_av__13 `"Nb_bénéficiares_av:13"'

label variable Nb_benef_av__13c `"Nb_bénéficiares_av:13c"'

label variable Nb_benef_av__14 `"Nb_bénéficiares_av:14"'

label variable Nb_benef_av__14c `"Nb_bénéficiares_av:14c"'

label variable Nb_benef_av__15 `"Nb_bénéficiares_av:15"'

label variable Nb_benef_av__15c `"Nb_bénéficiares_av:15c"'

label variable Nb_benef_av__16 `"Nb_bénéficiares_av:16"'

label variable Nb_benef_av__16c `"Nb_bénéficiares_av:16c"'

label variable Nb_benef_av__17 `"Nb_bénéficiares_av:17"'

label variable Nb_benef_av__17c `"Nb_bénéficiares_av:17c"'

label variable Nb_benef_av__18 `"Nb_bénéficiares_av:18"'

label variable Nb_benef_av__18c `"Nb_bénéficiares_av:18c"'

label variable Nb_benef_av__19 `"Nb_bénéficiares_av:19"'

label variable Nb_benef_av__19c `"Nb_bénéficiares_av:19c"'

label variable Nb_benef_av__20 `"Nb_bénéficiares_av:20"'

label variable Nb_benef_av__20c `"Nb_bénéficiares_av:20c"'

label variable Nb_benef_av__21 `"Nb_bénéficiares_av:21"'

label variable Nb_benef_av__21c `"Nb_bénéficiares_av:21c"'

label variable Nb_benef_av__22 `"Nb_bénéficiares_av:22"'

label variable Nb_benef_av__22c `"Nb_bénéficiares_av:22c"'

label variable Nb_benef_av__23 `"Nb_bénéficiares_av:23"'

label variable Nb_benef_av__23c `"Nb_bénéficiares_av:23c"'

label variable Nb_benef_av__24 `"Nb_bénéficiares_av:24"'

label variable Nb_benef_av__24c `"Nb_bénéficiares_av:24c"'

label variable Nb_benef_av__25 `"Nb_bénéficiares_av:25"'

label variable Nb_benef_av__25c `"Nb_bénéficiares_av:25c"'

label variable Nb_benef_av__26 `"Nb_bénéficiares_av:26"'

label variable Nb_benef_av__26c `"Nb_bénéficiares_av:26c"'

label variable Nb_benef_av__27 `"Nb_bénéficiares_av:27"'

label variable Nb_benef_av__27c `"Nb_bénéficiares_av:27c"'

label variable Nb_benef_av__28 `"Nb_bénéficiares_av:28"'

label variable Nb_benef_av__28c `"Nb_bénéficiares_av:28c"'

label variable Nb_benef_av__29 `"Nb_bénéficiares_av:29"'

label variable Nb_benef_av__29c `"Nb_bénéficiares_av:29c"'

label variable Nb_benef_av__30 `"Nb_bénéficiares_av:30"'

label variable Nb_benef_av__30c `"Nb_bénéficiares_av:30c"'

label variable Nb_benef_av__31 `"Nb_bénéficiares_av:31"'

label variable Nb_benef_av__31c `"Nb_bénéficiares_av:31c"'

label variable Nb_benef_av__32 `"Nb_bénéficiares_av:32"'

label variable Nb_benef_av__32c `"Nb_bénéficiares_av:32c"'

label variable Nb_benef_av__33 `"Nb_bénéficiares_av:33"'

label variable Nb_benef_av__33c `"Nb_bénéficiares_av:33c"'

label variable Nb_benef_av__34 `"Nb_bénéficiares_av:34"'

label variable Nb_benef_av__34c `"Nb_bénéficiares_av:34c"'

label variable Nb_benef_av__35 `"Nb_bénéficiares_av:35"'

label variable Nb_benef_av__35c `"Nb_bénéficiares_av:35c"'

label variable Nb_benef_av__36 `"Nb_bénéficiares_av:36"'

label variable Nb_benef_av__36c `"Nb_bénéficiares_av:36c"'

label variable Nb_benef_av__37 `"Nb_bénéficiares_av:37"'

label variable Nb_benef_av__37c `"Nb_bénéficiares_av:37c"'

label variable Nb_benef_av__38 `"Nb_bénéficiares_av:38"'

label variable Nb_benef_av__38c `"Nb_bénéficiares_av:38c"'

label variable Nb_benef_av__39 `"Nb_bénéficiares_av:39"'

label variable Nb_benef_av__39c `"Nb_bénéficiares_av:39c"'

label variable Nb_benef_av__40 `"Nb_bénéficiares_av:40"'

label variable Nb_benef_av__40c `"Nb_bénéficiares_av:40c"'

label variable Nb_benef_av__41 `"Nb_bénéficiares_av:41"'

label variable Nb_benef_av__41c `"Nb_bénéficiares_av:41c"'

label variable Nb_benef_av__42 `"Nb_bénéficiares_av:42"'

label variable Nb_benef_av__42c `"Nb_bénéficiares_av:42c"'

label variable Nb_benef_av__43 `"Nb_bénéficiares_av:43"'

label variable Nb_benef_av__43c `"Nb_bénéficiares_av:43c"'

label variable Nb_benef_av__44 `"Nb_bénéficiares_av:44"'

label variable Nb_benef_av__44c `"Nb_bénéficiares_av:44c"'

label variable Nb_benef_av__45 `"Nb_bénéficiares_av:45"'

label variable Nb_benef_av__45c `"Nb_bénéficiares_av:45c"'

label variable Nb_benef_av__46 `"Nb_bénéficiares_av:46"'

label variable Nb_benef_av__46c `"Nb_bénéficiares_av:46c"'

label variable Nb_benef_av__47 `"Nb_bénéficiares_av:47"'

label variable Nb_benef_av__47c `"Nb_bénéficiares_av:47c"'

label variable Nb_benef_av__48 `"Nb_bénéficiares_av:48"'

label variable Nb_benef_av__48c `"Nb_bénéficiares_av:48c"'

label variable Nb_benef_av__49 `"Nb_bénéficiares_av:49"'

label variable Nb_benef_av__49c `"Nb_bénéficiares_av:49c"'

label variable Nb_benef_av__50 `"Nb_bénéficiares_av:50"'

label variable Nb_benef_av__50c `"Nb_bénéficiares_av:50c"'

label variable Nb_benef_av__51 `"Nb_bénéficiares_av:51"'

label variable Nb_benef_av__51c `"Nb_bénéficiares_av:51c"'

label variable Nb_benef_av__52 `"Nb_bénéficiares_av:52"'

label variable Nb_benef_av__52c `"Nb_bénéficiares_av:52c"'

label variable Nb_benef_av__53 `"Nb_bénéficiares_av:53"'

label variable Nb_benef_av__53c `"Nb_bénéficiares_av:53c"'

label variable Nb_benef_av__54 `"Nb_bénéficiares_av:54"'

label variable Nb_benef_av__54c `"Nb_bénéficiares_av:54c"'

label variable Nb_benef_av__55 `"Nb_bénéficiares_av:55"'

label variable Nb_benef_av__55c `"Nb_bénéficiares_av:55c"'

label variable Nb_benef_av__56 `"Nb_bénéficiares_av:56"'

label variable Nb_benef_av__56c `"Nb_bénéficiares_av:56c"'

label variable Nb_benef_av__57 `"Nb_bénéficiares_av:57"'

label variable Nb_benef_av__57c `"Nb_bénéficiares_av:57c"'

label variable Nb_benef_av__58 `"Nb_bénéficiares_av:58"'

label variable Nb_benef_av__58c `"Nb_bénéficiares_av:58c"'

label variable Nb_benef_av__59 `"Nb_bénéficiares_av:59"'

label variable Nb_benef_av__59c `"Nb_bénéficiares_av:59c"'

label variable Nb_benef_av__60 `"Nb_bénéficiares_av:60"'

label variable Nb_benef_av__60c `"Nb_bénéficiares_av:60c"'

label variable Nb_benef_av__61 `"Nb_bénéficiares_av:61"'

label variable Nb_benef_av__61c `"Nb_bénéficiares_av:61c"'

label variable Nb_benef_av__62 `"Nb_bénéficiares_av:62"'

label variable Nb_benef_av__62c `"Nb_bénéficiares_av:62c"'

label variable Nb_benef_av__63 `"Nb_bénéficiares_av:63"'

label variable Nb_benef_av__63c `"Nb_bénéficiares_av:63c"'

label variable Nb_benef_av__64 `"Nb_bénéficiares_av:64"'

label variable Nb_benef_av__64c `"Nb_bénéficiares_av:64c"'

label variable Nb_benef_av__65 `"Nb_bénéficiares_av:65"'

label variable Nb_benef_av__65c `"Nb_bénéficiares_av:65c"'

label variable Nb_benef_av__66 `"Nb_bénéficiares_av:66"'

label variable Nb_benef_av__66c `"Nb_bénéficiares_av:66c"'

label variable Nb_benef_av__67 `"Nb_bénéficiares_av:67"'

label variable Nb_benef_av__67c `"Nb_bénéficiares_av:67c"'

label variable Nb_benef_av__68 `"Nb_bénéficiares_av:68"'

label variable Nb_benef_av__68c `"Nb_bénéficiares_av:68c"'

label variable Nb_benef_av__69 `"Nb_bénéficiares_av:69"'

label variable Nb_benef_av__69c `"Nb_bénéficiares_av:69c"'

label variable Nb_benef_av__70 `"Nb_bénéficiares_av:70"'

label variable Nb_benef_av__70c `"Nb_bénéficiares_av:70c"'

label variable Nb_benef_av__71 `"Nb_bénéficiares_av:71"'

label variable Nb_benef_av__71c `"Nb_bénéficiares_av:71c"'

label variable Nb_benef_av__72 `"Nb_bénéficiares_av:72"'

label variable Nb_benef_av__72c `"Nb_bénéficiares_av:72c"'

label variable Nb_benef_av__73 `"Nb_bénéficiares_av:73"'

label variable Nb_benef_av__73c `"Nb_bénéficiares_av:73c"'

label variable Nb_benef_av__74 `"Nb_bénéficiares_av:74"'

label variable Nb_benef_av__74c `"Nb_bénéficiares_av:74c"'

label variable Nb_benef_av__75 `"Nb_bénéficiares_av:75"'

label variable Nb_benef_av__75c `"Nb_bénéficiares_av:75c"'

label variable Nb_benef_av__76 `"Nb_bénéficiares_av:76"'

label variable Nb_benef_av__76c `"Nb_bénéficiares_av:76c"'

label variable Nb_benef_av__77 `"Nb_bénéficiares_av:77"'

label variable Nb_benef_av__77c `"Nb_bénéficiares_av:77c"'

label variable Nb_benef_av__78 `"Nb_bénéficiares_av:78"'

label variable Nb_benef_av__78c `"Nb_bénéficiares_av:78c"'

label variable Nb_benef_av__79 `"Nb_bénéficiares_av:79"'

label variable Nb_benef_av__79c `"Nb_bénéficiares_av:79c"'

label variable Nb_benef_av__80 `"Nb_bénéficiares_av:80"'

label variable Nb_benef_av__80c `"Nb_bénéficiares_av:80c"'

label variable Nb_benef_av__81 `"Nb_bénéficiares_av:81"'

label variable Nb_benef_av__81c `"Nb_bénéficiares_av:81c"'

label variable Nb_benef_av__82 `"Nb_bénéficiares_av:82"'

label variable Nb_benef_av__82c `"Nb_bénéficiares_av:82c"'

label variable Nb_benef_av__83 `"Nb_bénéficiares_av:83"'

label variable Nb_benef_av__83c `"Nb_bénéficiares_av:83c"'

label variable Nb_benef_av__84 `"Nb_bénéficiares_av:84"'

label variable Nb_benef_av__84c `"Nb_bénéficiares_av:84c"'

label variable Nb_benef_av__85 `"Nb_bénéficiares_av:85"'

label variable Nb_benef_av__85c `"Nb_bénéficiares_av:85c"'

label variable Nb_benef_av__86 `"Nb_bénéficiares_av:86"'

label variable Nb_benef_av__86c `"Nb_bénéficiares_av:86c"'

label variable Nb_benef_av__87 `"Nb_bénéficiares_av:87"'

label variable Nb_benef_av__87c `"Nb_bénéficiares_av:87c"'

label variable Nb_benef_av__88 `"Nb_bénéficiares_av:88"'

label variable Nb_benef_av__88c `"Nb_bénéficiares_av:88c"'

label variable Nb_benef_av__89 `"Nb_bénéficiares_av:89"'

label variable Nb_benef_av__89c `"Nb_bénéficiares_av:89c"'

label variable Nb_benef_av__90 `"Nb_bénéficiares_av:90"'

label variable Nb_benef_av__90c `"Nb_bénéficiares_av:90c"'

label variable Nb_benef_av__91 `"Nb_bénéficiares_av:91"'

label variable Nb_benef_av__91c `"Nb_bénéficiares_av:91c"'

label variable Nb_benef_av__92 `"Nb_bénéficiares_av:92"'

label variable Nb_benef_av__92c `"Nb_bénéficiares_av:92c"'

label variable Nb_benef_av__93 `"Nb_bénéficiares_av:93"'

label variable Nb_benef_av__93c `"Nb_bénéficiares_av:93c"'

label variable Nb_benef_av__94 `"Nb_bénéficiares_av:94"'

label variable Nb_benef_av__94c `"Nb_bénéficiares_av:94c"'

label variable Nb_benef_av__95 `"Nb_bénéficiares_av:95"'

label variable Nb_benef_av__95c `"Nb_bénéficiares_av:95c"'

label variable Nb_benef_av__96 `"Nb_bénéficiares_av:96"'

label variable Nb_benef_av__96c `"Nb_bénéficiares_av:96c"'

label variable Nb_benef_av__97 `"Nb_bénéficiares_av:97"'

label variable Nb_benef_av__97c `"Nb_bénéficiares_av:97c"'

label variable Nb_benef_av__98 `"Nb_bénéficiares_av:98"'

label variable Nb_benef_av__98c `"Nb_bénéficiares_av:98c"'

label variable Nb_benef_av__99 `"Nb_bénéficiares_av:99"'

label variable Nb_benef_av__99c `"Nb_bénéficiares_av:99c"'

label variable Nb_benef_av__100 `"Nb_bénéficiares_av:100"'

label variable Nb_benef_av__100c `"Nb_bénéficiares_av:100c"'

label variable Nb_benef_av__101 `"Nb_bénéficiares_av:101"'

label variable Nb_benef_av__101c `"Nb_bénéficiares_av:101c"'

label variable Nb_benef_av__102 `"Nb_bénéficiares_av:102"'

label variable Nb_benef_av__102c `"Nb_bénéficiares_av:102c"'

label variable Nb_benef_av__103 `"Nb_bénéficiares_av:103"'

label variable Nb_benef_av__103c `"Nb_bénéficiares_av:103c"'

label variable Nb_benef_av__104 `"Nb_bénéficiares_av:104"'

label variable Nb_benef_av__104c `"Nb_bénéficiares_av:104c"'

label variable Nb_benef_av__105 `"Nb_bénéficiares_av:105"'

label variable Nb_benef_av__105c `"Nb_bénéficiares_av:105c"'

label variable Nb_benef_av__106 `"Nb_bénéficiares_av:106"'

label variable Nb_benef_av__106c `"Nb_bénéficiares_av:106c"'

label variable Nb_benef_av__107 `"Nb_bénéficiares_av:107"'

label variable Nb_benef_av__107c `"Nb_bénéficiares_av:107c"'

label variable Nb_benef_av__108 `"Nb_bénéficiares_av:108"'

label variable Nb_benef_av__108c `"Nb_bénéficiares_av:108c"'

label variable Nb_benef_av__109 `"Nb_bénéficiares_av:109"'

label variable Nb_benef_av__109c `"Nb_bénéficiares_av:109c"'

label variable Nb_benef_av__110 `"Nb_bénéficiares_av:110"'

label variable Nb_benef_av__110c `"Nb_bénéficiares_av:110c"'

label variable Nb_benef_av__111 `"Nb_bénéficiares_av:111"'

label variable Nb_benef_av__111c `"Nb_bénéficiares_av:111c"'

label variable Nb_benef_av__112 `"Nb_bénéficiares_av:112"'

label variable Nb_benef_av__112c `"Nb_bénéficiares_av:112c"'

label variable Nb_benef_av__113 `"Nb_bénéficiares_av:113"'

label variable Nb_benef_av__113c `"Nb_bénéficiares_av:113c"'

label variable Nb_benef_av__114 `"Nb_bénéficiares_av:114"'

label variable Nb_benef_av__114c `"Nb_bénéficiares_av:114c"'

label variable Nb_benef_av__115 `"Nb_bénéficiares_av:115"'

label variable Nb_benef_av__115c `"Nb_bénéficiares_av:115c"'

label variable Nb_benef_av__116 `"Nb_bénéficiares_av:116"'

label variable Nb_benef_av__116c `"Nb_bénéficiares_av:116c"'

label variable Nb_benef_av__117 `"Nb_bénéficiares_av:117"'

label variable Nb_benef_av__117c `"Nb_bénéficiares_av:117c"'

label variable Nb_benef_av__118 `"Nb_bénéficiares_av:118"'

label variable Nb_benef_av__118c `"Nb_bénéficiares_av:118c"'

label variable Nb_benef_av__119 `"Nb_bénéficiares_av:119"'

label variable Nb_benef_av__119c `"Nb_bénéficiares_av:119c"'

label variable Nb_benef_av__120 `"Nb_bénéficiares_av:120"'

label variable Nb_benef_av__120c `"Nb_bénéficiares_av:120c"'

label variable Nb_benef_av__121 `"Nb_bénéficiares_av:121"'

label variable Nb_benef_av__121c `"Nb_bénéficiares_av:121c"'

label variable Nb_benef_av__122 `"Nb_bénéficiares_av:122"'

label variable Nb_benef_av__122c `"Nb_bénéficiares_av:122c"'

label variable Nb_benef_av__123 `"Nb_bénéficiares_av:123"'

label variable Nb_benef_av__123c `"Nb_bénéficiares_av:123c"'

label variable Nb_benef_av__124 `"Nb_bénéficiares_av:124"'

label variable Nb_benef_av__124c `"Nb_bénéficiares_av:124c"'

label variable Nb_benef_av__125 `"Nb_bénéficiares_av:125"'

label variable Nb_benef_av__125c `"Nb_bénéficiares_av:125c"'

label variable Nb_benef_av__126 `"Nb_bénéficiares_av:126"'

label variable Nb_benef_av__126c `"Nb_bénéficiares_av:126c"'

label variable Nb_benef_av__127 `"Nb_bénéficiares_av:127"'

label variable Nb_benef_av__127c `"Nb_bénéficiares_av:127c"'

label variable Nb_benef_av__128 `"Nb_bénéficiares_av:128"'

label variable Nb_benef_av__128c `"Nb_bénéficiares_av:128c"'

label variable Nb_benef_av__129 `"Nb_bénéficiares_av:129"'

label variable Nb_benef_av__129c `"Nb_bénéficiares_av:129c"'

label variable Nb_benef_av__130 `"Nb_bénéficiares_av:130"'

label variable Nb_benef_av__130c `"Nb_bénéficiares_av:130c"'

label variable Nb_benef_av__131 `"Nb_bénéficiares_av:131"'

label variable Nb_benef_av__131c `"Nb_bénéficiares_av:131c"'

label variable Nb_benef_av__132 `"Nb_bénéficiares_av:132"'

label variable Nb_benef_av__132c `"Nb_bénéficiares_av:132c"'

label variable Nb_benef_av__133 `"Nb_bénéficiares_av:133"'

label variable Nb_benef_av__133c `"Nb_bénéficiares_av:133c"'

label variable Nb_benef_av__134 `"Nb_bénéficiares_av:134"'

label variable Nb_benef_av__134c `"Nb_bénéficiares_av:134c"'

label variable Nb_benef_av__135 `"Nb_bénéficiares_av:135"'

label variable Nb_benef_av__135c `"Nb_bénéficiares_av:135c"'

label variable Nb_benef_av__136 `"Nb_bénéficiares_av:136"'

label variable Nb_benef_av__136c `"Nb_bénéficiares_av:136c"'

label variable Nb_benef_av__137 `"Nb_bénéficiares_av:137"'

label variable Nb_benef_av__137c `"Nb_bénéficiares_av:137c"'

label variable Nb_benef_av__138 `"Nb_bénéficiares_av:138"'

label variable Nb_benef_av__138c `"Nb_bénéficiares_av:138c"'

label variable Nb_benef_av__139 `"Nb_bénéficiares_av:139"'

label variable Nb_benef_av__139c `"Nb_bénéficiares_av:139c"'

label variable Nb_benef_av__140 `"Nb_bénéficiares_av:140"'

label variable Nb_benef_av__140c `"Nb_bénéficiares_av:140c"'

label variable Nb_benef_av__141 `"Nb_bénéficiares_av:141"'

label variable Nb_benef_av__141c `"Nb_bénéficiares_av:141c"'

label variable Nb_benef_av__142 `"Nb_bénéficiares_av:142"'

label variable Nb_benef_av__142c `"Nb_bénéficiares_av:142c"'

label variable Nb_benef_av__143 `"Nb_bénéficiares_av:143"'

label variable Nb_benef_av__143c `"Nb_bénéficiares_av:143c"'

label variable Nb_benef_av__144 `"Nb_bénéficiares_av:144"'

label variable Nb_benef_av__144c `"Nb_bénéficiares_av:144c"'

label variable Nb_benef_av__145 `"Nb_bénéficiares_av:145"'

label variable Nb_benef_av__145c `"Nb_bénéficiares_av:145c"'

label variable Nb_benef_av__146 `"Nb_bénéficiares_av:146"'

label variable Nb_benef_av__146c `"Nb_bénéficiares_av:146c"'

label variable Nb_benef_av__147 `"Nb_bénéficiares_av:147"'

label variable Nb_benef_av__147c `"Nb_bénéficiares_av:147c"'

label variable Nb_benef_av__148 `"Nb_bénéficiares_av:148"'

label variable Nb_benef_av__148c `"Nb_bénéficiares_av:148c"'

label variable Nb_benef_av__149 `"Nb_bénéficiares_av:149"'

label variable Nb_benef_av__149c `"Nb_bénéficiares_av:149c"'

label variable Nb_benef_av__150 `"Nb_bénéficiares_av:150"'

label variable Nb_benef_av__150c `"Nb_bénéficiares_av:150c"'

label variable Nb_benef_av__151 `"Nb_bénéficiares_av:151"'

label variable Nb_benef_av__151c `"Nb_bénéficiares_av:151c"'

label variable Nb_benef_av__152 `"Nb_bénéficiares_av:152"'

label variable Nb_benef_av__152c `"Nb_bénéficiares_av:152c"'

label variable Nb_benef_av__153 `"Nb_bénéficiares_av:153"'

label variable Nb_benef_av__153c `"Nb_bénéficiares_av:153c"'

label variable Nb_benef_av__154 `"Nb_bénéficiares_av:154"'

label variable Nb_benef_av__154c `"Nb_bénéficiares_av:154c"'

label variable Nb_benef_av__155 `"Nb_bénéficiares_av:155"'

label variable Nb_benef_av__155c `"Nb_bénéficiares_av:155c"'

label variable Nb_benef_av__156 `"Nb_bénéficiares_av:156"'

label variable Nb_benef_av__156c `"Nb_bénéficiares_av:156c"'

label variable Nb_benef_av__157 `"Nb_bénéficiares_av:157"'

label variable Nb_benef_av__157c `"Nb_bénéficiares_av:157c"'

label variable Nb_benef_av__158 `"Nb_bénéficiares_av:158"'

label variable Nb_benef_av__158c `"Nb_bénéficiares_av:158c"'

label variable Nb_benef_av__159 `"Nb_bénéficiares_av:159"'

label variable Nb_benef_av__159c `"Nb_bénéficiares_av:159c"'

label variable Nb_benef_av__160 `"Nb_bénéficiares_av:160"'

label variable Nb_benef_av__160c `"Nb_bénéficiares_av:160c"'

label variable Nb_benef_av__161 `"Nb_bénéficiares_av:161"'

label variable Nb_benef_av__161c `"Nb_bénéficiares_av:161c"'

label variable Nb_benef_av__162 `"Nb_bénéficiares_av:162"'

label variable Nb_benef_av__162c `"Nb_bénéficiares_av:162c"'

label variable Nb_benef_av__163 `"Nb_bénéficiares_av:163"'

label variable Nb_benef_av__163c `"Nb_bénéficiares_av:163c"'

label variable Nb_benef_av__164 `"Nb_bénéficiares_av:164"'

label variable Nb_benef_av__164c `"Nb_bénéficiares_av:164c"'

label variable Nb_benef_av__165 `"Nb_bénéficiares_av:165"'

label variable Nb_benef_av__165c `"Nb_bénéficiares_av:165c"'

label variable Nb_benef_av__166 `"Nb_bénéficiares_av:166"'

label variable Nb_benef_av__166c `"Nb_bénéficiares_av:166c"'

label variable Nb_benef_av__167 `"Nb_bénéficiares_av:167"'

label variable Nb_benef_av__167c `"Nb_bénéficiares_av:167c"'

label variable Nb_benef_av__168 `"Nb_bénéficiares_av:168"'

label variable Nb_benef_av__168c `"Nb_bénéficiares_av:168c"'

label variable Nb_benef_av__169 `"Nb_bénéficiares_av:169"'

label variable Nb_benef_av__169c `"Nb_bénéficiares_av:169c"'

label variable Nb_benef_av__170 `"Nb_bénéficiares_av:170"'

label variable Nb_benef_av__170c `"Nb_bénéficiares_av:170c"'

label variable Nb_benef_av__171 `"Nb_bénéficiares_av:171"'

label variable Nb_benef_av__171c `"Nb_bénéficiares_av:171c"'

label variable Nb_benef_av__172 `"Nb_bénéficiares_av:172"'

label variable Nb_benef_av__172c `"Nb_bénéficiares_av:172c"'

label variable Nb_benef_av__173 `"Nb_bénéficiares_av:173"'

label variable Nb_benef_av__173c `"Nb_bénéficiares_av:173c"'

label variable Nb_benef_av__174 `"Nb_bénéficiares_av:174"'

label variable Nb_benef_av__174c `"Nb_bénéficiares_av:174c"'

label variable Nb_benef_av__175 `"Nb_bénéficiares_av:175"'

label variable Nb_benef_av__175c `"Nb_bénéficiares_av:175c"'

label variable Nb_benef_av__176 `"Nb_bénéficiares_av:176"'

label variable Nb_benef_av__176c `"Nb_bénéficiares_av:176c"'

label variable Nb_benef_av__177 `"Nb_bénéficiares_av:177"'

label variable Nb_benef_av__177c `"Nb_bénéficiares_av:177c"'

label variable Nb_benef_av__178 `"Nb_bénéficiares_av:178"'

label variable Nb_benef_av__178c `"Nb_bénéficiares_av:178c"'

label variable Nb_benef_av__179 `"Nb_bénéficiares_av:179"'

label variable Nb_benef_av__179c `"Nb_bénéficiares_av:179c"'

label variable Nb_benef_av__180 `"Nb_bénéficiares_av:180"'

label variable Nb_benef_av__180c `"Nb_bénéficiares_av:180c"'

label variable Nb_benef_av__181 `"Nb_bénéficiares_av:181"'

label variable Nb_benef_av__181c `"Nb_bénéficiares_av:181c"'

label variable Nb_benef_av__182 `"Nb_bénéficiares_av:182"'

label variable Nb_benef_av__182c `"Nb_bénéficiares_av:182c"'

label variable Nb_benef_av__183 `"Nb_bénéficiares_av:183"'

label variable Nb_benef_av__183c `"Nb_bénéficiares_av:183c"'

label variable Nb_benef_av__184 `"Nb_bénéficiares_av:184"'

label variable Nb_benef_av__184c `"Nb_bénéficiares_av:184c"'

label variable Nb_benef_av__185 `"Nb_bénéficiares_av:185"'

label variable Nb_benef_av__185c `"Nb_bénéficiares_av:185c"'

label variable Nb_benef_av__186 `"Nb_bénéficiares_av:186"'

label variable Nb_benef_av__186c `"Nb_bénéficiares_av:186c"'

label variable Nb_benef_av__187 `"Nb_bénéficiares_av:187"'

label variable Nb_benef_av__187c `"Nb_bénéficiares_av:187c"'

label variable Nb_benef_av__188 `"Nb_bénéficiares_av:188"'

label variable Nb_benef_av__188c `"Nb_bénéficiares_av:188c"'

label variable Nb_benef_av__189 `"Nb_bénéficiares_av:189"'

label variable Nb_benef_av__189c `"Nb_bénéficiares_av:189c"'

label variable Nb_benef_av__190 `"Nb_bénéficiares_av:190"'

label variable Nb_benef_av__190c `"Nb_bénéficiares_av:190c"'

label variable Nb_benef_av__191 `"Nb_bénéficiares_av:191"'

label variable Nb_benef_av__191c `"Nb_bénéficiares_av:191c"'

label variable Nb_benef_av__192 `"Nb_bénéficiares_av:192"'

label variable Nb_benef_av__192c `"Nb_bénéficiares_av:192c"'

label variable Nb_benef_av__193 `"Nb_bénéficiares_av:193"'

label variable Nb_benef_av__193c `"Nb_bénéficiares_av:193c"'

label variable Nb_benef_av__194 `"Nb_bénéficiares_av:194"'

label variable Nb_benef_av__194c `"Nb_bénéficiares_av:194c"'

label variable Nb_benef_av__195 `"Nb_bénéficiares_av:195"'

label variable Nb_benef_av__195c `"Nb_bénéficiares_av:195c"'

label variable Nb_benef_av__196 `"Nb_bénéficiares_av:196"'

label variable Nb_benef_av__196c `"Nb_bénéficiares_av:196c"'

label variable Nb_benef_av__197 `"Nb_bénéficiares_av:197"'

label variable Nb_benef_av__197c `"Nb_bénéficiares_av:197c"'

label variable Nb_benef_av__198 `"Nb_bénéficiares_av:198"'

label variable Nb_benef_av__198c `"Nb_bénéficiares_av:198c"'

label variable Nb_benef_av__199 `"Nb_bénéficiares_av:199"'

label variable Nb_benef_av__199c `"Nb_bénéficiares_av:199c"'

label variable Nb_beneficiares_av `"Nb_bénéficiares_av"'

label variable Nb_beneficiares_ap `"Nb_bénéficiares_ap"'

label variable Total_NonReponse_Roster2 `"Total_NonReponse_Roster2"'

label define Infos_dispos_2 1 `"Oui, je peux obtenir ces informations."' 2 `"Non, je nai pas accès à ces informations"' 
label values Infos_dispos_2 Infos_dispos_2
label variable Infos_dispos_2 `"Informations disponibles ?"'

label variable Demande_contact_2 `"Demande_contact_2"'

label define S3Q1_ASSOLIK 1 `"Pas dimpact"' 2 `"Impact faible"' 3 `"Impact modéré"' 4 `"Impact sévère"' 5 `"Impact critique"' 
label values S3Q1_ASSOLIK S3Q1_ASSOLIK
label variable S3Q1_ASSOLIK `"Asso_Impact_Lik"'

label define S3Q2_ASSOARRET1 1 `"Oui"' 2 `"Non"' 
label values S3Q2_ASSOARRET1 S3Q2_ASSOARRET1
label variable S3Q2_ASSOARRET1 `"Cessation_activite"'

label variable S3Q2_ASSOARRET2__1 `"Cessation_activite:Interruption d’activité (arrêt temporaire ou définitif) ❌​"'

label variable S3Q2_ASSOARRET2__2 `"Cessation_activite:Réduction d’activité 📉​"'

label variable S3Q3_IMPACT__1 `"Impact_exactions:Humains (perte de bénévoles, licenciement de salariés, départ des salariés sans licenciements...)"'

label variable S3Q3_IMPACT__2 `"Impact_exactions:Financiers (baisse de financement, perte de subventions...)"'

label variable S3Q3_IMPACT__3 `"Impact_exactions:Logistiques (destructions de locaux, d’équipements, pillages...)"'

label variable S3Q3_IMPACT__4 `"Impact_exactions:Partenariats affaiblis ou annulés"'

label variable S3Q3_IMPACT__5 `"Impact_exactions:Baisse de la demande de services (annulation dévénements, suspension ou report de projets, ...)"'

label variable S3Q3_IMPACT__6 `"Impact_exactions:Hausse de la demande de services (distributions alimentaires, soutien psychologique, hébergement durgence, ...)"'

label variable S3Q3_IMPACT__7 `"Impact_exactions:Autres (précisez)"'

label variable S4Q1_FREINS__1 `"Freins_activité:Manque de ressources humaines (bénévoles, salariés, adhérents...)"'

label variable S4Q1_FREINS__2 `"Freins_activité:Difficultés financières (manque de trésorerie, difficultés daccès à un crédit...)"'

label variable S4Q1_FREINS__3 `"Freins_activité:Difficultés daccès à des financements privés"'

label variable S4Q1_FREINS__4 `"Freins_activité:Difficultés daccès aux subventions publiques"'

label variable S4Q1_FREINS__5 `"Freins_activité:Problèmes de sécurité (locaux, personnel...)"'

label variable S4Q1_FREINS__6 `"Freins_activité:Problèmes logistiques (accès aux locaux, matériels, véhicules, problèmes dapprovisionnement...)"'

label variable S4Q1_FREINS__7 `"Freins_activité:Autres freins (précisez)"'

label variable S4Q2_PrecisionFreins `"precision sur les freins"'

label variable S4Q3_DIFFIC `"Principales_difficultes"'

label variable S5Q1_LEVIERS__1 `"Leviers_mobilises:Recherche et diversification des sources de financement (appel aux dons, cagnotte en ligne...)"'

label variable S5Q1_LEVIERS__2 `"Leviers_mobilises:Lobbying auprès des décideurs"'

label variable S5Q1_LEVIERS__3 `"Leviers_mobilises:Renforcement des partenariats (nouvelles collaborations, fédération dassociations, réseau de solidarité, initiatives citoyennes, ...)"'

label variable S5Q1_LEVIERS__4 `"Leviers_mobilises:Amélioration de la gouvernance (réorganisation interne, ...)"'

label variable S5Q1_LEVIERS__5 `"Leviers_mobilises:Adaptation de la gamme des services proposés (activités, horaires, ...)"'

label variable S5Q1_LEVIERS__6 `"Leviers_mobilises:Optimisation des coûts et des ressources (réduction des dépenses, ...)"'

label variable S5Q1_LEVIERS__7 `"Leviers_mobilises:Mobilisation et fidélisation des bénévoles"'

label variable S5Q1_LEVIERS__8 `"Leviers_mobilises:Élargissement de lactivité pour toucher de nouveaux bénéficiaires"'

label variable S5Q1_LEVIERS__9 `"Leviers_mobilises:Formation et montée en compétence des équipes"'

label variable S5Q1_LEVIERS__10 `"Leviers_mobilises:Communication / Renforcement de la présence sur les réseaux sociaux"'

label variable S5Q1_LEVIERS__11 `"Leviers_mobilises:Autres leviers (précisez)"'

label variable S5Q2_SOUTFINCOMPL__1 `"Soutien_financier_complementaire:Aucun"'

label variable S5Q2_SOUTFINCOMPL__2 `"Soutien_financier_complementaire:Subventions"'

label variable S5Q2_SOUTFINCOMPL__3 `"Soutien_financier_complementaire:Financements"'

label variable S5Q2_SOUTFINCOMPL__4 `"Soutien_financier_complementaire:Chômage partiel"'

label variable S5Q2_SOUTFINCOMPL__5 `"Soutien_financier_complementaire:Indemnité dassurance"'

label variable S5Q2_SOUTFINCOMPL__6 `"Soutien_financier_complementaire:Autres (précisez)"'

label variable S5Q2_AUCUNRAISONS `"Raisons_aucun_soutien_financier"'

label variable S5Q2bis_PrecisionSoutien `"S5Q2bis_PrecisionSoutien"'

label define S6Q1_RESSENTILIK 1 `"Très optimiste"' 2 `"Plutôt optimiste"' 3 `"Incertain.e"' 4 `"Plutôt pessimiste"' 5 `"Très pessimiste"' 
label values S6Q1_RESSENTILIK S6Q1_RESSENTILIK
label variable S6Q1_RESSENTILIK `"Ressenti_Likert_post-crise"'

label define S6Q2_RETOURAVCRISE 1 `"entre 0 et 3 mois"' 2 `"entre 3 et 6 mois"' 3 `"entre 6 et 12 mois"' 4 `"Plus de 12 mois"' 6 `"Risque élevé de dissolution de lassociation"' 
label values S6Q2_RETOURAVCRISE S6Q2_RETOURAVCRISE
label variable S6Q2_RETOURAVCRISE `"Retour_niveau_avant-crise"'

label variable S6Q3_BESOINSPRIO__0 `"Besoins_prioritaires:0"'

label variable S6Q3_BESOINSPRIO__0c `"Besoins_prioritaires:0c"'

label variable S6Q3_BESOINSPRIO__1 `"Besoins_prioritaires:1"'

label variable S6Q3_BESOINSPRIO__1c `"Besoins_prioritaires:1c"'

label variable S6Q3_BESOINSPRIO__2 `"Besoins_prioritaires:2"'

label variable S6Q3_BESOINSPRIO__2c `"Besoins_prioritaires:2c"'

label variable S6Q3_BESOINSPRIO__3 `"Besoins_prioritaires:3"'

label variable S6Q3_BESOINSPRIO__3c `"Besoins_prioritaires:3c"'

label variable S6Q3_BESOINSPRIO__4 `"Besoins_prioritaires:4"'

label variable S6Q3_BESOINSPRIO__4c `"Besoins_prioritaires:4c"'

label variable S6Q3_BESOINSPRIO__5 `"Besoins_prioritaires:5"'

label variable S6Q3_BESOINSPRIO__5c `"Besoins_prioritaires:5c"'

label variable S6Q3_BESOINSPRIO__6 `"Besoins_prioritaires:6"'

label variable S6Q3_BESOINSPRIO__6c `"Besoins_prioritaires:6c"'

label variable S6Q3_BESOINSPRIO__7 `"Besoins_prioritaires:7"'

label variable S6Q3_BESOINSPRIO__7c `"Besoins_prioritaires:7c"'

label variable S6Q3_BESOINSPRIO__8 `"Besoins_prioritaires:8"'

label variable S6Q3_BESOINSPRIO__8c `"Besoins_prioritaires:8c"'

label variable S6Q3_BESOINSPRIO__9 `"Besoins_prioritaires:9"'

label variable S6Q3_BESOINSPRIO__9c `"Besoins_prioritaires:9c"'

label variable S6Q3_BESOINSPRIO__10 `"Besoins_prioritaires:10"'

label variable S6Q3_BESOINSPRIO__10c `"Besoins_prioritaires:10c"'

label variable S6Q3_BESOINSPRIO__11 `"Besoins_prioritaires:11"'

label variable S6Q3_BESOINSPRIO__11c `"Besoins_prioritaires:11c"'

label variable S6Q3_BESOINSPRIO__12 `"Besoins_prioritaires:12"'

label variable S6Q3_BESOINSPRIO__12c `"Besoins_prioritaires:12c"'

label variable S6Q3_BESOINSPRIO__13 `"Besoins_prioritaires:13"'

label variable S6Q3_BESOINSPRIO__13c `"Besoins_prioritaires:13c"'

label variable S6Q3_BESOINSPRIO__14 `"Besoins_prioritaires:14"'

label variable S6Q3_BESOINSPRIO__14c `"Besoins_prioritaires:14c"'

label variable S6Q3_BESOINSPRIO__15 `"Besoins_prioritaires:15"'

label variable S6Q3_BESOINSPRIO__15c `"Besoins_prioritaires:15c"'

label variable S6Q3_BESOINSPRIO__16 `"Besoins_prioritaires:16"'

label variable S6Q3_BESOINSPRIO__16c `"Besoins_prioritaires:16c"'

label variable S6Q3_BESOINSPRIO__17 `"Besoins_prioritaires:17"'

label variable S6Q3_BESOINSPRIO__17c `"Besoins_prioritaires:17c"'

label variable S6Q3_BESOINSPRIO__18 `"Besoins_prioritaires:18"'

label variable S6Q3_BESOINSPRIO__18c `"Besoins_prioritaires:18c"'

label variable S6Q3_BESOINSPRIO__19 `"Besoins_prioritaires:19"'

label variable S6Q3_BESOINSPRIO__19c `"Besoins_prioritaires:19c"'

label variable S6Q3_BESOINSPRIO__20 `"Besoins_prioritaires:20"'

label variable S6Q3_BESOINSPRIO__20c `"Besoins_prioritaires:20c"'

label variable S6Q3_BESOINSPRIO__21 `"Besoins_prioritaires:21"'

label variable S6Q3_BESOINSPRIO__21c `"Besoins_prioritaires:21c"'

label variable S6Q3_BESOINSPRIO__22 `"Besoins_prioritaires:22"'

label variable S6Q3_BESOINSPRIO__22c `"Besoins_prioritaires:22c"'

label variable S6Q3_BESOINSPRIO__23 `"Besoins_prioritaires:23"'

label variable S6Q3_BESOINSPRIO__23c `"Besoins_prioritaires:23c"'

label variable S6Q3_BESOINSPRIO__24 `"Besoins_prioritaires:24"'

label variable S6Q3_BESOINSPRIO__24c `"Besoins_prioritaires:24c"'

label variable S6Q3_BESOINSPRIO__25 `"Besoins_prioritaires:25"'

label variable S6Q3_BESOINSPRIO__25c `"Besoins_prioritaires:25c"'

label variable S6Q3_BESOINSPRIO__26 `"Besoins_prioritaires:26"'

label variable S6Q3_BESOINSPRIO__26c `"Besoins_prioritaires:26c"'

label variable S6Q3_BESOINSPRIO__27 `"Besoins_prioritaires:27"'

label variable S6Q3_BESOINSPRIO__27c `"Besoins_prioritaires:27c"'

label variable S6Q3_BESOINSPRIO__28 `"Besoins_prioritaires:28"'

label variable S6Q3_BESOINSPRIO__28c `"Besoins_prioritaires:28c"'

label variable S6Q3_BESOINSPRIO__29 `"Besoins_prioritaires:29"'

label variable S6Q3_BESOINSPRIO__29c `"Besoins_prioritaires:29c"'

label variable S6Q3_BESOINSPRIO__30 `"Besoins_prioritaires:30"'

label variable S6Q3_BESOINSPRIO__30c `"Besoins_prioritaires:30c"'

label variable S6Q3_BESOINSPRIO__31 `"Besoins_prioritaires:31"'

label variable S6Q3_BESOINSPRIO__31c `"Besoins_prioritaires:31c"'

label variable S6Q3_BESOINSPRIO__32 `"Besoins_prioritaires:32"'

label variable S6Q3_BESOINSPRIO__32c `"Besoins_prioritaires:32c"'

label variable S6Q3_BESOINSPRIO__33 `"Besoins_prioritaires:33"'

label variable S6Q3_BESOINSPRIO__33c `"Besoins_prioritaires:33c"'

label variable S6Q3_BESOINSPRIO__34 `"Besoins_prioritaires:34"'

label variable S6Q3_BESOINSPRIO__34c `"Besoins_prioritaires:34c"'

label variable S6Q3_BESOINSPRIO__35 `"Besoins_prioritaires:35"'

label variable S6Q3_BESOINSPRIO__35c `"Besoins_prioritaires:35c"'

label variable S6Q3_BESOINSPRIO__36 `"Besoins_prioritaires:36"'

label variable S6Q3_BESOINSPRIO__36c `"Besoins_prioritaires:36c"'

label variable S6Q3_BESOINSPRIO__37 `"Besoins_prioritaires:37"'

label variable S6Q3_BESOINSPRIO__37c `"Besoins_prioritaires:37c"'

label variable S6Q3_BESOINSPRIO__38 `"Besoins_prioritaires:38"'

label variable S6Q3_BESOINSPRIO__38c `"Besoins_prioritaires:38c"'

label variable S6Q3_BESOINSPRIO__39 `"Besoins_prioritaires:39"'

label variable S6Q3_BESOINSPRIO__39c `"Besoins_prioritaires:39c"'

label variable S6Q3_BESOINSPRIO__40 `"Besoins_prioritaires:40"'

label variable S6Q3_BESOINSPRIO__40c `"Besoins_prioritaires:40c"'

label variable S6Q3_BESOINSPRIO__41 `"Besoins_prioritaires:41"'

label variable S6Q3_BESOINSPRIO__41c `"Besoins_prioritaires:41c"'

label variable S6Q3_BESOINSPRIO__42 `"Besoins_prioritaires:42"'

label variable S6Q3_BESOINSPRIO__42c `"Besoins_prioritaires:42c"'

label variable S6Q3_BESOINSPRIO__43 `"Besoins_prioritaires:43"'

label variable S6Q3_BESOINSPRIO__43c `"Besoins_prioritaires:43c"'

label variable S6Q3_BESOINSPRIO__44 `"Besoins_prioritaires:44"'

label variable S6Q3_BESOINSPRIO__44c `"Besoins_prioritaires:44c"'

label variable S6Q3_BESOINSPRIO__45 `"Besoins_prioritaires:45"'

label variable S6Q3_BESOINSPRIO__45c `"Besoins_prioritaires:45c"'

label variable S6Q3_BESOINSPRIO__46 `"Besoins_prioritaires:46"'

label variable S6Q3_BESOINSPRIO__46c `"Besoins_prioritaires:46c"'

label variable S6Q3_BESOINSPRIO__47 `"Besoins_prioritaires:47"'

label variable S6Q3_BESOINSPRIO__47c `"Besoins_prioritaires:47c"'

label variable S6Q3_BESOINSPRIO__48 `"Besoins_prioritaires:48"'

label variable S6Q3_BESOINSPRIO__48c `"Besoins_prioritaires:48c"'

label variable S6Q3_BESOINSPRIO__49 `"Besoins_prioritaires:49"'

label variable S6Q3_BESOINSPRIO__49c `"Besoins_prioritaires:49c"'

label variable S6Q3_BESOINSPRIO__50 `"Besoins_prioritaires:50"'

label variable S6Q3_BESOINSPRIO__50c `"Besoins_prioritaires:50c"'

label variable S6Q3_BESOINSPRIO__51 `"Besoins_prioritaires:51"'

label variable S6Q3_BESOINSPRIO__51c `"Besoins_prioritaires:51c"'

label variable S6Q3_BESOINSPRIO__52 `"Besoins_prioritaires:52"'

label variable S6Q3_BESOINSPRIO__52c `"Besoins_prioritaires:52c"'

label variable S6Q3_BESOINSPRIO__53 `"Besoins_prioritaires:53"'

label variable S6Q3_BESOINSPRIO__53c `"Besoins_prioritaires:53c"'

label variable S6Q3_BESOINSPRIO__54 `"Besoins_prioritaires:54"'

label variable S6Q3_BESOINSPRIO__54c `"Besoins_prioritaires:54c"'

label variable S6Q3_BESOINSPRIO__55 `"Besoins_prioritaires:55"'

label variable S6Q3_BESOINSPRIO__55c `"Besoins_prioritaires:55c"'

label variable S6Q3_BESOINSPRIO__56 `"Besoins_prioritaires:56"'

label variable S6Q3_BESOINSPRIO__56c `"Besoins_prioritaires:56c"'

label variable S6Q3_BESOINSPRIO__57 `"Besoins_prioritaires:57"'

label variable S6Q3_BESOINSPRIO__57c `"Besoins_prioritaires:57c"'

label variable S6Q3_BESOINSPRIO__58 `"Besoins_prioritaires:58"'

label variable S6Q3_BESOINSPRIO__58c `"Besoins_prioritaires:58c"'

label variable S6Q3_BESOINSPRIO__59 `"Besoins_prioritaires:59"'

label variable S6Q3_BESOINSPRIO__59c `"Besoins_prioritaires:59c"'

label variable S6Q3_BESOINSPRIO__60 `"Besoins_prioritaires:60"'

label variable S6Q3_BESOINSPRIO__60c `"Besoins_prioritaires:60c"'

label variable S6Q3_BESOINSPRIO__61 `"Besoins_prioritaires:61"'

label variable S6Q3_BESOINSPRIO__61c `"Besoins_prioritaires:61c"'

label variable S6Q3_BESOINSPRIO__62 `"Besoins_prioritaires:62"'

label variable S6Q3_BESOINSPRIO__62c `"Besoins_prioritaires:62c"'

label variable S6Q3_BESOINSPRIO__63 `"Besoins_prioritaires:63"'

label variable S6Q3_BESOINSPRIO__63c `"Besoins_prioritaires:63c"'

label variable S6Q3_BESOINSPRIO__64 `"Besoins_prioritaires:64"'

label variable S6Q3_BESOINSPRIO__64c `"Besoins_prioritaires:64c"'

label variable S6Q3_BESOINSPRIO__65 `"Besoins_prioritaires:65"'

label variable S6Q3_BESOINSPRIO__65c `"Besoins_prioritaires:65c"'

label variable S6Q3_BESOINSPRIO__66 `"Besoins_prioritaires:66"'

label variable S6Q3_BESOINSPRIO__66c `"Besoins_prioritaires:66c"'

label variable S6Q3_BESOINSPRIO__67 `"Besoins_prioritaires:67"'

label variable S6Q3_BESOINSPRIO__67c `"Besoins_prioritaires:67c"'

label variable S6Q3_BESOINSPRIO__68 `"Besoins_prioritaires:68"'

label variable S6Q3_BESOINSPRIO__68c `"Besoins_prioritaires:68c"'

label variable S6Q3_BESOINSPRIO__69 `"Besoins_prioritaires:69"'

label variable S6Q3_BESOINSPRIO__69c `"Besoins_prioritaires:69c"'

label variable S6Q3_BESOINSPRIO__70 `"Besoins_prioritaires:70"'

label variable S6Q3_BESOINSPRIO__70c `"Besoins_prioritaires:70c"'

label variable S6Q3_BESOINSPRIO__71 `"Besoins_prioritaires:71"'

label variable S6Q3_BESOINSPRIO__71c `"Besoins_prioritaires:71c"'

label variable S6Q3_BESOINSPRIO__72 `"Besoins_prioritaires:72"'

label variable S6Q3_BESOINSPRIO__72c `"Besoins_prioritaires:72c"'

label variable S6Q3_BESOINSPRIO__73 `"Besoins_prioritaires:73"'

label variable S6Q3_BESOINSPRIO__73c `"Besoins_prioritaires:73c"'

label variable S6Q3_BESOINSPRIO__74 `"Besoins_prioritaires:74"'

label variable S6Q3_BESOINSPRIO__74c `"Besoins_prioritaires:74c"'

label variable S6Q3_BESOINSPRIO__75 `"Besoins_prioritaires:75"'

label variable S6Q3_BESOINSPRIO__75c `"Besoins_prioritaires:75c"'

label variable S6Q3_BESOINSPRIO__76 `"Besoins_prioritaires:76"'

label variable S6Q3_BESOINSPRIO__76c `"Besoins_prioritaires:76c"'

label variable S6Q3_BESOINSPRIO__77 `"Besoins_prioritaires:77"'

label variable S6Q3_BESOINSPRIO__77c `"Besoins_prioritaires:77c"'

label variable S6Q3_BESOINSPRIO__78 `"Besoins_prioritaires:78"'

label variable S6Q3_BESOINSPRIO__78c `"Besoins_prioritaires:78c"'

label variable S6Q3_BESOINSPRIO__79 `"Besoins_prioritaires:79"'

label variable S6Q3_BESOINSPRIO__79c `"Besoins_prioritaires:79c"'

label variable S6Q3_BESOINSPRIO__80 `"Besoins_prioritaires:80"'

label variable S6Q3_BESOINSPRIO__80c `"Besoins_prioritaires:80c"'

label variable S6Q3_BESOINSPRIO__81 `"Besoins_prioritaires:81"'

label variable S6Q3_BESOINSPRIO__81c `"Besoins_prioritaires:81c"'

label variable S6Q3_BESOINSPRIO__82 `"Besoins_prioritaires:82"'

label variable S6Q3_BESOINSPRIO__82c `"Besoins_prioritaires:82c"'

label variable S6Q3_BESOINSPRIO__83 `"Besoins_prioritaires:83"'

label variable S6Q3_BESOINSPRIO__83c `"Besoins_prioritaires:83c"'

label variable S6Q3_BESOINSPRIO__84 `"Besoins_prioritaires:84"'

label variable S6Q3_BESOINSPRIO__84c `"Besoins_prioritaires:84c"'

label variable S6Q3_BESOINSPRIO__85 `"Besoins_prioritaires:85"'

label variable S6Q3_BESOINSPRIO__85c `"Besoins_prioritaires:85c"'

label variable S6Q3_BESOINSPRIO__86 `"Besoins_prioritaires:86"'

label variable S6Q3_BESOINSPRIO__86c `"Besoins_prioritaires:86c"'

label variable S6Q3_BESOINSPRIO__87 `"Besoins_prioritaires:87"'

label variable S6Q3_BESOINSPRIO__87c `"Besoins_prioritaires:87c"'

label variable S6Q3_BESOINSPRIO__88 `"Besoins_prioritaires:88"'

label variable S6Q3_BESOINSPRIO__88c `"Besoins_prioritaires:88c"'

label variable S6Q3_BESOINSPRIO__89 `"Besoins_prioritaires:89"'

label variable S6Q3_BESOINSPRIO__89c `"Besoins_prioritaires:89c"'

label variable S6Q3_BESOINSPRIO__90 `"Besoins_prioritaires:90"'

label variable S6Q3_BESOINSPRIO__90c `"Besoins_prioritaires:90c"'

label variable S6Q3_BESOINSPRIO__91 `"Besoins_prioritaires:91"'

label variable S6Q3_BESOINSPRIO__91c `"Besoins_prioritaires:91c"'

label variable S6Q3_BESOINSPRIO__92 `"Besoins_prioritaires:92"'

label variable S6Q3_BESOINSPRIO__92c `"Besoins_prioritaires:92c"'

label variable S6Q3_BESOINSPRIO__93 `"Besoins_prioritaires:93"'

label variable S6Q3_BESOINSPRIO__93c `"Besoins_prioritaires:93c"'

label variable S6Q3_BESOINSPRIO__94 `"Besoins_prioritaires:94"'

label variable S6Q3_BESOINSPRIO__94c `"Besoins_prioritaires:94c"'

label variable S6Q3_BESOINSPRIO__95 `"Besoins_prioritaires:95"'

label variable S6Q3_BESOINSPRIO__95c `"Besoins_prioritaires:95c"'

label variable S6Q3_BESOINSPRIO__96 `"Besoins_prioritaires:96"'

label variable S6Q3_BESOINSPRIO__96c `"Besoins_prioritaires:96c"'

label variable S6Q3_BESOINSPRIO__97 `"Besoins_prioritaires:97"'

label variable S6Q3_BESOINSPRIO__97c `"Besoins_prioritaires:97c"'

label variable S6Q3_BESOINSPRIO__98 `"Besoins_prioritaires:98"'

label variable S6Q3_BESOINSPRIO__98c `"Besoins_prioritaires:98c"'

label variable S6Q3_BESOINSPRIO__99 `"Besoins_prioritaires:99"'

label variable S6Q3_BESOINSPRIO__99c `"Besoins_prioritaires:99c"'

label variable S6Q3_BESOINSPRIO__100 `"Besoins_prioritaires:100"'

label variable S6Q3_BESOINSPRIO__100c `"Besoins_prioritaires:100c"'

label variable S6Q3_BESOINSPRIO__101 `"Besoins_prioritaires:101"'

label variable S6Q3_BESOINSPRIO__101c `"Besoins_prioritaires:101c"'

label variable S6Q3_BESOINSPRIO__102 `"Besoins_prioritaires:102"'

label variable S6Q3_BESOINSPRIO__102c `"Besoins_prioritaires:102c"'

label variable S6Q3_BESOINSPRIO__103 `"Besoins_prioritaires:103"'

label variable S6Q3_BESOINSPRIO__103c `"Besoins_prioritaires:103c"'

label variable S6Q3_BESOINSPRIO__104 `"Besoins_prioritaires:104"'

label variable S6Q3_BESOINSPRIO__104c `"Besoins_prioritaires:104c"'

label variable S6Q3_BESOINSPRIO__105 `"Besoins_prioritaires:105"'

label variable S6Q3_BESOINSPRIO__105c `"Besoins_prioritaires:105c"'

label variable S6Q3_BESOINSPRIO__106 `"Besoins_prioritaires:106"'

label variable S6Q3_BESOINSPRIO__106c `"Besoins_prioritaires:106c"'

label variable S6Q3_BESOINSPRIO__107 `"Besoins_prioritaires:107"'

label variable S6Q3_BESOINSPRIO__107c `"Besoins_prioritaires:107c"'

label variable S6Q3_BESOINSPRIO__108 `"Besoins_prioritaires:108"'

label variable S6Q3_BESOINSPRIO__108c `"Besoins_prioritaires:108c"'

label variable S6Q3_BESOINSPRIO__109 `"Besoins_prioritaires:109"'

label variable S6Q3_BESOINSPRIO__109c `"Besoins_prioritaires:109c"'

label variable S6Q3_BESOINSPRIO__110 `"Besoins_prioritaires:110"'

label variable S6Q3_BESOINSPRIO__110c `"Besoins_prioritaires:110c"'

label variable S6Q3_BESOINSPRIO__111 `"Besoins_prioritaires:111"'

label variable S6Q3_BESOINSPRIO__111c `"Besoins_prioritaires:111c"'

label variable S6Q3_BESOINSPRIO__112 `"Besoins_prioritaires:112"'

label variable S6Q3_BESOINSPRIO__112c `"Besoins_prioritaires:112c"'

label variable S6Q3_BESOINSPRIO__113 `"Besoins_prioritaires:113"'

label variable S6Q3_BESOINSPRIO__113c `"Besoins_prioritaires:113c"'

label variable S6Q3_BESOINSPRIO__114 `"Besoins_prioritaires:114"'

label variable S6Q3_BESOINSPRIO__114c `"Besoins_prioritaires:114c"'

label variable S6Q3_BESOINSPRIO__115 `"Besoins_prioritaires:115"'

label variable S6Q3_BESOINSPRIO__115c `"Besoins_prioritaires:115c"'

label variable S6Q3_BESOINSPRIO__116 `"Besoins_prioritaires:116"'

label variable S6Q3_BESOINSPRIO__116c `"Besoins_prioritaires:116c"'

label variable S6Q3_BESOINSPRIO__117 `"Besoins_prioritaires:117"'

label variable S6Q3_BESOINSPRIO__117c `"Besoins_prioritaires:117c"'

label variable S6Q3_BESOINSPRIO__118 `"Besoins_prioritaires:118"'

label variable S6Q3_BESOINSPRIO__118c `"Besoins_prioritaires:118c"'

label variable S6Q3_BESOINSPRIO__119 `"Besoins_prioritaires:119"'

label variable S6Q3_BESOINSPRIO__119c `"Besoins_prioritaires:119c"'

label variable S6Q3_BESOINSPRIO__120 `"Besoins_prioritaires:120"'

label variable S6Q3_BESOINSPRIO__120c `"Besoins_prioritaires:120c"'

label variable S6Q3_BESOINSPRIO__121 `"Besoins_prioritaires:121"'

label variable S6Q3_BESOINSPRIO__121c `"Besoins_prioritaires:121c"'

label variable S6Q3_BESOINSPRIO__122 `"Besoins_prioritaires:122"'

label variable S6Q3_BESOINSPRIO__122c `"Besoins_prioritaires:122c"'

label variable S6Q3_BESOINSPRIO__123 `"Besoins_prioritaires:123"'

label variable S6Q3_BESOINSPRIO__123c `"Besoins_prioritaires:123c"'

label variable S6Q3_BESOINSPRIO__124 `"Besoins_prioritaires:124"'

label variable S6Q3_BESOINSPRIO__124c `"Besoins_prioritaires:124c"'

label variable S6Q3_BESOINSPRIO__125 `"Besoins_prioritaires:125"'

label variable S6Q3_BESOINSPRIO__125c `"Besoins_prioritaires:125c"'

label variable S6Q3_BESOINSPRIO__126 `"Besoins_prioritaires:126"'

label variable S6Q3_BESOINSPRIO__126c `"Besoins_prioritaires:126c"'

label variable S6Q3_BESOINSPRIO__127 `"Besoins_prioritaires:127"'

label variable S6Q3_BESOINSPRIO__127c `"Besoins_prioritaires:127c"'

label variable S6Q3_BESOINSPRIO__128 `"Besoins_prioritaires:128"'

label variable S6Q3_BESOINSPRIO__128c `"Besoins_prioritaires:128c"'

label variable S6Q3_BESOINSPRIO__129 `"Besoins_prioritaires:129"'

label variable S6Q3_BESOINSPRIO__129c `"Besoins_prioritaires:129c"'

label variable S6Q3_BESOINSPRIO__130 `"Besoins_prioritaires:130"'

label variable S6Q3_BESOINSPRIO__130c `"Besoins_prioritaires:130c"'

label variable S6Q3_BESOINSPRIO__131 `"Besoins_prioritaires:131"'

label variable S6Q3_BESOINSPRIO__131c `"Besoins_prioritaires:131c"'

label variable S6Q3_BESOINSPRIO__132 `"Besoins_prioritaires:132"'

label variable S6Q3_BESOINSPRIO__132c `"Besoins_prioritaires:132c"'

label variable S6Q3_BESOINSPRIO__133 `"Besoins_prioritaires:133"'

label variable S6Q3_BESOINSPRIO__133c `"Besoins_prioritaires:133c"'

label variable S6Q3_BESOINSPRIO__134 `"Besoins_prioritaires:134"'

label variable S6Q3_BESOINSPRIO__134c `"Besoins_prioritaires:134c"'

label variable S6Q3_BESOINSPRIO__135 `"Besoins_prioritaires:135"'

label variable S6Q3_BESOINSPRIO__135c `"Besoins_prioritaires:135c"'

label variable S6Q3_BESOINSPRIO__136 `"Besoins_prioritaires:136"'

label variable S6Q3_BESOINSPRIO__136c `"Besoins_prioritaires:136c"'

label variable S6Q3_BESOINSPRIO__137 `"Besoins_prioritaires:137"'

label variable S6Q3_BESOINSPRIO__137c `"Besoins_prioritaires:137c"'

label variable S6Q3_BESOINSPRIO__138 `"Besoins_prioritaires:138"'

label variable S6Q3_BESOINSPRIO__138c `"Besoins_prioritaires:138c"'

label variable S6Q3_BESOINSPRIO__139 `"Besoins_prioritaires:139"'

label variable S6Q3_BESOINSPRIO__139c `"Besoins_prioritaires:139c"'

label variable S6Q3_BESOINSPRIO__140 `"Besoins_prioritaires:140"'

label variable S6Q3_BESOINSPRIO__140c `"Besoins_prioritaires:140c"'

label variable S6Q3_BESOINSPRIO__141 `"Besoins_prioritaires:141"'

label variable S6Q3_BESOINSPRIO__141c `"Besoins_prioritaires:141c"'

label variable S6Q3_BESOINSPRIO__142 `"Besoins_prioritaires:142"'

label variable S6Q3_BESOINSPRIO__142c `"Besoins_prioritaires:142c"'

label variable S6Q3_BESOINSPRIO__143 `"Besoins_prioritaires:143"'

label variable S6Q3_BESOINSPRIO__143c `"Besoins_prioritaires:143c"'

label variable S6Q3_BESOINSPRIO__144 `"Besoins_prioritaires:144"'

label variable S6Q3_BESOINSPRIO__144c `"Besoins_prioritaires:144c"'

label variable S6Q3_BESOINSPRIO__145 `"Besoins_prioritaires:145"'

label variable S6Q3_BESOINSPRIO__145c `"Besoins_prioritaires:145c"'

label variable S6Q3_BESOINSPRIO__146 `"Besoins_prioritaires:146"'

label variable S6Q3_BESOINSPRIO__146c `"Besoins_prioritaires:146c"'

label variable S6Q3_BESOINSPRIO__147 `"Besoins_prioritaires:147"'

label variable S6Q3_BESOINSPRIO__147c `"Besoins_prioritaires:147c"'

label variable S6Q3_BESOINSPRIO__148 `"Besoins_prioritaires:148"'

label variable S6Q3_BESOINSPRIO__148c `"Besoins_prioritaires:148c"'

label variable S6Q3_BESOINSPRIO__149 `"Besoins_prioritaires:149"'

label variable S6Q3_BESOINSPRIO__149c `"Besoins_prioritaires:149c"'

label variable S6Q3_BESOINSPRIO__150 `"Besoins_prioritaires:150"'

label variable S6Q3_BESOINSPRIO__150c `"Besoins_prioritaires:150c"'

label variable S6Q3_BESOINSPRIO__151 `"Besoins_prioritaires:151"'

label variable S6Q3_BESOINSPRIO__151c `"Besoins_prioritaires:151c"'

label variable S6Q3_BESOINSPRIO__152 `"Besoins_prioritaires:152"'

label variable S6Q3_BESOINSPRIO__152c `"Besoins_prioritaires:152c"'

label variable S6Q3_BESOINSPRIO__153 `"Besoins_prioritaires:153"'

label variable S6Q3_BESOINSPRIO__153c `"Besoins_prioritaires:153c"'

label variable S6Q3_BESOINSPRIO__154 `"Besoins_prioritaires:154"'

label variable S6Q3_BESOINSPRIO__154c `"Besoins_prioritaires:154c"'

label variable S6Q3_BESOINSPRIO__155 `"Besoins_prioritaires:155"'

label variable S6Q3_BESOINSPRIO__155c `"Besoins_prioritaires:155c"'

label variable S6Q3_BESOINSPRIO__156 `"Besoins_prioritaires:156"'

label variable S6Q3_BESOINSPRIO__156c `"Besoins_prioritaires:156c"'

label variable S6Q3_BESOINSPRIO__157 `"Besoins_prioritaires:157"'

label variable S6Q3_BESOINSPRIO__157c `"Besoins_prioritaires:157c"'

label variable S6Q3_BESOINSPRIO__158 `"Besoins_prioritaires:158"'

label variable S6Q3_BESOINSPRIO__158c `"Besoins_prioritaires:158c"'

label variable S6Q3_BESOINSPRIO__159 `"Besoins_prioritaires:159"'

label variable S6Q3_BESOINSPRIO__159c `"Besoins_prioritaires:159c"'

label variable S6Q3_BESOINSPRIO__160 `"Besoins_prioritaires:160"'

label variable S6Q3_BESOINSPRIO__160c `"Besoins_prioritaires:160c"'

label variable S6Q3_BESOINSPRIO__161 `"Besoins_prioritaires:161"'

label variable S6Q3_BESOINSPRIO__161c `"Besoins_prioritaires:161c"'

label variable S6Q3_BESOINSPRIO__162 `"Besoins_prioritaires:162"'

label variable S6Q3_BESOINSPRIO__162c `"Besoins_prioritaires:162c"'

label variable S6Q3_BESOINSPRIO__163 `"Besoins_prioritaires:163"'

label variable S6Q3_BESOINSPRIO__163c `"Besoins_prioritaires:163c"'

label variable S6Q3_BESOINSPRIO__164 `"Besoins_prioritaires:164"'

label variable S6Q3_BESOINSPRIO__164c `"Besoins_prioritaires:164c"'

label variable S6Q3_BESOINSPRIO__165 `"Besoins_prioritaires:165"'

label variable S6Q3_BESOINSPRIO__165c `"Besoins_prioritaires:165c"'

label variable S6Q3_BESOINSPRIO__166 `"Besoins_prioritaires:166"'

label variable S6Q3_BESOINSPRIO__166c `"Besoins_prioritaires:166c"'

label variable S6Q3_BESOINSPRIO__167 `"Besoins_prioritaires:167"'

label variable S6Q3_BESOINSPRIO__167c `"Besoins_prioritaires:167c"'

label variable S6Q3_BESOINSPRIO__168 `"Besoins_prioritaires:168"'

label variable S6Q3_BESOINSPRIO__168c `"Besoins_prioritaires:168c"'

label variable S6Q3_BESOINSPRIO__169 `"Besoins_prioritaires:169"'

label variable S6Q3_BESOINSPRIO__169c `"Besoins_prioritaires:169c"'

label variable S6Q3_BESOINSPRIO__170 `"Besoins_prioritaires:170"'

label variable S6Q3_BESOINSPRIO__170c `"Besoins_prioritaires:170c"'

label variable S6Q3_BESOINSPRIO__171 `"Besoins_prioritaires:171"'

label variable S6Q3_BESOINSPRIO__171c `"Besoins_prioritaires:171c"'

label variable S6Q3_BESOINSPRIO__172 `"Besoins_prioritaires:172"'

label variable S6Q3_BESOINSPRIO__172c `"Besoins_prioritaires:172c"'

label variable S6Q3_BESOINSPRIO__173 `"Besoins_prioritaires:173"'

label variable S6Q3_BESOINSPRIO__173c `"Besoins_prioritaires:173c"'

label variable S6Q3_BESOINSPRIO__174 `"Besoins_prioritaires:174"'

label variable S6Q3_BESOINSPRIO__174c `"Besoins_prioritaires:174c"'

label variable S6Q3_BESOINSPRIO__175 `"Besoins_prioritaires:175"'

label variable S6Q3_BESOINSPRIO__175c `"Besoins_prioritaires:175c"'

label variable S6Q3_BESOINSPRIO__176 `"Besoins_prioritaires:176"'

label variable S6Q3_BESOINSPRIO__176c `"Besoins_prioritaires:176c"'

label variable S6Q3_BESOINSPRIO__177 `"Besoins_prioritaires:177"'

label variable S6Q3_BESOINSPRIO__177c `"Besoins_prioritaires:177c"'

label variable S6Q3_BESOINSPRIO__178 `"Besoins_prioritaires:178"'

label variable S6Q3_BESOINSPRIO__178c `"Besoins_prioritaires:178c"'

label variable S6Q3_BESOINSPRIO__179 `"Besoins_prioritaires:179"'

label variable S6Q3_BESOINSPRIO__179c `"Besoins_prioritaires:179c"'

label variable S6Q3_BESOINSPRIO__180 `"Besoins_prioritaires:180"'

label variable S6Q3_BESOINSPRIO__180c `"Besoins_prioritaires:180c"'

label variable S6Q3_BESOINSPRIO__181 `"Besoins_prioritaires:181"'

label variable S6Q3_BESOINSPRIO__181c `"Besoins_prioritaires:181c"'

label variable S6Q3_BESOINSPRIO__182 `"Besoins_prioritaires:182"'

label variable S6Q3_BESOINSPRIO__182c `"Besoins_prioritaires:182c"'

label variable S6Q3_BESOINSPRIO__183 `"Besoins_prioritaires:183"'

label variable S6Q3_BESOINSPRIO__183c `"Besoins_prioritaires:183c"'

label variable S6Q3_BESOINSPRIO__184 `"Besoins_prioritaires:184"'

label variable S6Q3_BESOINSPRIO__184c `"Besoins_prioritaires:184c"'

label variable S6Q3_BESOINSPRIO__185 `"Besoins_prioritaires:185"'

label variable S6Q3_BESOINSPRIO__185c `"Besoins_prioritaires:185c"'

label variable S6Q3_BESOINSPRIO__186 `"Besoins_prioritaires:186"'

label variable S6Q3_BESOINSPRIO__186c `"Besoins_prioritaires:186c"'

label variable S6Q3_BESOINSPRIO__187 `"Besoins_prioritaires:187"'

label variable S6Q3_BESOINSPRIO__187c `"Besoins_prioritaires:187c"'

label variable S6Q3_BESOINSPRIO__188 `"Besoins_prioritaires:188"'

label variable S6Q3_BESOINSPRIO__188c `"Besoins_prioritaires:188c"'

label variable S6Q3_BESOINSPRIO__189 `"Besoins_prioritaires:189"'

label variable S6Q3_BESOINSPRIO__189c `"Besoins_prioritaires:189c"'

label variable S6Q3_BESOINSPRIO__190 `"Besoins_prioritaires:190"'

label variable S6Q3_BESOINSPRIO__190c `"Besoins_prioritaires:190c"'

label variable S6Q3_BESOINSPRIO__191 `"Besoins_prioritaires:191"'

label variable S6Q3_BESOINSPRIO__191c `"Besoins_prioritaires:191c"'

label variable S6Q3_BESOINSPRIO__192 `"Besoins_prioritaires:192"'

label variable S6Q3_BESOINSPRIO__192c `"Besoins_prioritaires:192c"'

label variable S6Q3_BESOINSPRIO__193 `"Besoins_prioritaires:193"'

label variable S6Q3_BESOINSPRIO__193c `"Besoins_prioritaires:193c"'

label variable S6Q3_BESOINSPRIO__194 `"Besoins_prioritaires:194"'

label variable S6Q3_BESOINSPRIO__194c `"Besoins_prioritaires:194c"'

label variable S6Q3_BESOINSPRIO__195 `"Besoins_prioritaires:195"'

label variable S6Q3_BESOINSPRIO__195c `"Besoins_prioritaires:195c"'

label variable S6Q3_BESOINSPRIO__196 `"Besoins_prioritaires:196"'

label variable S6Q3_BESOINSPRIO__196c `"Besoins_prioritaires:196c"'

label variable S6Q3_BESOINSPRIO__197 `"Besoins_prioritaires:197"'

label variable S6Q3_BESOINSPRIO__197c `"Besoins_prioritaires:197c"'

label variable S6Q3_BESOINSPRIO__198 `"Besoins_prioritaires:198"'

label variable S6Q3_BESOINSPRIO__198c `"Besoins_prioritaires:198c"'

label variable S6Q3_BESOINSPRIO__199 `"Besoins_prioritaires:199"'

label variable S6Q3_BESOINSPRIO__199c `"Besoins_prioritaires:199c"'

label variable S6Q5_CSQFINASSO `"Consequences_fin_asso"'

label variable S6Q4_EXPSUPPL `"Experiences_supplementaires"'
