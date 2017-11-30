#' Offensive Similarity Tool (Player Unspecified)
#'
#' Finds the most similar players to a given player not in a dataset based upon offensive peripherals.
#' @param battedBallVals A dataframe of Fangraphs offensive peripheral data. Must be provided by user.
#' @param playerVals A dataframe of a specified player's batted ball data. I.e. PlayerVals = data.frame("LD%" = .xxx, "GB%" = .xxx, "FB%" = .xxx, "Pull%" = .xxx, "Cent%" = .xxx, "Oppo%" = .xxx, "Soft%" = .xxx, "Med%" = .xxx, "Hard%" = .xxx, "HR/FB" = .xxx, check.names=FALSE)
#' @param numResults Determines how many players who are alike to the specified player are returned. Defaults to 10.
#' @return dataframe of the most similar players to the specified player and their similarity scores. Scores are relative to the sample, and will not be the same regardless of sample.
#' @keywords similarityTool
#' @export
#' @examples
#' similarityToolOffx()

similarityToolOffx <- function(battedBallVals, playerVals, numResults){ 
  numResults = numResults + 1 
  names = battedBallVals[,"Name"] 
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1} 
  if("FNN" %in% rownames(installed.packages()) == FALSE) {install.packages("FNN")} 
  library(FNN) 
  convertedVals<- apply(battedBallVals[,c('LD%','GB%','FB%','Pull%','Cent%','Oppo%','Soft%','Med%','Hard%', 'HR/FB', 'K%', 'BB%')],2, function(x){
    as.numeric(sub("%", "", x, fixed=TRUE))/100 }) 
  convertedVals = data.frame(rbind(as.matrix(convertedVals), as.matrix(playerVals))) 
  bbvNorm <- scale(convertedVals)
  results = get.knnx(bbvNorm, as.data.frame(t(bbvNorm[nrow(bbvNorm),])), k=numResults+1, algorithm="kd_tree") 
  resultingNames = names[results$nn.index[c(2:numResults+1)],] 
  endResult = data.frame ("Names" = resultingNames, "Scores" = results$nn.dist[c(2:numResults+1)], stringsAsFactors = FALSE)
  return(endResult) 
} 
