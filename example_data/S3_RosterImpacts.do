clear
insheet using "S3_RosterImpacts.tab", tab case names

label define S3_RosterImpacts__id 1 `"Humains (perte de bénévoles, licenciement de salariés, départ des salariés sans licenciements...)"' 2 `"Financiers (baisse de financement, perte de subventions...)"' 3 `"Logistiques (destructions de locaux, d’équipements, pillages...)"' 4 `"Partenariats affaiblis ou annulés"' 5 `"Baisse de la demande de services (annulation dévénements, suspension ou report de projets, ...)"' 6 `"Hausse de la demande de services (distributions alimentaires, soutien psychologique, hébergement durgence, ...)"' 7 `"Autres (précisez)"' 
label values S3_RosterImpacts__id S3_RosterImpacts__id
label variable S3_RosterImpacts__id `"Id in S3_RosterImpacts"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable S3_Roster_Q1__0 `"Sous impacts:0"'

label variable S3_Roster_Q1__0c `"Sous impacts:0c"'

label variable S3_Roster_Q1__1 `"Sous impacts:1"'

label variable S3_Roster_Q1__1c `"Sous impacts:1c"'

label variable S3_Roster_Q1__2 `"Sous impacts:2"'

label variable S3_Roster_Q1__2c `"Sous impacts:2c"'

label variable S3_Roster_Q1__3 `"Sous impacts:3"'

label variable S3_Roster_Q1__3c `"Sous impacts:3c"'

label variable S3_Roster_Q1__4 `"Sous impacts:4"'

label variable S3_Roster_Q1__4c `"Sous impacts:4c"'

label variable S3_Roster_Q1__5 `"Sous impacts:5"'

label variable S3_Roster_Q1__5c `"Sous impacts:5c"'

label variable S3_Roster_Q1__6 `"Sous impacts:6"'

label variable S3_Roster_Q1__6c `"Sous impacts:6c"'

label variable S3_Roster_Q1__7 `"Sous impacts:7"'

label variable S3_Roster_Q1__7c `"Sous impacts:7c"'

label variable S3_Roster_Q1__8 `"Sous impacts:8"'

label variable S3_Roster_Q1__8c `"Sous impacts:8c"'

label variable S3_Roster_Q1__9 `"Sous impacts:9"'

label variable S3_Roster_Q1__9c `"Sous impacts:9c"'

label variable S3_Roster_Q1__10 `"Sous impacts:10"'

label variable S3_Roster_Q1__10c `"Sous impacts:10c"'

label variable S3_Roster_Q1__11 `"Sous impacts:11"'

label variable S3_Roster_Q1__11c `"Sous impacts:11c"'

label variable S3_Roster_Q1__12 `"Sous impacts:12"'

label variable S3_Roster_Q1__12c `"Sous impacts:12c"'

label variable S3_Roster_Q1__13 `"Sous impacts:13"'

label variable S3_Roster_Q1__13c `"Sous impacts:13c"'

label variable S3_Roster_Q1__14 `"Sous impacts:14"'

label variable S3_Roster_Q1__14c `"Sous impacts:14c"'

label variable S3_Roster_Q1__15 `"Sous impacts:15"'

label variable S3_Roster_Q1__15c `"Sous impacts:15c"'

label variable S3_Roster_Q1__16 `"Sous impacts:16"'

label variable S3_Roster_Q1__16c `"Sous impacts:16c"'

label variable S3_Roster_Q1__17 `"Sous impacts:17"'

label variable S3_Roster_Q1__17c `"Sous impacts:17c"'

label variable S3_Roster_Q1__18 `"Sous impacts:18"'

label variable S3_Roster_Q1__18c `"Sous impacts:18c"'

label variable S3_Roster_Q1__19 `"Sous impacts:19"'

label variable S3_Roster_Q1__19c `"Sous impacts:19c"'

label variable S3_Roster_Q1__20 `"Sous impacts:20"'

label variable S3_Roster_Q1__20c `"Sous impacts:20c"'

label variable S3_Roster_Q1__21 `"Sous impacts:21"'

label variable S3_Roster_Q1__21c `"Sous impacts:21c"'

label variable S3_Roster_Q1__22 `"Sous impacts:22"'

label variable S3_Roster_Q1__22c `"Sous impacts:22c"'

label variable S3_Roster_Q1__23 `"Sous impacts:23"'

label variable S3_Roster_Q1__23c `"Sous impacts:23c"'

