\name{similarityToolMostUniqueOff}
\alias{similarityToolMostUniqueOff}
\title{
Most Unique Players per Offensive Peripheral Data
}
\description{
Finds the players who are most unique to all other players in a given dataset of offensive peripheral data from FanGraphs
}
\usage{
similarityToolMostUniqueOff(battedBallVals, numResults = 10)
}
\arguments{
  \item{battedBallVals}{
A dataframe of offensive peripheral data from FanGraphs.
}
  \item{numResults}{
An integer. Defaults to 10.
}
}
\details{
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab in conjunction with BB\% and K\% (use FanGraph's custom reports tool to generate this report). They must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, K\%, BB\%, Name.
}
\value{
A dataframe of the players with the highest net similarity score.
}
\author{
John Edwards
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
