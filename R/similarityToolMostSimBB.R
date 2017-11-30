similarityToolMostSimBB <- function(battedBallVals, numResults){
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1}
  source("R/similarityToolBB.R")
  names = battedBallVals[,"Name"]
  result = data.frame(NULL)
  for (row in 1:nrow(names)) {
    name = names[row,]
    result = rbind(result, similarityToolBB(battedBallVals, toString(name), 1))
  }
  result = result[seq(1,nrow(result)-1,2),]
  result$OriginalPlayer = as.data.frame(names)
  names(result)[names(result)=="Name"] <- "Most Similar Player"
  result = result[order(result$Scores),]
  return(result[1:numResults,])
}