label variable S3_Roster_Q1__24 `"Sous impacts:24"'

label variable S3_Roster_Q1__24c `"Sous impacts:24c"'

label variable S3_Roster_Q1__25 `"Sous impacts:25"'

label variable S3_Roster_Q1__25c `"Sous impacts:25c"'

label variable S3_Roster_Q1__26 `"Sous impacts:26"'

label variable S3_Roster_Q1__26c `"Sous impacts:26c"'

label variable S3_Roster_Q1__27 `"Sous impacts:27"'

label variable S3_Roster_Q1__27c `"Sous impacts:27c"'

label variable S3_Roster_Q1__28 `"Sous impacts:28"'

label variable S3_Roster_Q1__28c `"Sous impacts:28c"'

label variable S3_Roster_Q1__29 `"Sous impacts:29"'

label variable S3_Roster_Q1__29c `"Sous impacts:29c"'

label variable S3_Roster_Q1__30 `"Sous impacts:30"'

label variable S3_Roster_Q1__30c `"Sous impacts:30c"'

label variable S3_Roster_Q1__31 `"Sous impacts:31"'

label variable S3_Roster_Q1__31c `"Sous impacts:31c"'

label variable S3_Roster_Q1__32 `"Sous impacts:32"'

label variable S3_Roster_Q1__32c `"Sous impacts:32c"'

label variable S3_Roster_Q1__33 `"Sous impacts:33"'

label variable S3_Roster_Q1__33c `"Sous impacts:33c"'

label variable S3_Roster_Q1__34 `"Sous impacts:34"'

label variable S3_Roster_Q1__34c `"Sous impacts:34c"'

label variable S3_Roster_Q1__35 `"Sous impacts:35"'

label variable S3_Roster_Q1__35c `"Sous impacts:35c"'

label variable S3_Roster_Q1__36 `"Sous impacts:36"'

label variable S3_Roster_Q1__36c `"Sous impacts:36c"'

label variable S3_Roster_Q1__37 `"Sous impacts:37"'

label variable S3_Roster_Q1__37c `"Sous impacts:37c"'

label variable S3_Roster_Q1__38 `"Sous impacts:38"'

label variable S3_Roster_Q1__38c `"Sous impacts:38c"'

label variable S3_Roster_Q1__39 `"Sous impacts:39"'

label variable S3_Roster_Q1__39c `"Sous impacts:39c"'

label variable S3_Roster_Q1__40 `"Sous impacts:40"'

label variable S3_Roster_Q1__40c `"Sous impacts:40c"'

label variable S3_Roster_Q1__41 `"Sous impacts:41"'

label variable S3_Roster_Q1__41c `"Sous impacts:41c"'

label variable S3_Roster_Q1__42 `"Sous impacts:42"'

label variable S3_Roster_Q1__42c `"Sous impacts:42c"'

label variable S3_Roster_Q1__43 `"Sous impacts:43"'

label variable S3_Roster_Q1__43c `"Sous impacts:43c"'

label variable S3_Roster_Q1__44 `"Sous impacts:44"'

label variable S3_Roster_Q1__44c `"Sous impacts:44c"'

label variable S3_Roster_Q1__45 `"Sous impacts:45"'

label variable S3_Roster_Q1__45c `"Sous impacts:45c"'

label variable S3_Roster_Q1__46 `"Sous impacts:46"'

label variable S3_Roster_Q1__46c `"Sous impacts:46c"'

label variable S3_Roster_Q1__47 `"Sous impacts:47"'

label variable S3_Roster_Q1__47c `"Sous impacts:47c"'

label variable S3_Roster_Q1__48 `"Sous impacts:48"'

label variable S3_Roster_Q1__48c `"Sous impacts:48c"'

label variable S3_Roster_Q1__49 `"Sous impacts:49"'

label variable S3_Roster_Q1__49c `"Sous impacts:49c"'

label variable S3_Roster_Q1__50 `"Sous impacts:50"'

label variable S3_Roster_Q1__50c `"Sous impacts:50c"'

label variable S3_Roster_Q1__51 `"Sous impacts:51"'

label variable S3_Roster_Q1__51c `"Sous impacts:51c"'

label variable S3_Roster_Q1__52 `"Sous impacts:52"'

label variable S3_Roster_Q1__52c `"Sous impacts:52c"'

