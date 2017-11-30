\name{similarityToolTwoPlayersBB}
\alias{similarityToolTwoPlayersBB}
\title{
Similarity Score Generator (Batted Balls)
}
\description{
Finds the similarity score for two given players based on Batted Ball data
}
\usage{
similarityToolTwoPlayersBB(battedBallVals, playerNameOne, playerNameTwo)
}
\arguments{
  \item{battedBallVals}{
A dataframe of batted ball data from FanGraphs.
}
  \item{playerNameOne}{
A string with the name of a player in the format "Firstname Lastname"
}
  \item{playerNameTwo}{
A string with the name of a player in the format "Firstname Lastname"
}
}
\details{
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab in conjunction with BB\% and K\% (use FanGraph's custom reports tool to generate this report). They must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, K\%, BB\%, Name.
}
\value{
A dataframe with the similarity score of the two players.
}
\author{
John Edwards
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
