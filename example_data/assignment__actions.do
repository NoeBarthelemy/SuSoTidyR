clear
insheet using "assignment__actions.tab", tab case names

label variable assignment__id `"Assignment id (identifier in numeric format)"'
label variable date `"Utc Date when the action was taken"'
label variable time `"Utc Time when the action was taken"'
label define action 0 `"Unknown"' 1 `"Created"' 2 `"Archived"' 3 `"Deleted"' 4 `"ReceivedByTablet"' 5 `"Unarchived"' 6 `"AudioRecordingChanged"' 7 `"Reassigned"' 8 `"QuantityChanged"' 9 `"WebModeChanged"' 
label values action action
label variable action `"Type of action taken"'
label variable originator `"Login name of the person performing the action"'
label define role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"API User"' 
label values role role
label variable role `"System role of the person performing the action"'
label variable responsible__name `"Login name of the person now responsible for the assignment"'
label define responsible__role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"API User"' 
label values responsible__role responsible__role
label variable responsible__role `"System role of the person now responsible for the assignment"'
label variable old__value `"Value before changes"'
label variable new__value `"Value after changes"'
label variable comment `"Text of the comment"'