label variable S3_Roster_Q1__53 `"Sous impacts:53"'

label variable S3_Roster_Q1__53c `"Sous impacts:53c"'

label variable S3_Roster_Q1__54 `"Sous impacts:54"'

label variable S3_Roster_Q1__54c `"Sous impacts:54c"'

label variable S3_Roster_Q1__55 `"Sous impacts:55"'

label variable S3_Roster_Q1__55c `"Sous impacts:55c"'

label variable S3_Roster_Q1__56 `"Sous impacts:56"'

label variable S3_Roster_Q1__56c `"Sous impacts:56c"'

label variable S3_Roster_Q1__57 `"Sous impacts:57"'

label variable S3_Roster_Q1__57c `"Sous impacts:57c"'

label variable S3_Roster_Q1__58 `"Sous impacts:58"'

label variable S3_Roster_Q1__58c `"Sous impacts:58c"'

label variable S3_Roster_Q1__59 `"Sous impacts:59"'

label variable S3_Roster_Q1__59c `"Sous impacts:59c"'

label variable S3_Roster_Q1__60 `"Sous impacts:60"'

label variable S3_Roster_Q1__60c `"Sous impacts:60c"'

label variable S3_Roster_Q1__61 `"Sous impacts:61"'

label variable S3_Roster_Q1__61c `"Sous impacts:61c"'

label variable S3_Roster_Q1__62 `"Sous impacts:62"'

label variable S3_Roster_Q1__62c `"Sous impacts:62c"'

label variable S3_Roster_Q1__63 `"Sous impacts:63"'

label variable S3_Roster_Q1__63c `"Sous impacts:63c"'

label variable S3_Roster_Q1__64 `"Sous impacts:64"'

label variable S3_Roster_Q1__64c `"Sous impacts:64c"'

label variable S3_Roster_Q1__65 `"Sous impacts:65"'

label variable S3_Roster_Q1__65c `"Sous impacts:65c"'

label variable S3_Roster_Q1__66 `"Sous impacts:66"'

label variable S3_Roster_Q1__66c `"Sous impacts:66c"'

label variable S3_Roster_Q1__67 `"Sous impacts:67"'

label variable S3_Roster_Q1__67c `"Sous impacts:67c"'

label variable S3_Roster_Q1__68 `"Sous impacts:68"'

label variable S3_Roster_Q1__68c `"Sous impacts:68c"'

label variable S3_Roster_Q1__69 `"Sous impacts:69"'

label variable S3_Roster_Q1__69c `"Sous impacts:69c"'

label variable S3_Roster_Q1__70 `"Sous impacts:70"'

label variable S3_Roster_Q1__70c `"Sous impacts:70c"'

label variable S3_Roster_Q1__71 `"Sous impacts:71"'

label variable S3_Roster_Q1__71c `"Sous impacts:71c"'

label variable S3_Roster_Q1__72 `"Sous impacts:72"'

label variable S3_Roster_Q1__72c `"Sous impacts:72c"'

label variable S3_Roster_Q1__73 `"Sous impacts:73"'

label variable S3_Roster_Q1__73c `"Sous impacts:73c"'

label variable S3_Roster_Q1__74 `"Sous impacts:74"'

label variable S3_Roster_Q1__74c `"Sous impacts:74c"'

label variable S3_Roster_Q1__75 `"Sous impacts:75"'

label variable S3_Roster_Q1__75c `"Sous impacts:75c"'

label variable S3_Roster_Q1__76 `"Sous impacts:76"'

label variable S3_Roster_Q1__76c `"Sous impacts:76c"'

label variable S3_Roster_Q1__77 `"Sous impacts:77"'

label variable S3_Roster_Q1__77c `"Sous impacts:77c"'

label variable S3_Roster_Q1__78 `"Sous impacts:78"'

label variable S3_Roster_Q1__78c `"Sous impacts:78c"'

label variable S3_Roster_Q1__79 `"Sous impacts:79"'

label variable S3_Roster_Q1__79c `"Sous impacts:79c"'

label variable S3_Roster_Q1__80 `"Sous impacts:80"'

label variable S3_Roster_Q1__80c `"Sous impacts:80c"'

label variable S3_Roster_Q1__81 `"Sous impacts:81"'

label variable S3_Roster_Q1__81c `"Sous impacts:81c"'

