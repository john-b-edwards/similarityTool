#' Batted Ball Similarity Tool (Two Players)
#'
#' Finds the similarity score of two players based solely upon batted bal data.
#' @param battedBallVals A dataframe of Fangraphs batted ball data. Must be provided by user.
#' @param playerNameOne A string of a player's name EXACTLY how it is recorded by Fangraphs
#' @param playerNameTwo A string of a player's name EXACTLY how it is recorded by Fangraphs
#' @return dataframe of the most similar players to the specified player and their similarity scores. Scores are relative to the sample, and will not be the same regardless of sample.
#' @keywords similarityTool
#' @export
#' @examples
#' similarityToolTwoPlayersBB()
similarityToolTwoPlayersBB <- function(battedBallVals, playerNameOne, playerNameTwo){
  source("R/similarityToolBB.R")
  length = nrow(battedBallVals)
  result = similarityToolOff(battedBallVals, playerNameOne, length)
  return(result[result$Name == playerNameTwo,]$Scores)
}