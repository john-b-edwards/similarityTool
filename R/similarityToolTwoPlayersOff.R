similarityToolTwoPlayersOff <- function(battedBallVals, playerNameOne, playerNameTwo){
  source("R/similarityToolOff.R")
  length = nrow(battedBallVals)
  result = similarityToolOff(battedBallVals, playerNameOne, length)
  return(result[result$Name == playerNameTwo,]$Scores)
}