label variable S3_Roster_Q1__82 `"Sous impacts:82"'

label variable S3_Roster_Q1__82c `"Sous impacts:82c"'

label variable S3_Roster_Q1__83 `"Sous impacts:83"'

label variable S3_Roster_Q1__83c `"Sous impacts:83c"'

label variable S3_Roster_Q1__84 `"Sous impacts:84"'

label variable S3_Roster_Q1__84c `"Sous impacts:84c"'

label variable S3_Roster_Q1__85 `"Sous impacts:85"'

label variable S3_Roster_Q1__85c `"Sous impacts:85c"'

label variable S3_Roster_Q1__86 `"Sous impacts:86"'

label variable S3_Roster_Q1__86c `"Sous impacts:86c"'

label variable S3_Roster_Q1__87 `"Sous impacts:87"'

label variable S3_Roster_Q1__87c `"Sous impacts:87c"'

label variable S3_Roster_Q1__88 `"Sous impacts:88"'

label variable S3_Roster_Q1__88c `"Sous impacts:88c"'

label variable S3_Roster_Q1__89 `"Sous impacts:89"'

label variable S3_Roster_Q1__89c `"Sous impacts:89c"'

label variable S3_Roster_Q1__90 `"Sous impacts:90"'

label variable S3_Roster_Q1__90c `"Sous impacts:90c"'

label variable S3_Roster_Q1__91 `"Sous impacts:91"'

label variable S3_Roster_Q1__91c `"Sous impacts:91c"'

label variable S3_Roster_Q1__92 `"Sous impacts:92"'

label variable S3_Roster_Q1__92c `"Sous impacts:92c"'

label variable S3_Roster_Q1__93 `"Sous impacts:93"'

label variable S3_Roster_Q1__93c `"Sous impacts:93c"'

label variable S3_Roster_Q1__94 `"Sous impacts:94"'

label variable S3_Roster_Q1__94c `"Sous impacts:94c"'

label variable S3_Roster_Q1__95 `"Sous impacts:95"'

label variable S3_Roster_Q1__95c `"Sous impacts:95c"'

label variable S3_Roster_Q1__96 `"Sous impacts:96"'

label variable S3_Roster_Q1__96c `"Sous impacts:96c"'

label variable S3_Roster_Q1__97 `"Sous impacts:97"'

label variable S3_Roster_Q1__97c `"Sous impacts:97c"'

label variable S3_Roster_Q1__98 `"Sous impacts:98"'

label variable S3_Roster_Q1__98c `"Sous impacts:98c"'

label variable S3_Roster_Q1__99 `"Sous impacts:99"'

label variable S3_Roster_Q1__99c `"Sous impacts:99c"'

label variable S3_Roster_Q1__100 `"Sous impacts:100"'

label variable S3_Roster_Q1__100c `"Sous impacts:100c"'

label variable S3_Roster_Q1__101 `"Sous impacts:101"'

label variable S3_Roster_Q1__101c `"Sous impacts:101c"'

label variable S3_Roster_Q1__102 `"Sous impacts:102"'

label variable S3_Roster_Q1__102c `"Sous impacts:102c"'

label variable S3_Roster_Q1__103 `"Sous impacts:103"'

label variable S3_Roster_Q1__103c `"Sous impacts:103c"'

label variable S3_Roster_Q1__104 `"Sous impacts:104"'

label variable S3_Roster_Q1__104c `"Sous impacts:104c"'

label variable S3_Roster_Q1__105 `"Sous impacts:105"'

label variable S3_Roster_Q1__105c `"Sous impacts:105c"'

label variable S3_Roster_Q1__106 `"Sous impacts:106"'

label variable S3_Roster_Q1__106c `"Sous impacts:106c"'

label variable S3_Roster_Q1__107 `"Sous impacts:107"'

label variable S3_Roster_Q1__107c `"Sous impacts:107c"'

label variable S3_Roster_Q1__108 `"Sous impacts:108"'

label variable S3_Roster_Q1__108c `"Sous impacts:108c"'

label variable S3_Roster_Q1__109 `"Sous impacts:109"'

label variable S3_Roster_Q1__109c `"Sous impacts:109c"'

label variable S3_Roster_Q1__110 `"Sous impacts:110"'

label variable S3_Roster_Q1__110c `"Sous impacts:110c"'

label variable S3_Roster_Q1__111 `"Sous impacts:111"'

label variable S3_Roster_Q1__111c `"Sous impacts:111c"'

