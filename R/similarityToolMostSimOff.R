similarityToolMostSimOff <- function(battedBallVals, numResults){
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1}
  names = battedBallVals[,"Name"]
  years = battedBallVals[,"Season"]
  result = data.frame(NULL)
  for (row in 1:nrow(names)) {
    name = names[row,]
    year = years[row,]
    result = rbind(result, similarityToolOff(battedBallVals, toString(name), 1, year))
  }
  result$OriginalPlayer = as.data.frame(names)
  names(result)[names(result)=="Name"] <- "Most Similar Player"
  result = result[order(result$Scores),]
  return(result[1:numResults,])
}

