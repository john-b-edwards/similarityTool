similarityToolOff <- function(battedBallVals, playerName, numResults){ 
  numResults = numResults + 1 
  if(numResults > nrow(battedBallVals)) {numResults = nrow(battedBallVals) - 1} 
  names = battedBallVals[,"Name"]
  ndx = which(names == playerName) 
  if("FNN" %in% rownames(installed.packages()) == FALSE) {install.packages("FNN")} 
  library(FNN)
  convertedVals<- apply(battedBallVals[,c('LD%','GB%','FB%','Pull%','Cent%','Oppo%','Soft%','Med%','Hard%','HR/FB',"BB%","K%")],2, function(x){
    as.numeric(sub("%", "", x, fixed=TRUE))/100 })
  bbvNorm <- scale(convertedVals) 
  results = get.knnx(bbvNorm, as.data.frame(t(bbvNorm[ndx,])), k=numResults+1, algorithm="kd_tree") 
  resultingNames = names[results$nn.index[c(2:numResults+1)],] 
  endResult = data.frame ("Names" = resultingNames, "Scores" = results$nn.dist[c(2:numResults+1)], stringsAsFactors = FALSE)
  return(endResult) 
} 