label variable S3_Roster_Q1__112 `"Sous impacts:112"'

label variable S3_Roster_Q1__112c `"Sous impacts:112c"'

label variable S3_Roster_Q1__113 `"Sous impacts:113"'

label variable S3_Roster_Q1__113c `"Sous impacts:113c"'

label variable S3_Roster_Q1__114 `"Sous impacts:114"'

label variable S3_Roster_Q1__114c `"Sous impacts:114c"'

label variable S3_Roster_Q1__115 `"Sous impacts:115"'

label variable S3_Roster_Q1__115c `"Sous impacts:115c"'

label variable S3_Roster_Q1__116 `"Sous impacts:116"'

label variable S3_Roster_Q1__116c `"Sous impacts:116c"'

label variable S3_Roster_Q1__117 `"Sous impacts:117"'

label variable S3_Roster_Q1__117c `"Sous impacts:117c"'

label variable S3_Roster_Q1__118 `"Sous impacts:118"'

label variable S3_Roster_Q1__118c `"Sous impacts:118c"'

label variable S3_Roster_Q1__119 `"Sous impacts:119"'

label variable S3_Roster_Q1__119c `"Sous impacts:119c"'

label variable S3_Roster_Q1__120 `"Sous impacts:120"'

label variable S3_Roster_Q1__120c `"Sous impacts:120c"'

label variable S3_Roster_Q1__121 `"Sous impacts:121"'

label variable S3_Roster_Q1__121c `"Sous impacts:121c"'

label variable S3_Roster_Q1__122 `"Sous impacts:122"'

label variable S3_Roster_Q1__122c `"Sous impacts:122c"'

label variable S3_Roster_Q1__123 `"Sous impacts:123"'

label variable S3_Roster_Q1__123c `"Sous impacts:123c"'

label variable S3_Roster_Q1__124 `"Sous impacts:124"'

label variable S3_Roster_Q1__124c `"Sous impacts:124c"'

label variable S3_Roster_Q1__125 `"Sous impacts:125"'

label variable S3_Roster_Q1__125c `"Sous impacts:125c"'

label variable S3_Roster_Q1__126 `"Sous impacts:126"'

label variable S3_Roster_Q1__126c `"Sous impacts:126c"'

label variable S3_Roster_Q1__127 `"Sous impacts:127"'

label variable S3_Roster_Q1__127c `"Sous impacts:127c"'

label variable S3_Roster_Q1__128 `"Sous impacts:128"'

label variable S3_Roster_Q1__128c `"Sous impacts:128c"'

label variable S3_Roster_Q1__129 `"Sous impacts:129"'

label variable S3_Roster_Q1__129c `"Sous impacts:129c"'

label variable S3_Roster_Q1__130 `"Sous impacts:130"'

label variable S3_Roster_Q1__130c `"Sous impacts:130c"'

label variable S3_Roster_Q1__131 `"Sous impacts:131"'

label variable S3_Roster_Q1__131c `"Sous impacts:131c"'

label variable S3_Roster_Q1__132 `"Sous impacts:132"'

label variable S3_Roster_Q1__132c `"Sous impacts:132c"'

label variable S3_Roster_Q1__133 `"Sous impacts:133"'

label variable S3_Roster_Q1__133c `"Sous impacts:133c"'

label variable S3_Roster_Q1__134 `"Sous impacts:134"'

label variable S3_Roster_Q1__134c `"Sous impacts:134c"'

label variable S3_Roster_Q1__135 `"Sous impacts:135"'

label variable S3_Roster_Q1__135c `"Sous impacts:135c"'

label variable S3_Roster_Q1__136 `"Sous impacts:136"'

label variable S3_Roster_Q1__136c `"Sous impacts:136c"'

label variable S3_Roster_Q1__137 `"Sous impacts:137"'

label variable S3_Roster_Q1__137c `"Sous impacts:137c"'

label variable S3_Roster_Q1__138 `"Sous impacts:138"'

label variable S3_Roster_Q1__138c `"Sous impacts:138c"'

label variable S3_Roster_Q1__139 `"Sous impacts:139"'

label variable S3_Roster_Q1__139c `"Sous impacts:139c"'

label variable S3_Roster_Q1__140 `"Sous impacts:140"'

label variable S3_Roster_Q1__140c `"Sous impacts:140c"'

