*** /// Table 1 \\\ ***

format g1ageyrc g3ageyrc g4ageyrc g5ageyrc g6ageyrc mean_edu_par T1_smok_par_3cat g1wiscdq p1eaefc Zedu_PRS1 Zsmok_PRS1 smoking3_MP smoking4_MP smoking5_MP smoking6_MP %9.2f

* N participants and mean age
sum g1ageyrc g3ageyrc g4ageyrc g5ageyrc g6ageyrc, format

* % male per wave
tab g1sex if g1ageyrc !=.
tab g1sex if g3ageyrc !=.
tab g1sex if g4ageyrc !=.
tab g1sex if g5ageyrc !=.
tab g1sex if g6ageyrc !=.

* baseline variables
sum mean_edu_par T1_smok_par_3cat g1wiscdq p1eaefc Zedu_PRS1 Zsmok_PRS1, format

* % clinical cohort 
tab cohort 

* correlation between PGSs
cor Zedu_PRS1 Zsmok_PRS1

* educational level
tab1 T3_ladder_4cat T4_ladder_4cat T5_ladder_4cat T6_ladder_4cat

* smoking
sum smoking3_MP smoking4_MP smoking5_MP smoking6_MP, format

by T3_ladder_4cat, sort: sum smoking3_MP, format
by T4_ladder_4cat, sort: sum smoking4_MP, format
by T5_ladder_4cat, sort: sum smoking5_MP, format
by T6_ladder_4cat, sort: sum smoking6_MP, format

