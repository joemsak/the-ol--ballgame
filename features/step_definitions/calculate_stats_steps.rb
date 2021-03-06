def set_raw_data(str)
  BaseballStats::DataSource.raw_data = str
end

def append_raw_data(str)
  BaseballStats::DataSource.raw_data << str
end

Given(/^that no stats exist$/) do
  set_raw_data('')
end

Given(/^(?:that )?some stats exist$/) do
  stats = "playerID,yearID,league,teamID,G,AB,R,H,2B,3B,HR,RBI,SB,CS\n"
  stats << "aardsda01,2009,AL,SEA,73,200,0,180,0,0,0,0,0,0"
  set_raw_data(stats)
end

Given(/^that enough at\-bats exist for the batting average$/) do
  step "some stats exist"
  append_raw_data("\naardsda02,2009,AL,SEA,73,200,0,180,0,0,0,0,0,0")
  append_raw_data("\naardsda02,2010,AL,SEA,73,200,0,190,0,0,0,0,0,0")
end

Given(/^that not enough stats exist for batting average$/) do
  step "some stats exist"
end

Given(/^that no eligible stats exist for slg$/) do
  step "some stats exist"
end

Given(/^that eligible stats exist for slg$/) do
  step "some stats exist"
  append_raw_data("\nallenbr01,2007,AL,OAK,41,146,18,30,9,2,3,11,2,0")
  append_raw_data("\nallenbr02,2007,AL,OAK,41,146,18,43,7,1,5,11,2,0")
end

Given(/^that no triple crown winner is in the stats for the year$/) do
  step "some stats exist"
end

Given(/^that no triple crown winner is in the stats for the league$/) do
  step "some stats exist"
end

Given(/^that there is eligible data for the triple crown winners$/) do
  step "some stats exist"
  append_raw_data("\nnlplaye01,2011,NL,OAK,41,400,18,185,9,2,8,15,2,0")
  append_raw_data("\nnlplaye02,2011,NL,OAK,41,400,18,195,9,2,8,15,2,0")
  append_raw_data("\nnlplaye03,2011,NL,OAK,41,400,18,195,9,2,8,14,2,0")
  append_raw_data("\nalplaye01,2011,AL,OAK,41,400,18,185,9,2,8,12,2,0")
  append_raw_data("\nalplaye02,2011,AL,OAK,41,400,18,190,9,2,8,12,2,0")
  append_raw_data("\nalplaye03,2011,NL,OAK,41,400,18,190,9,2,8,11,2,0")
  append_raw_data("\nnlplaye01,2012,NL,OAK,41,400,18,185,9,2,8,15,2,0")
  append_raw_data("\nnlplaye02,2012,NL,OAK,41,400,18,195,9,2,8,15,2,0")
  append_raw_data("\nnlplaye03,2012,NL,OAK,41,400,18,195,9,2,8,14,2,0")
  append_raw_data("\nalplaye01,2012,AL,OAK,41,400,18,185,9,2,8,12,2,0")
  append_raw_data("\nalplaye02,2012,AL,OAK,41,400,18,190,9,2,8,12,2,0")
  append_raw_data("\nalplaye03,2012,NL,OAK,41,400,18,190,9,2,8,11,2,0")
end
