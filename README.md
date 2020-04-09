# AccuracyandPredictivenessofStateLevelPresidentialPolls
This is a analysis on the accuracy and predictiveness of Presidential Polls in the 2008-2016 elections on the state level.  It includes a large dataset PollingDatasetStateLevelOnly4-6.csv. The polling data was collected by https://elections.huffingtonpost.com/pollster and was then augmented to include new variables. Pollster variables are denoted as (Pollster), and added variables are denoted as (Added)

This data set has the following variables 
  * X (Pollster). An ID Variable. Not available for 2008.
  * Dates (Pollster) Dates poll was conducted.  2008 only.
  * start_date (Pollster). the start date of the poll. Not available for 2008.
  * end_date (Pollster). the end date of the poll. Not available for 2008.
  * observation (Pollster). The sample size of the poll
  * sample_subpopulation (Pollster). whether the poll was Registered Voters, Likely Voters or Adults Not available for 2008.
  * Obama2008 (Pollster). The support in a poll for Obama in 2008.
  * Barr (Pollster). The support for Barr (Minor Candidate) in 2008.
  * Nader (Pollster). The support for Nader (Minor Candidate) in 2008.
  * Other (Pollster). The support in a poll for Other (on a scale of 0 to 100 with 100 being 100%). This is not present in all data values.
  * Undecided (Pollster). The percent of undecided in a poll (on a scale of 0 to 100 with 100 being 100%). This is not present in all data values.
  * Year (Pollster).  The year the poll was conducted 
  * State (Pollster).  The state in which the poll was conducted
  * EndDaysUntil. (Added) The days until the election at the end date of the poll. 
  * StartDaysuntil. (Added) The days until the election at the start date of the poll.  
  * MidDaysUntil.  (Added) The midpoint between EndDaysUntil and StartDaysUntil.  
  * Dem2P. (Added) The proportionally normalized support for the Democrat so that Dem2P+Rep2P=1
  * Rep2P. (Added) The proportionally normalized support for the Republican so that Dem2P+Rep2P = 1
  * DemVote. (Added) The proportionally normalized election result for Clinton so that DemVote+RepVote = 1
  * RepVote. (Added) The proportionally normalized election results for Trump so that DemVote + RepVote = 1
  * VoteErrorAbs. (Added) The absolute value of the difference between Dem2P and DemVote or the error of the poll.
  * McKinney. (Pollster) The support for McKinney (Minor Candidate) in 2008.
  * NV. (Pollster) The percent of people that said they were not voting (2008 only).
  * Refuse. (Pollster) The percent of people that refused the question (2008 only).
  * Not.Voting.  (Pollster) The percent of people that said they were not voting (2008 only).
  * Paul. The support for Paul (Minor Candidate) in 2008.
  * survey_house. (Pollster)  The survey house who conducted the poll
  * ActualMargin. (Added) The difference between the Democratic and Republican candidate on election day.
  * PollMargin. (Added) The difference between the Democratic and Republican candidate in a poll.
  * Romney. (Pollster) The support in a poll for Romney in 2012.
  * Obama2012. (Pollster) The support in a poll for Obama in 2008.
  * poll-slug. (Pollster) another ID variable. Not available for 2008.
  * question_text. (Pollster) the question used in the survey Not available for 2008.
  * margin_of_error. (Pollster) The provided margin of error of the poll
  * mode. (Pollster).  How the poll was conducted
  * partisanship. (Pollster). If the poll was conducted by a partisan group
  * partisian_affiliation. (Pollster)  The affiliation of the partisan group
  * Trump. (Pollster) The support in a poll for Trump (on a scale of 0 to 100 with 100 being 100%) Not available for 2008.
  * Clinton. (Pollster). The support in a poll for Clinton (on a scale of 0 to 100 with 100 being 100%) Not available for 2008.
  * Johnson. (Pollster) The support for Gary Johnson (Minor Candidate) in 2016 if provided.
  * McMullin. (Pollster)  The support for McMullin (Minor Candidate) in 2016 if provied. 
  * MidDaysFactor. (Added) The MidDaysUntil converted to a factor with the categories: Pre-Primary (more than 300 days before), Primary (between 150-300 days before), Summer (between 84 and 150 days before), and 1-12 weeks before.
  * competitive. (Added)  If a state is competitive (margin between -5, 5) or non-competitive.
  * MarginError. (Added) The error of the poll margin compared to election day. 
  * MarginErrorAbs. (Added) The absolute value error of the poll margin compared to election day.
  * VoteError. (Added) The difference between Dem2P and DemVote or the error of the poll.
