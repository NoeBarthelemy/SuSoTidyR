clear
insheet using "interview__errors.tab", tab case names

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'
label variable interview__id `"Unique 32-character long identifier of the interview"'
label variable roster `"Name of the roster containing the variable"'
capture label variable id1 `"Roster ID of the 1st level of nesting"'
label variable variable `"Variable name for the question, where validation error occurred"'
label define type 1 `"Section"' 2 `"Question"' 3 `"StaticText"' 4 `"Variable"' 
label values type type
label variable type `"Type of the variable where the validation error occurred"'
label variable message__number `"Numeric index of the validation rule that has fired"'
label variable message `"Text of the error message"'
