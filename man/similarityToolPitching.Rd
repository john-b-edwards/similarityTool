\name{similarityToolPitching}
\alias{similarityToolPitching}
\title{
Pitching Similarity Tool
}
\description{
Finds the most similar players to a given player in a dataset based upon pitching peripheral data
}
\usage{
similarityToolPitching(battedBallVals, playerName, numResults = 10, year=2017)
}
\arguments{
  \item{battedBallVals}{
A dataframe of offensive peripheral data from FanGraphs.
}
  \item{playerName}{
A string with the name of a player in the format "Firstname Lastname"
}
  \item{numResults}{
An integer. Defaults to 10.
}
  \item{year}{
An integer. Defaults to 2017.
}
}
\details{
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab in conjunction with BB/9 and K/9. To generate an appropriate dataset, use the "Custom Report" feature from FanGraphs. Each dataset must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, K/9, BB/9, Name, season.
The player name must be exactly formatted as it appears in FanGraphs.
}
\value{
A dataframe with the players most similar to playerName and their similarity scores.
}
\author{
John Edwards
}
\email{
edwards1860@gmail.com
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
