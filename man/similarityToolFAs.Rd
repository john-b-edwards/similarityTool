\name{similarityToolFAs}
\alias{similarityToolFAs}
\title{
FA Similarity Tool (Projection)
}
Determines how similar free agents are to each other.
}
\usage{
similarityToolFAs(battedBallVals, playerName, numResults = 10)
}
\arguments{
  \item{battedBallVals}{
A dataframe of contract values.
}
  \item{playerVals}{
A dataframe containing a player's contract data.
}
  \item{numResults}{
An integer. Defaults to 10.
}
}
\details{
For personal use. Determines similarity of free agents.
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
