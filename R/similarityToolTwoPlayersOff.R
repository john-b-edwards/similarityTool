similarityToolTwoPlayersOff <- function(battedBallVals, playerNameOne, playerNameTwo, yearOne, yearTwo){
  source("similarityToolOff.R")
  length = nrow(battedBallVals)
  result = similarityToolOff(battedBallVals, playerNameOne, length, yearOne)
  playerNameTwo = paste(playerNameTwo, toString(yearTwo), sep='')
  return(result[result$Name == playerNameTwo,]$Scores)
}
