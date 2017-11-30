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
  result = result[order(-result$Scores),]
  return(result[1:numResults,])
}

#' Most Unique Players Tool (Batted Ball)
#'
#' Finds the players who have the most unique batted ball data in a given batted ball dataset.
#' @param battedBallVals A dataframe of Fangraphs batted ball data. Must be provided by user.
#' @param numResults Determines how many players who are alike to the specified player are returned. Defaults to 10.
#' @return dataframe of the most similar players to the specified player and their similarity scores. Scores are relative to the sample, and will not be the same regardless of sample.
#' @keywords similarityTool
#' @export
#' @examples
#' similarityToolMostUniqueBB()

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
  result = result[order(-result$Scores),]
  return(result[1:numResults,])
}

