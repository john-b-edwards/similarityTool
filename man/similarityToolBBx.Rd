\name{similarityToolBBx}
\alias{similarityToolBBx}
\title{
Batted Ball Similarity Tool (Unspecified Player)
}
\description{
Finds the most similar players to a given player NOT in a dataset based solely upon batted ball data.
}
\usage{
similarityToolBBx(battedBallVals, playerVals, numResults = 10)
}
\arguments{
  \item{battedBallVals}{
A dataframe of batted ball data from FanGraphs.
}
  \item{playerVals}{
A dataframe containing a player's batted ball data. i.e. PlayerVals = data.frame("LD\%" = .xxx, "GB\%" = .xxx, "FB\%" = .xxx, "Pull\%" = .xxx, "Cent\%" = .xxx, "Oppo\%" = .xxx, "Soft\%" = .xxx, "Med\%" = .xxx, "Hard\%" = .xxx, "HR/FB" = .xxx, check.names=FALSE)
}
  \item{numResults}{
An integer. Defaults to 10.
}
}
\details{
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab. They must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, Name.
Player Vals must be formatted as decimals.
}
\value{
A dataframe with the players most similar to the given playerVals and their similarity scores.
}
\author{
John Edwards
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
