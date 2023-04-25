* Encoding: UTF-8.

RECODE Q12_1 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_1.
EXECUTE.
RECODE Q12_2 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_2.
EXECUTE.
RECODE Q12_3 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_3.
EXECUTE.
RECODE Q12_4 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_4.
EXECUTE.
RECODE Q12_5 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_5.
EXECUTE.
RECODE Q12_6 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_6.
EXECUTE.
RECODE Q12_7 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_7.
EXECUTE.
RECODE Q12_8 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO R12_8.
EXECUTE.


COMPUTE Rpro=mean(R12_1,R12_2,R12_3,R12_4,R12_5,R12_6,R12_7,R12_8).
EXECUTE.

COMPUTE genex_2=sum(Q14_2,Q18_2).
EXECUTE.
COMPUTE genex_3=sum(Q14_3,Q18_3).
EXECUTE.
COMPUTE genex_4=sum(Q14_4,Q18_4).
EXECUTE.
COMPUTE genex_5=sum(Q14_5,Q18_5).
EXECUTE.


COMPUTE genex=mean(genex_2,genex_3,genex_1,genex_4,genex_5).
EXECUTE.

ONEWAY CulV inter stem exter int gen pros ex st pr APPE ind interde fam piety BY Gender
  /STATISTICS DESCRIPTIVES 
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).
