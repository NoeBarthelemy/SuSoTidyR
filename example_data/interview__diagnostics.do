clear
insheet using "interview__diagnostics.tab", tab case names

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'
label variable interview__id `"Unique 32-character long identifier of the interview"'
label define interview__status 0 `"Restored"' 20 `"Created"' 40 `"SupervisorAssigned"' 60 `"InterviewerAssigned"' 65 `"RejectedBySupervisor"' 80 `"ReadyForInterview"' 85 `"SentToCapi"' 95 `"Restarted"' 100 `"Completed"' 120 `"ApprovedBySupervisor"' 125 `"RejectedByHeadquarters"' 130 `"ApprovedByHeadquarters"' -1 `"Deleted"' 
label values interview__status interview__status
label variable interview__status `"Last status of interview"'
label variable responsible `"Last responsible person"'
label variable interviewers `"Number of interviewers who worked on this interview"'
label variable rejections__sup `"How many times this interview was rejected by supervisors"'
label variable rejections__hq `"How many times this interview was rejected by HQ"'
label variable entities__errors `"Number of questions and static texts with errors"'
label variable questions__comments `"Number of questions with comments"'
label variable interview__duration `"Active time it took to complete the interview, DD.HH:MM:SS"'
label variable n_questions_unanswered `"Number of unanswered questions"'
