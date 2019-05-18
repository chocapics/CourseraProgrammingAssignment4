best <- function(state, outcome) {
        
        outcome_data <- read.csv("rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv",
                                 stringsAsFactors = FALSE)
        
        if (!any (state == outcome_data$State))
                stop("invalid state")
        
        else if (outcome %in% c("heart attack", "heart failure", "pneumonia") 
                 == FALSE)
                stop("invalid outcome")
        
        outcome_data <- subset(outcome_data, state == State)
        if (outcome == "heart attack") colnum <- 11
        else if (outcome == "heart failure") colnum <-17
        else colnum <- 23
        
        # filter all the hospitals 
        outcome_data[ ,colnum] <- suppressWarnings(as.numeric(outcome_data[ ,colnum]))
        min_row <- which(outcome_data[ ,colnum] == min(outcome_data[ ,colnum], na.rm = TRUE))
        hospitals <- outcome_data[min_row, 2]
        hospitals <- sort(hospitals)
        return(hospitals)
}
