#plotly code
polls2008 = statelevel[statelevel$Year == "2008" & statelevel$MidDaysUntil < 60, ]
polls2012 = statelevel[statelevel$Year == "2012"& statelevel$MidDaysUntil < 60, ]
polls2016 = statelevel[statelevel$Year == "2016"& statelevel$MidDaysUntil < 60, ]
avgVoteErrorbystate2008 = rep(NA, 50)
avgVoteErrorbystate2012 = rep(NA, 50)
avgVoteErrorbystate2016 = rep(NA, 50)
avgMarginErrorbystate2008 = rep(NA, 50)
avgMarginErrorbystate2012 = rep(NA, 50)
avgMarginErrorbystate2016 = rep(NA, 50)
statemargins2008 = rep(NA, 50)
statedemvote2008 = rep(NA, 50)
statemargins2012 = rep(NA, 50)
statedemvote2012 = rep(NA, 50)
statemargins2016 = rep(NA, 50)
statedemvote2016 = rep(NA, 50)
statenames = unique(statelevel$State)[1:50]
for(i in 1:50){
  pollstemp = polls2008[polls2008$State == statenames[i], ]
  avgVoteErrorbystate2008[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2008[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2008[i] = pollstemp$DemVote[1]
  statemargins2008[i] = pollstemp$ActualMargin[1]
  
}

for(i in 1:50){
  pollstemp = polls2012[polls2012$State == statenames[i], ]
  avgVoteErrorbystate2012[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2012[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2012[i] = pollstemp$DemVote[1]
  statemargins2012[i] = pollstemp$ActualMargin[1]
}

for(i in 1:50){
  pollstemp = polls2016[polls2016$State == statenames[i], ]
  avgVoteErrorbystate2016[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2016[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2016[i] = pollstemp$DemVote[1]
  statemargins2016[i] = pollstemp$ActualMargin[1]
}
allMarginbystate = colMeans(rbind(avgMarginErrorbystate2008, avgMarginErrorbystate2012, avgMarginErrorbystate2016), na.rm = T)
df = data.frame("State" = statenames, "MarginError" = allMarginbystate)
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = FALSE
)
library(plotly)
fig = plot_geo(df, locationmode = 'USA-states')
fig <- fig %>% add_trace(
  z = ~MarginError,  locations = ~State,
  color = ~MarginError, colors = 'Purples')
fig <- fig %>% layout(
  title = 'Average Margin Polling Error',
  geo = g
)
fig
polls2008 = statelevel[statelevel$Year == "2008" & statelevel$MidDaysUntil < 60, ]
polls2012 = statelevel[statelevel$Year == "2012"& statelevel$MidDaysUntil < 60, ]
polls2016 = statelevel[statelevel$Year == "2016"& statelevel$MidDaysUntil < 60, ]
avgVoteErrorbystate2008 = rep(NA, 50)
avgVoteErrorbystate2012 = rep(NA, 50)
avgVoteErrorbystate2016 = rep(NA, 50)
avgMarginErrorbystate2008 = rep(NA, 50)
avgMarginErrorbystate2012 = rep(NA, 50)
avgMarginErrorbystate2016 = rep(NA, 50)
statemargins2008 = rep(NA, 50)
statedemvote2008 = rep(NA, 50)
statemargins2012 = rep(NA, 50)
statedemvote2012 = rep(NA, 50)
statemargins2016 = rep(NA, 50)
statedemvote2016 = rep(NA, 50)
statenames = unique(statelevel$State)[1:50]
for(i in 1:50){
  pollstemp = polls2008[polls2008$State == statenames[i], ]
  avgVoteErrorbystate2008[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2008[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2008[i] = pollstemp$DemVote[1]
  statemargins2008[i] = pollstemp$ActualMargin[1]
  
}

for(i in 1:50){
  pollstemp = polls2012[polls2012$State == statenames[i], ]
  avgVoteErrorbystate2012[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2012[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2012[i] = pollstemp$DemVote[1]
  statemargins2012[i] = pollstemp$ActualMargin[1]
}

for(i in 1:50){
  pollstemp = polls2016[polls2016$State == statenames[i], ]
  avgVoteErrorbystate2016[i] = mean(pollstemp$VoteErrorAbs)
  avgMarginErrorbystate2016[i] = mean(pollstemp$MarginErrorAbs)
  statedemvote2016[i] = pollstemp$DemVote[1]
  statemargins2016[i] = pollstemp$ActualMargin[1]
}
allMarginbystate = colMeans(rbind(avgMarginErrorbystate2008, avgMarginErrorbystate2012, avgMarginErrorbystate2016), na.rm = T)
df2 = data.frame("State" = statenames, "MarginError" = avgMarginErrorbystate2016)
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = FALSE
)
library(plotly)
fig = plot_geo(df, locationmode = 'USA-states')
fig <- fig %>% add_trace(
  z = ~MarginError,  locations = ~State,
  color = ~MarginError, colors = 'Purples')
fig <- fig %>% layout(
  title = 'Average Margin Polling Error in 2016',
  geo = g
)
fig
    