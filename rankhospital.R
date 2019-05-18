rankhospital <- function(state, outcome, num = "best") {
        
        data <- read.csv("rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv",
                         colClasses = "character")
        
        # check the validity of the outcome and distribute the according colunm to the outcome
        if (outcome == "heart attack") # heart attack
                colnum <- 11
        else if (outcome == "heart failure") # heart failure
                colnum <- 17
        else if (outcome == "pneumonia")  # pneumonia
                colnum <- 23
        else 
                stop("invalid outcome")
        
        # check the validity of the num
        if (!is.numeric(num) && !(num %in% c("best", "worst")))
                stop("invalid num")
        
        # check the validty of the state
        if (!(state %in% data$State)) 
                stop("invalid state")
        
        # combine the 3 useful columns together and remove na
        data <- subset(data, State == state)
        fd <- as.data.frame(cbind(data[, 2],       # hospital
                                  data[, 7],       # state
                                  data[, colnum]), # outcome
                            stringsAsFactors = FALSE) 
        colnames(fd) <- c("hospital", "state", outcome)
        fd[[outcome]] <- suppressWarnings(as.numeric(fd[[outcome]]))
        fd <- na.omit(fd)
        
        if (num == "best")
                num <- 1
        
        # for worst, we will reverse the order of rank, and take the 1st one
        reverse_sort <- FALSE
        if (num == "worst") {
                reverse_sort <- TRUE
                num <- 1
        }
        
        r <- fd[order(fd[outcome], fd["hospital"], decreasing = reverse_sort), ]
        result <- r[num, "hospital"]
        result
}