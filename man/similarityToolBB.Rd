\name{similarityToolBB}
\alias{similarityToolBB}
\title{
Batted Ball Similarity Tool
}
\description{
Finds the most similar players to a given player in a dataset based solely upon batted ball data.
}
\usage{
similarityToolBB(battedBallVals, playerName, numResults = 10)
}
\arguments{
  \item{battedBallVals}{
A dataframe of batted ball data from FanGraphs.
}
  \item{playerName}{
A string with the name of a player in the format "Firstname Lastname"
}
  \item{numResults}{
An integer. Defaults to 10.
}
}
\details{
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab. They must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, Name.
The player name must be exactly formatted as it appears in FanGraphs.
}
\value{
A dataframe with the players most similar to playerName and their similarity scores.
}
\author{
John Edwards
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
