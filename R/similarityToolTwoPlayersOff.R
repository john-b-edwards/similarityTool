similarityToolTwoPlayersOff <- function(battedBallVals, playerNameOne, playerNameTwo){
  source("similarityToolOff.R")
  length = nrow(battedBallVals)
  result = similarityToolOff(battedBallVals, playerNameOne, length)
  return(result[result$Name == playerNameTwo,]$Scores)
}
