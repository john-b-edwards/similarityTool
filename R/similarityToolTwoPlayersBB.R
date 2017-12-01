similarityToolTwoPlayersBB <- function(battedBallVals, playerNameOne, playerNameTwo){
  source("similarityToolBB.R")
  length = nrow(battedBallVals)
  result = similarityToolOff(battedBallVals, playerNameOne, length)
  return(result[result$Name == playerNameTwo,]$Scores)
}
