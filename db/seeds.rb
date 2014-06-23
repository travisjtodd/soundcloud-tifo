# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = [
  {name: 'Algeria', tag: 'ALG'},
  {name: 'Australia', tag: 'AUS'},
  {name: 'Argentina', tag: 'ARG'},
  {name: 'Belgium', tag: 'BEL'},
  {name: 'Bosnia and Herzegovina', tag: 'BOS'},
  {name: 'Brazil', tag: 'BRA'},
  {name: 'Cameroon', tag: 'CMR'},
  {name: 'Chile', tag: 'CHI'},
  {name: 'Colombia', tag: 'COL'},
  {name: 'Costa Rica', tag: 'CRC'},
  {name: 'Côte d\'Ivoire', tag: 'CIV'},
  {name: 'Croatia', tag: 'CRO'},
  {name: 'Ecuador', tag: 'ECU'},
  {name: 'England', tag: 'ENG'},
  {name: 'France', tag: 'FRA'},
  {name: 'Germany', tag: 'GER'},
  {name: 'Ghana', tag: 'GHA'},
  {name: 'Greece', tag: 'GRE'},
  {name: 'Honduras', tag: 'HON'},
  {name: 'Italy', tag: 'ITA'},
  {name: 'Iran', tag: 'IRN'},
  {name: 'Japan', tag: 'JPN'},
  {name: 'Korea Republic', tag: 'KOR'},
  {name: 'Mexico', tag: 'MEX'},
  {name: 'Netherlands', tag: 'NED'},
  {name: 'Nigeria', tag: 'NIG'},
  {name: 'Portugal', tag: 'POR'},
  {name: 'Russia', tag: 'RUS'},
  {name: 'Spain', tag: 'ESP'},
  {name: 'Switzerland', tag: 'SWI'},
  {name: 'Uruguay', tag: 'URU'},
  {name: 'USA', tag: 'USA'}
]
Team.create(teams)
