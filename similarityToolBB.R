#' Batted Ball Similarity Tool
#'
#' Finds the most similar players to a given player in a dataset based solely upon batted ball data.
#' @param battedBallVals A dataframe of Fangraphs batted ball data. Must be provided by user.
#' @param playerName A string which is the name of the player EXACTLY as used by Fangraphs.
#' @param numResults Determines how many players who are alike to the specified player are returned. Defaults to 10.
#' @return dataframe of the most similar players to the specified player and their similarity scores. Scores are relative to the sample, and will not be the same regardless of sample.
#' @keywords similarityTool
#' @export
#' @examples
#' similarityToolBB()



similarityToolBB <- function(battedBallVals, playerName, numResults = 10){ 
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1} 
  names = battedBallVals[,"Name"] 
  ndx = which(names == playerName) 
  if("FNN" %in% rownames(installed.packages()) == FALSE) {install.packages("FNN")} 
  library(FNN) 
  convertedVals<- apply(battedBallVals[,c('LD%','GB%','FB%','Pull%','Cent%','Oppo%','Soft%','Med%','Hard%','HR/FB')],2, function(x){
    as.numeric(sub("%", "", x, fixed=TRUE))/100 }) 
  bbvNorm <- scale(convertedVals) 
  results = get.knnx(bbvNorm, as.data.frame(t(bbvNorm[ndx,])), k=numResults+1, algorithm="kd_tree") 
  resultingNames = names[results$nn.index[c(2:numResults)],] 
  endResult = data.frame ("Names" = resultingNames, "Scores" = results$nn.dist[c(2:numResults)], stringsAsFactors = FALSE)
  return(endResult) 
} 
