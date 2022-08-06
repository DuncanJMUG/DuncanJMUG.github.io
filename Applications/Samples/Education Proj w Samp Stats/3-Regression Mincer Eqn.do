*Log Wage*
gen lwage = log(hrwage)

*Restrict to White Males*
keep if Brace == 1 & sex == 1

*Dummies for State*
tab statefip, generate(STATE)

*New Educs interval dummies: 1*
gen D1 = 0
replace D1 = 1 if edu == 2
gen D2 = 0
replace D2 = 1 if edu == 3 | edu == 4
gen D3 = 0
replace D3 = 1 if edu == 5 | edu == 6

*New Educs interval dummies: 2*
gen E1 = 0
replace E1 = 1 if edu > 1
gen E2 = 0
replace E2 = 1 if edu > 2
gen E3 = 0
replace E3 = 1 if edu == 5 | edu == 6

*Labor Market Experience*
gen x = age
gen x2 = x^2

*First Regression*
reg lwage D1 D2 D3 x x2 STATE1 STATE2 STATE3 STATE4 STATE5 STATE6 STATE7 STATE8 STATE9 STATE10 STATE11 STATE12 STATE13 STATE14 STATE15 STATE16 STATE17 STATE18 STATE19 STATE20 STATE21 STATE22 STATE23 STATE24 STATE25 STATE26 STATE27 STATE28 STATE29 STATE30 STATE31 STATE32 STATE33 STATE34 STATE35 STATE36 STATE37 STATE38 STATE39 STATE40 STATE41 STATE42 STATE43 STATE44 STATE45 STATE46 STATE47 STATE48
outreg2 using result_table01, nolabel se bdec(3) coefastr word rdec(3) 

*Second Regression*
reg lwage E1 E2 E3 x x2 STATE1 STATE2 STATE3 STATE4 STATE5 STATE6 STATE7 STATE8 STATE9 STATE10 STATE11 STATE12 STATE13 STATE14 STATE15 STATE16 STATE17 STATE18 STATE19 STATE20 STATE21 STATE22 STATE23 STATE24 STATE25 STATE26 STATE27 STATE28 STATE29 STATE30 STATE31 STATE32 STATE33 STATE34 STATE35 STATE36 STATE37 STATE38 STATE39 STATE40 STATE41 STATE42 STATE43 STATE44 STATE45 STATE46 STATE47 STATE48
outreg2 using result_table02, nolabel se bdec(3) coefastr word rdec(3)