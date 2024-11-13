clear
insheet using "interview__actions.tab", tab case names

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'
label variable interview__id `"Unique 32-character long identifier of the interview"'
label variable date `"Date when the action was taken"'
label variable time `"Time when the action was taken"'
label define action 0 `"SupervisorAssigned"' 1 `"InterviewerAssigned"' 2 `"FirstAnswerSet"' 3 `"Completed"' 4 `"Restarted"' 5 `"ApprovedBySupervisor"' 6 `"ApprovedByHeadquarter"' 7 `"RejectedBySupervisor"' 8 `"RejectedByHeadquarter"' 9 `"Deleted"' 10 `"Restored"' 11 `"UnapprovedByHeadquarter"' 12 `"Created"' 13 `"InterviewReceivedByTablet"' 14 `"Resumed"' 15 `"Paused"' 16 `"TranslationSwitched"' 17 `"OpenedBySupervisor"' 18 `"ClosedBySupervisor"' 19 `"InterviewSwitchedToCawiMode"' 20 `"InterviewSwitchedToCapiMode"' 21 `"InterviewReceivedBySupervisor"' 
label values action action
label variable action `"Type of action taken"'
label variable originator `"Login name of the person performing the action"'
label define role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"API User"' 
label values role role
label variable role `"System role of the person performing the action"'
label variable responsible__name `"Login name of the person now responsible for the interview"'
label define responsible__role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"API User"' 
label values responsible__role responsible__role
label variable responsible__role `"System role of the person now responsible for the interview"'
