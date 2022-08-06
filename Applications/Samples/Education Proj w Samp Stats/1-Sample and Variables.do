*Placing restrictions on the data*
keep if bpl < 100
gen notcontUSA = 1 if (statefip == 02) | (statefip == 15)
keep if notcontUSA != 1
keep if age > 24 & age < 65

*Race bucket*
gen white = 1 if race == 1
gen black = 1 if race == 2
gen asian = 1 if race == 4 | race == 5 | race == 6
gen hispanic = 1 if hispan != 0
gen Brace = 0
replace Brace = 1 if white == 1
replace Brace = 2 if black == 1
replace Brace = 3 if asian == 1
replace Brace = 4 if hispanic == 1
keep if Brace > 0

*d.Educ bucket*
gen edu = 0
*Less than HS graduate*
replace edu = 1 if educd < 62
*HS Graduate*
replace edu = 2 if educd == 62
*Some college*
replace edu = 3 if educd == 71
*Associate Degree*
replace edu = 4 if educd == 82 | educd == 83
*Bachelor's Degree*
replace edu = 5 if educd == 101
*Advanced Group: Degree*
replace edu = 6 if educd == 114 | educd == 115 | educd ==116

*Hourly Wages*
gen hrwage = ((incwage/52)/uhrswork)
drop if uhrswork == 00