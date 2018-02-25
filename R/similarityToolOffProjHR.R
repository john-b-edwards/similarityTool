similarityToolOffProjHR <- function(battedBallVals, playerVals, numResults=10, year=2017){
  require(FNN)
  numResults = numResults + 1
  names = battedBallVals[,"Name"] 
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1}
  convertedVals<- battedBallVals[,c('LD%','GB%','FB%','Pull%','Cent%','Oppo%','Soft%','Med%','Hard%', 'HR/FB','K%','BB%')]
  convertedVals = data.frame(rbind(as.matrix(convertedVals), as.matrix(playerVals))) 
  bbvNorm <- scale(convertedVals) 
  results = get.knnx(bbvNorm, as.data.frame(t(bbvNorm[nrow(bbvNorm),])), k=numResults+1, algorithm="kd_tree") 
  resultingNames = names[results$nn.index[c(2:numResults+1)],] 
  endResult = data.frame ("Names" = resultingNames, "Scores" = results$nn.dist[c(2:numResults+1)], stringsAsFactors = FALSE)
  return(endResult) 
}
