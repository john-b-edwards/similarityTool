\name{similarityToolMostSimOff}
\alias{similarityToolMostSimOff}
\title{
Most Similar Players per Offensive Peripherals
}
\description{
Finds the players who are most similar to any other player in a given dataset of offensive peripheral data from FanGraphs
}
\usage{
similarityToolMostSimOff(battedBallVals, numResults = 10)
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
BattedBallVals are designed to be from FanGraphs, using the Batted Ball tab in conjunction with K\% and BB\% (use the custom report feature to obtain this data). They must contain all of the following attributes (other values can be included, but will not be used):
GB\%, LD\%, FB\%, HR/FB, Pull\%, Cent\%, Oppo\%, Soft\%, Med\%, Hard\%, BB\%, K\%, Name.
}
\value{
A dataframe of the players with the lowest net similarity score.
}
\author{
John Edwards
}
\note{
Similarity scores will differ depending upon the sample size presented due to the normalization applied in the creation of the scores.
}
\keyword{ misc }
