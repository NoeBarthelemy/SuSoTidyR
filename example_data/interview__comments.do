clear
insheet using "interview__comments.tab", tab case names

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'
label variable interview__id `"Unique 32-character long identifier of the interview"'
label variable roster `"Name of the roster containing the variable"'
capture label variable id1 `"Roster ID of the 1st level of nesting"'
label variable variable `"Variable name for the commented question"'
label variable order `"Sequential order of the comment"'
label variable date `"Date when the comment was left"'
label variable time `"Time when the comment was left"'
label variable originator `"Login name of the person leaving the comment"'
label variable role `"System role of the person leaving the comment"'
label variable comment `"Text of the comment"'
