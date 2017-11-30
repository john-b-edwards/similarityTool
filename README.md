# similarityTool
R package of similarity tool methods for use in comparing players batted ball and offensive peripheral profiles

**What is this?**
This package is designed to generate comparisons for a given player based on their batted ball or offensive profile using FanGraphs data.

**How does it work?**
Primer on how it works is coming soon to the FG community, hopefully soon.

**What does BB or Off mean?**
BB refers to batted ball profile. For functions with the "BB" tag, the similarity scores are based solely upon batted ball data from FanGraphs, specifically the following metrics: LD%, FB%, GB%, HR/FB, Pull%, Cent%, Oppo%, Soft%, Med%, Hard%.

Off refers to offensive peripherals - this includes all of the metrics in BB but with BB% and K% included as well.

**What does tool do?**
*similarityToolBB.R | similarityToolOff.R*
This is the most fundamental function. Given batted ball or offensive peripheral data from FanGraphs and the name of a player within the dataset, this function will output the most similar players and their similarity scores.
*similarityToolBBx.R | similarityToolOffx.R*
This function works similarly to the above function, but takes a singular data frame of batted ball profile as the input instead of a name - i.e., PlayerVals = data.frame("LD%" = .xxx, "GB%" = .xxx, "FB%" = .xxx, "Pull%" = .xxx, "Cent%" = .xxx, "Oppo%" = .xxx, "Soft%" = .xxx, "Med%" = .xxx, "Hard%" = .xxx, "HR/FB" = .xxx, check.names=FALSE) (include BB% and K% for the offensive metric).
*similarityToolMostSimBB.R | similarityToolMostSimOff.R*
This function relies upon similarityToolBB/Off.R to find players with the lowest overall similarity scores, i.e. what players are most similar to other players within a dataset.
*similarityToolMostUniqueBB.R | similarityToolMostUniqueOff.R*
Acts in reverse of the MostSimBB/Off and finds the players with the highest overall similarity scores, i.e. what players are most unique.
*similarityToolTwoPlayersBB.R | similarityToolTwoPlayersOff.R*
Finds the similarity score between two players. NOTE THAT THIS SONG REQUIRES A FULL DATASET - because of the normalization techniques used in similarityToolBB/Off, an accurate similarity score will not be generated if the dataset consists only of the two players.
