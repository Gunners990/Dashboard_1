# Dashboard_1 

SOME OF THE PROBLEMS I FACED WORKING ON THIS PROJECT: 

ONE OF THE FIRST PROBLEMS I FACED WAS NOT KNOWING WHETHER OR NOT I SHOULD USE PERCENTILERANK.INC OR PERCENTILERANK.EXC WHEN SWITCHING MY DATA INTO PERCENTILES.  

I WAS STILL FAIRLY NEW TO EXCEL AND DIDN’T KNOW ABOUT ABSOLUTE REFERENCES WHEN CREATING MY PERCENTILE RESULTS. 
THIS WAS AFTER I FOUND THAT SOME OF THE PERCENTILE RESULTS NEAR THE BOTTOM OF A COLUMN DIDN’T SEEM TO REPRESENT THE FULL DATA (E.G ODEGAARD HAD A SCA RESULT OF 220 YET EXCEL HAD STATED THAT HE WAS ONLY IN THE 80th PERCENTILE). 

AFTER JOINING SOME TABLES TOGETHER AND DISPLAYING THIS DATA IN TABLEAU, I FOUND THAT SOME OF THE DATA DIDN’T MATCH THE PLAYERS. EVENTUALLY, I FOUND THAT THERE WERE PLAYERS IN THE ‘POSSESSION’ TABLE BUT NOT IN THE OTHER TABLES. TO GET PAST THIS, I USED THE ‘IF’ FUNCTION NEXT TO A LIST OF PLAYER NAMES FROM THE ‘POSSESSION’ TABLE AND THE ‘GS CREATION’ TABLE AND RAN THE FORMULA TO WHERE IF BOTH ADJACENT CELLS WERE EQUAL, LABEL IT AS TRUE AND IF BOTH WERE DIFFERENT, LABEL IT AS FALSE. USING THIS, I WAS ABLE TO WEED OUT THE NAMES THAT WEREN’T IN THE OTHER TABLES AND DELETED THEM. THIS NOW GAVE ME DATA THAT MATCHED THE PLAYER. LOOKING BACK, I COULD HAVE APPROACHED THIS USING CONDITIONAL FORMATTING. 

AFTER MAKING A RADAR CHART, I FOUND THAT ALTHOUGH I TURNED THE DATA INTO PERCENTILES, I DISCOVERED THAT FOR PLAYERS WHO PLAYED FOR TWO CLUBS DURING THE 23/24 SEASON (E.G JEREMY DOKU PLAYED 2 GAMES FOR STADE RENNAIS PRIOR TO HIS MOVE TO MANCHESTER CITY) THEIR PERCENTILES FOR STATS OVER BOTH CLUBS WERE COMBINED. THIS MEANT THAT THE RADARS MAX RANGE WASN’T 100. TO ADDRESS THIS, I USED THE CONCAT FUNCTION IN EXCEL TO CONCATENATE THE NAME COLUMN AND THE TEAM NAME (SQUAD) COLUMN WITHIN A PARENTHESIS - E.G MAX AARONS (BOURNEMOUTH). 

ANOTHER ISSUE WAS HOW THE RADAR CHART LOOKED. I FOUND THAT THE RADAR CHART DIDN'T MOVE MUCH WHEN COMPARING WINGERS WHO DIFFERED QUITE SUBSTANTIALLY. I REALISED THIS WAS BECAUSE I HAD CALCULATED THE PERCENTILES OF ALL PLAYERS WITHIN THE TOP 5 LEAGUES AND NOT STRICTLY FORWARDS. THIS MEANT THAT I WASN'T REALLY COMPARING WINGERS BUT PLAYERS, IRRESPECTIVE OF WHERE THEY PLAYED. TO GIVE A MORE REPRESENTITIVE CHART, I USED EXCEL TO FILTER PLAYERS THAT WEREN'T A FORWARD AND RE-CALCULATED THE PERCENTILES SO THE RESULTS WERE RESPECTIEVE OF FORWARDS AND NOT THE WHOLE DATA. INITIALLY, I HAD INTENDED TO DO THIS THROUGH SQL USING WILDCARD CHARACTERS TO LOOK FOR FORWARDS. HOWEVER, THIS MEANT THAT IF I EXCLUDE PLAYERS, I'D HAVE TO RERANK THEM. THIS WOULDN'T HAVE BEEN A PROBLEM IF I HAD CREATED MY TABLE USING SQL AS I'D AUTO INCREMENT THE RANK COLUMN. 

