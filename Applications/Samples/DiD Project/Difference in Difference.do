**************************************
*Summary Statistics by Year and State*
**************************************

sum edu if t == 0 & d == 0
sum edu if t == 1 & d == 0
sum edu if t == 0 & d == 1
sum edu if t == 1 & d == 1




sum age if t == 0 & d == 0
sum age if t == 1 & d == 0
sum age if t == 0 & d == 1
sum age if t == 1 & d == 1




sum y if t == 0 & d == 0
*SE for t0 and d0
display 0.3117195/(272^0.5)

sum y if t == 1 & d == 0
*SE for t1 and d0
display 0.3483928/(272^0.5)

sum y if t == 0 & d == 1
*SE for t0 and d1
display 0.3141841/(264^0.5)

sum y if t == 1 & d == 1
*SE for t1 and d1
display 0.3410369/(264^0.5)


*Generating new ID variable for everyone
*gen count = _n


***********************************************
*Difference-in-Difference Estimations and SE's*
***********************************************

*(D1 - D0, t0)
display 0.52548-0.66726
*SE(D1 - D0)
gen x1 = (0.31172^2)/272
gen x2 = (0.31418^2)/264
display ((x1 + x2)^0.5)*1.96

*(D1 - D0, t1)
display 0.58405 - 0.63098
*SE(D1-D0, t1)
replace x1 = (0.34104^2)/264
replace x2 = (0.34839^2)/272
display ((x1 + x2)^0.5)*1.96


*(t1-t0,D0)
display 0.63098-0.66726
*SE(t1-t0,D0)
sort id d t
gen newvar = y - y[_n-1] if t == 1
sum newvar if d == 0 & t == 1
sum newvar if d == 1 & t == 1
gen dbar = -0.0362783 if d == 0
replace dbar = 0.058564 if d == 1
gen diff = (newvar - dbar) if t == 1

gen diff4 = diff^2

*SE diffD0
sum(diff4) if d == 0 & t == 1
display r(sum)

display (12.838692/271)^0.5
display (0.21765856/(272^0.5))*1.96

*SE diffD1 
sum(diff4) if d == 1 & t == 1
display r(sum)

display(10.968136/263)^0.5
display(0.20421542/(264^0.5))*1.96



