*Education Table*
*All persons*
tab edu
*Edu by gender, sex == 1 is male and sex == 2 is female*
tab edu if sex == 1 
tab edu if sex == 2
*Edu by race, with the identifiers being from the Brace variable*
tab edu if Brace == 1
tab edu if Brace == 2
tab edu if Brace == 4
tab edu if Brace == 3



*Workforce table*
*All Workers*
	*Less than HS*
tab labforce if edu == 1
tab empstat if edu == 1
sum incwage if edu == 1
	*HS Graduate*
tab labforce if edu == 2
tab empstat if edu == 2
sum incwage if edu == 2
	*Some College*
tab labforce if edu == 3
tab empstat if edu == 3
sum incwage if edu == 3
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6
tab empstat if edu ==  4 | edu == 5 | edu == 6
sum incwage if edu ==  4 | edu == 5 | edu == 6

*Gender: Male*
	*Less than HS*
tab labforce if edu == 1 & sex == 1
tab empstat if edu == 1 & sex == 1
sum incwage if edu == 1 & sex == 1
	*HS Graduate*
tab labforce if edu == 2 & sex == 1
tab empstat if edu == 2 & sex == 1
sum incwage if edu == 2 & sex == 1
	*Some College*
tab labforce if edu == 3 & sex == 1
tab empstat if edu == 3 & sex == 1
sum incwage if edu == 3 & sex == 1
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & sex == 1
tab empstat if edu ==  4 | edu == 5 | edu == 6 & sex == 1
sum incwage if edu ==  4 | edu == 5 | edu == 6 & sex == 1

*Gender: Female*
	*Less than HS*
tab labforce if edu == 1 & sex == 2
tab empstat if edu == 1 & sex == 2
sum incwage if edu == 1 & sex == 2
	*HS Graduate*
tab labforce if edu == 2 & sex == 2
tab empstat if edu == 2 & sex == 2
sum incwage if edu == 2 & sex == 2
	*Some College*
tab labforce if edu == 3 & sex == 2
tab empstat if edu == 3 & sex == 2
sum incwage if edu == 3 & sex == 2
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & sex == 2
tab empstat if edu ==  4 | edu == 5 | edu == 6 & sex == 2
sum incwage if edu ==  4 | edu == 5 | edu == 6 & sex == 2

*Race:White*
	*Less than HS*
tab labforce if edu == 1 & Brace == 1
tab empstat if edu == 1 & Brace == 1
sum incwage if edu == 1 & Brace ==1 
	*HS Graduate*
tab labforce if edu == 2 & Brace == 1
tab empstat if edu == 2 & Brace == 1
sum incwage if edu == 2 & Brace == 1
	*Some College*
tab labforce if edu == 3 & Brace == 1
tab empstat if edu == 3 & Brace == 1
sum incwage if edu == 3 & Brace == 1
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & Brace == 1
tab empstat if edu ==  4 | edu == 5 | edu == 6 & Brace == 1
sum incwage if edu ==  4 | edu == 5 | edu == 6 & Brace == 1

*Race:Black*
	*Less than HS*
tab labforce if edu == 1 & Brace == 2
tab empstat if edu == 1 & Brace == 2
sum incwage if edu == 1 & Brace == 2
	*HS Graduate*
tab labforce if edu == 2 & Brace == 2
tab empstat if edu == 2 & Brace == 2
sum incwage if edu == 2 & Brace == 2
	*Some College*
tab labforce if edu == 3 & Brace == 2
tab empstat if edu == 3 & Brace == 2
sum incwage if edu == 3 & Brace == 2
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & Brace == 2
tab empstat if edu ==  4 | edu == 5 | edu == 6 & Brace == 2
sum incwage if edu ==  4 | edu == 5 | edu == 6 & Brace == 2

*Race:Hispanic*
	*Less than HS*
tab labforce if edu == 1 & Brace == 4
tab empstat if edu == 1 & Brace == 4
sum incwage if edu == 1 & Brace == 4
	*HS Graduate*
tab labforce if edu == 2 & Brace == 4
tab empstat if edu == 2 & Brace == 4
sum incwage if edu == 2 & Brace == 4
	*Some College*
tab labforce if edu == 3 & Brace == 4
tab empstat if edu == 3 & Brace == 4
sum incwage if edu == 3 & Brace == 4
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & Brace == 4
tab empstat if edu ==  4 | edu == 5 | edu == 6 & Brace == 4
sum incwage if edu ==  4 | edu == 5 | edu == 6 & Brace == 4

*Race:Asian*
	*Less than HS*
tab labforce if edu == 1 & Brace == 3
tab empstat if edu == 1 & Brace == 3
sum incwage if edu == 1 & Brace == 3
	*HS Graduate*
tab labforce if edu == 2 & Brace == 3
tab empstat if edu == 2 & Brace == 3
sum incwage if edu == 2 & Brace == 3
	*Some College*
tab labforce if edu == 3 & Brace == 3
tab empstat if edu == 3 & Brace == 3
sum incwage if edu == 3 & Brace == 3
	*College Graduates*
tab labforce if edu == 4 | edu == 5 | edu == 6 & Brace == 3
tab empstat if edu ==  4 | edu == 5 | edu == 6 & Brace == 3
sum incwage if edu ==  4 | edu == 5 | edu == 6 & Brace == 3