label variable S3_Roster_Q1__141 `"Sous impacts:141"'

label variable S3_Roster_Q1__141c `"Sous impacts:141c"'

label variable S3_Roster_Q1__142 `"Sous impacts:142"'

label variable S3_Roster_Q1__142c `"Sous impacts:142c"'

label variable S3_Roster_Q1__143 `"Sous impacts:143"'

label variable S3_Roster_Q1__143c `"Sous impacts:143c"'

label variable S3_Roster_Q1__144 `"Sous impacts:144"'

label variable S3_Roster_Q1__144c `"Sous impacts:144c"'

label variable S3_Roster_Q1__145 `"Sous impacts:145"'

label variable S3_Roster_Q1__145c `"Sous impacts:145c"'

label variable S3_Roster_Q1__146 `"Sous impacts:146"'

label variable S3_Roster_Q1__146c `"Sous impacts:146c"'

label variable S3_Roster_Q1__147 `"Sous impacts:147"'

label variable S3_Roster_Q1__147c `"Sous impacts:147c"'

label variable S3_Roster_Q1__148 `"Sous impacts:148"'

label variable S3_Roster_Q1__148c `"Sous impacts:148c"'

label variable S3_Roster_Q1__149 `"Sous impacts:149"'

label variable S3_Roster_Q1__149c `"Sous impacts:149c"'

label variable S3_Roster_Q1__150 `"Sous impacts:150"'

label variable S3_Roster_Q1__150c `"Sous impacts:150c"'

label variable S3_Roster_Q1__151 `"Sous impacts:151"'

label variable S3_Roster_Q1__151c `"Sous impacts:151c"'

label variable S3_Roster_Q1__152 `"Sous impacts:152"'

label variable S3_Roster_Q1__152c `"Sous impacts:152c"'

label variable S3_Roster_Q1__153 `"Sous impacts:153"'

label variable S3_Roster_Q1__153c `"Sous impacts:153c"'

label variable S3_Roster_Q1__154 `"Sous impacts:154"'

label variable S3_Roster_Q1__154c `"Sous impacts:154c"'

label variable S3_Roster_Q1__155 `"Sous impacts:155"'

label variable S3_Roster_Q1__155c `"Sous impacts:155c"'

label variable S3_Roster_Q1__156 `"Sous impacts:156"'

label variable S3_Roster_Q1__156c `"Sous impacts:156c"'

label variable S3_Roster_Q1__157 `"Sous impacts:157"'

label variable S3_Roster_Q1__157c `"Sous impacts:157c"'

label variable S3_Roster_Q1__158 `"Sous impacts:158"'

label variable S3_Roster_Q1__158c `"Sous impacts:158c"'

label variable S3_Roster_Q1__159 `"Sous impacts:159"'

label variable S3_Roster_Q1__159c `"Sous impacts:159c"'

label variable S3_Roster_Q1__160 `"Sous impacts:160"'

label variable S3_Roster_Q1__160c `"Sous impacts:160c"'

label variable S3_Roster_Q1__161 `"Sous impacts:161"'

label variable S3_Roster_Q1__161c `"Sous impacts:161c"'

label variable S3_Roster_Q1__162 `"Sous impacts:162"'

label variable S3_Roster_Q1__162c `"Sous impacts:162c"'

label variable S3_Roster_Q1__163 `"Sous impacts:163"'

label variable S3_Roster_Q1__163c `"Sous impacts:163c"'

label variable S3_Roster_Q1__164 `"Sous impacts:164"'

label variable S3_Roster_Q1__164c `"Sous impacts:164c"'

label variable S3_Roster_Q1__165 `"Sous impacts:165"'

label variable S3_Roster_Q1__165c `"Sous impacts:165c"'

label variable S3_Roster_Q1__166 `"Sous impacts:166"'

label variable S3_Roster_Q1__166c `"Sous impacts:166c"'

label variable S3_Roster_Q1__167 `"Sous impacts:167"'

label variable S3_Roster_Q1__167c `"Sous impacts:167c"'

label variable S3_Roster_Q1__168 `"Sous impacts:168"'

label variable S3_Roster_Q1__168c `"Sous impacts:168c"'

label variable S3_Roster_Q1__169 `"Sous impacts:169"'

label variable S3_Roster_Q1__169c `"Sous impacts:169c"'

label variable S3_Roster_Q1__170 `"Sous impacts:170"'

label variable S3_Roster_Q1__170c `"Sous impacts:170c"'

