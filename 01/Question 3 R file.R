n <- 0
m <- 0

door <- 1:3 #the door vector

#to stay
for (i in 1:1000) {
  selected_door <- sample(door,1) # the door you picked
  car_door <- sample(door,1) # the door which the car is behind

  if(selected_door == car_door){
    n <- n+1  } # count how many times that you pick the car door
  
  rm(selected_door,car_door) 
}
print(n/1000) # the probability to win if you play 1000 times and your strategy is to stay

#to switch
for (j in 1:1000){
  selected_door <- sample(door,1) # the door which you pick at the beginning of the game
  car_door <- sample(door,1) # the door has the car behind
  repeat {
    opened_door <- sample(door,1) # the door that the host opens
    if(opened_door != selected_door && opened_door != car_door) break } 
  new_door <- door[door != selected_door & door != opened_door] # the door that you switch your choice
  
  if(new_door == car_door){
    m <- m+1  } # count how many times that you pick the car door
  
  rm(selected_door,car_door,opened_door,new_door)
}
print (m/1000) # the probability to win if you play 1000 times and your strategy is to switch (i.e. always switch)