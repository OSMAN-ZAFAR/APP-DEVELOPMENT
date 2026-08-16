enum TrafficLight {
  red,
  yellow,
  green
}

void main() {
  TrafficLight signal = TrafficLight.red;

  if (signal == TrafficLight.red)
  {
    print("Stop");
  } 
  else if (signal == TrafficLight.yellow)
  {
    print("Get Ready");
  } 
  else
   {
    print("Go");
  }
}


// An enum is used when we have a fixed number of choices for a variable. For example, a traffic light can only be red, yellow, or green.

// We could use a String, but then it could also hold values like "blue" or "abc". An enum prevents this by allowing only the values we define. This makes the code safer and easier to manage, especially in larger programs.