# CourseraProgrammingAssignment4
Coursera - R Programming - Week 4 - Programming Assignment - Hospital Quality

best()

Write a function called best() that takes TWO (2) arguments: (a) the TWO(2)-character abbreviated name of a state; 
and (b) an outcome name. The function reads the outcome-of-care-measures.csv file and returns a character vector with 
the name of the hospital that has the best (i.e. LOWEST) 30-day mortality for the specified outcome in that state. The 
hospital name is the name provided in the Hospital.Name variable. The outcomes can be one of “heart attack”, “heart failure”,
or “pneumonia”. The function should use the following template.

best <- function(state, outcome) {                                                  
          ## Read outcome data                                                        
          ## Check that state and outcome are valid                                   
          ## Return hospital name in that state with lowest 30-day death rate         
  }   
  
The function should check the validity of its arguments. If an invalid state value is passed to best(), the function should 
throw an error via the stop() function with the exact message “invalid state”. If an invalid outcome value is passed to best(),
the function should throw an error via the stop() function with the exact message “invalid outcome”.



rankhospital()

Write a function called rankhospital() that takes THREE (3) arguments: (a) the TWO(2)-character abbreviated name of a state 
(state); (b) an outcome (outcome); and © the ranking of a hospital in that state for that outcome (num). The function reads 
the outcome-of-care-measures.csv file and returns a character vector with the name of the hospital that has the ranking 
specified by the num argument. For example, the call:

rankhospital <- function(state, outcome, num = "best") {                            
                  ## Read outcome data                                                
                  ## Check that state and outcome are valid                           
                  ## Return hospital name in that state with the given rank           
                  ## THIRTY(30)-day death rate                                        
  }      
  
Hospitals that do NOT have data on a particular outcome should be excluded from the set of hospitals when deciding the rankings.
If there is MORE THAN ONE (1) hospital for a given ranking, then the hospital names should be sorted in alphabetical order 
and the FIRST (1st) hospital in that set should be returned (i.e. if hospitals “b”, “c”, and “f” are tied for a given rank, 
then hospital “b” should be returned).

The function should check the validity of its arguments. If an invalid state value is passed to rankhospital(), the function 
should throw an error via the stop() function with the exact message “invalid state”. If an invalid outcome value is passed 
to rankhospital(), the function should throw an error via the stop() function with the exact message “invalid outcome”. The 
num variable can take values “best”, “worst”, or an integer indicating the ranking (SMALLER numbers are better). If the number
given by num is larger than the number of hospitals in that state, then the function should return NA.



rankall()
Write a function called rankall() that takes TWO (2) arguments: (a) an outcome name (outcome); and (b) a hospital ranking (num).
The function reads the outcome-of-care-measures.csv file and returns a TWO(2)-column data frame containing the hospital in 
EACH state that has the ranking specified in num. For example the function call

rankall(“heart attack”, “best”)

would return a data frame containing the names of the hospitals that are the best in their respective states for THIRTY(30)-day
heart attack death rates. The function should return a value for EVERY state (some may be NA). The FIRST (1st) column in the 
data frame is named hospital, which contains the hospital name, and the SECOND (2nd) column is named state, which contains the 
TWO(2)-character abbreviation for the state name. The function should use the following template.

rankall <-  function(outcome, num = "best") {                                       
              ## Read outcome data                                                    
              ## For each state, find the hospital of the given rank                  
              ## Return a data frame with the hospital names and the (abbreviated)    
              ## state name                                                           
  }    
  
Hospitals that do NOT have data on a particular outcome should be excluded from the set of hospitals when deciding the rankings.

If there is MORE THAN ONE (1) hospital for a given ranking, then the hospital names should be sorted in alphabetical order and 
the FIRST (1st) hospital in that set should be returned (i.e. if hospitals “b”, “c”, and “f” are tied for a given rank, then 
hospital “b” should be returned).

NOTE: For the purpose of this part of the assignment (and for efficiency), your function should NOT call the rankhospital() 
function from the previous section.

The function should check the validity of its arguments. If an invalid outcome value is passed to rankall(), the function 
should throw an error via the stop() function with the exact message “invalid outcome”. The num variable can take values 
“best”, “worst”, or an integer indicating the ranking (SMALLER numbers are better). If the number given by num is larger than 
the number of hospitals in that state, then the function should return NA.
