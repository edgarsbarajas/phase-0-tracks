highway = {
  muscle_cars: {
    ford_mustang: ["Edgar", "Alexis"],
    chevy_corvette: ["Bobby", "Yvonne", "Joe"],
    shelby_gt500: ["Quincy", "Connor", "Fred", "Dereck"]
  },

  imports: {
    honda_civic: ["Juan", "Val"],
    toyota_celica: ["Martin"]
  },

  foreign: {
    bmw: ["Zac", "Frem"],
    ferarri: ["Baller", "Richard"],
    lamborghini: ["Eddie", "Steve"]
  }
}

#Alexis
p highway[:muscle_cars][:ford_mustang][1]

#Martin
p highway[:imports][:toyota_celica][0]

#Richard
p highway[:foreign][:ferarri][1]

#highway keys
p highway.keys

# muscle_car values
p highway[:muscle_cars].values

#print each passenger's name in shelby_gt500 on seperate lines
highway[:muscle_cars][:shelby_gt500].each do |passenger|
  puts passenger
end

#Change all passengers' names in chevy_corvette to Billy
highway[:muscle_cars][:chevy_corvette].map! do |passenger|
  passenger = "Billy"
end

#Print names in chevy corvette to see changes
p highway[:muscle_cars][:chevy_corvette]