label variable S3_Roster_Q1__171 `"Sous impacts:171"'

label variable S3_Roster_Q1__171c `"Sous impacts:171c"'

label variable S3_Roster_Q1__172 `"Sous impacts:172"'

label variable S3_Roster_Q1__172c `"Sous impacts:172c"'

label variable S3_Roster_Q1__173 `"Sous impacts:173"'

label variable S3_Roster_Q1__173c `"Sous impacts:173c"'

label variable S3_Roster_Q1__174 `"Sous impacts:174"'

label variable S3_Roster_Q1__174c `"Sous impacts:174c"'

label variable S3_Roster_Q1__175 `"Sous impacts:175"'

label variable S3_Roster_Q1__175c `"Sous impacts:175c"'

label variable S3_Roster_Q1__176 `"Sous impacts:176"'

label variable S3_Roster_Q1__176c `"Sous impacts:176c"'

label variable S3_Roster_Q1__177 `"Sous impacts:177"'

label variable S3_Roster_Q1__177c `"Sous impacts:177c"'

label variable S3_Roster_Q1__178 `"Sous impacts:178"'

label variable S3_Roster_Q1__178c `"Sous impacts:178c"'

label variable S3_Roster_Q1__179 `"Sous impacts:179"'

label variable S3_Roster_Q1__179c `"Sous impacts:179c"'

label variable S3_Roster_Q1__180 `"Sous impacts:180"'

label variable S3_Roster_Q1__180c `"Sous impacts:180c"'

label variable S3_Roster_Q1__181 `"Sous impacts:181"'

label variable S3_Roster_Q1__181c `"Sous impacts:181c"'

label variable S3_Roster_Q1__182 `"Sous impacts:182"'

label variable S3_Roster_Q1__182c `"Sous impacts:182c"'

label variable S3_Roster_Q1__183 `"Sous impacts:183"'

label variable S3_Roster_Q1__183c `"Sous impacts:183c"'

label variable S3_Roster_Q1__184 `"Sous impacts:184"'

label variable S3_Roster_Q1__184c `"Sous impacts:184c"'

label variable S3_Roster_Q1__185 `"Sous impacts:185"'

label variable S3_Roster_Q1__185c `"Sous impacts:185c"'

label variable S3_Roster_Q1__186 `"Sous impacts:186"'

label variable S3_Roster_Q1__186c `"Sous impacts:186c"'

label variable S3_Roster_Q1__187 `"Sous impacts:187"'

label variable S3_Roster_Q1__187c `"Sous impacts:187c"'

label variable S3_Roster_Q1__188 `"Sous impacts:188"'

label variable S3_Roster_Q1__188c `"Sous impacts:188c"'

label variable S3_Roster_Q1__189 `"Sous impacts:189"'

label variable S3_Roster_Q1__189c `"Sous impacts:189c"'

label variable S3_Roster_Q1__190 `"Sous impacts:190"'

label variable S3_Roster_Q1__190c `"Sous impacts:190c"'

label variable S3_Roster_Q1__191 `"Sous impacts:191"'

label variable S3_Roster_Q1__191c `"Sous impacts:191c"'

label variable S3_Roster_Q1__192 `"Sous impacts:192"'

label variable S3_Roster_Q1__192c `"Sous impacts:192c"'

label variable S3_Roster_Q1__193 `"Sous impacts:193"'

label variable S3_Roster_Q1__193c `"Sous impacts:193c"'

label variable S3_Roster_Q1__194 `"Sous impacts:194"'

label variable S3_Roster_Q1__194c `"Sous impacts:194c"'

label variable S3_Roster_Q1__195 `"Sous impacts:195"'

label variable S3_Roster_Q1__195c `"Sous impacts:195c"'

label variable S3_Roster_Q1__196 `"Sous impacts:196"'

label variable S3_Roster_Q1__196c `"Sous impacts:196c"'

label variable S3_Roster_Q1__197 `"Sous impacts:197"'

label variable S3_Roster_Q1__197c `"Sous impacts:197c"'

label variable S3_Roster_Q1__198 `"Sous impacts:198"'

label variable S3_Roster_Q1__198c `"Sous impacts:198c"'

label variable S3_Roster_Q1__199 `"Sous impacts:199"'

label variable S3_Roster_Q1__199c `"Sous impacts:199c"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
