String username = Ask.forString("What is your Name?");

println("Welcome, " + username + "!");
println("You wake up in a strange room filled with computers.");
println("The door is locked.");
println("You need to find a way out.");
println("");

int progress = 1;

println("Progress: " + progress + "/4");
println("There are two computers turned on.");
println("1. SECURITY");
println("2. NETWORK");

int computer = Ask.forInt("Which computer do you use?");


// DECISION 1
if (computer == 1) {
  progress = 2;
  
  println("You sit down at the SECURITY computer.");
  println("The computer shows two options.");
  println("1. Try to unlock the door.");
  println("2. Look at the security cameras.");
  
  int securityChoice = Ask.forInt("What do you do?");
  
  
  // DECISION 2A
  if (securityChoice == 1) {
    println("You try to unlock the door.");
    
    int result = int(random(1, 3));
    
    if (result == 1) {
      println("The door unlocks!");
      progress = 3;
    }
    else {
      println("The door stays locked.");
      println("You will have to find another way.");
      progress = 3;
    }
  }
  
  // DECISION 2B
  else if (securityChoice == 2) {
    println("You check the security cameras.");
    println("You notice another room with a computer.");
    println("You now know where you need to go.");
    progress = 3;
  }
}


// NETWORK PATH
else if (computer == 2) {
  progress = 2;
  
  println("You sit down at the NETWORK computer.");
  println("The screen shows information about the building.");
  println("You see two possible routes.");
  println("1. Follow the emergency route.");
  println("2. Follow the main route.");
  
  int networkChoice = Ask.forInt("Which route do you choose?");
  
  
  // DECISION 2C
  if (networkChoice == 1) {
    println("You follow the emergency route.");
    println("You find a possible way out.");
    progress = 3;
  }
  
  // DECISION 2D
  else if (networkChoice == 2) {
    println("You follow the main route.");
    println("You find another computer room.");
    progress = 3;
  }
}


// NEXT PART OF THE STORY
println("");
println("Progress: " + progress + "/4");
println("You reach another computer.");
println("An AI guide appears on the screen.");
println("The AI says it knows how to help you escape.");
println("1. Trust the AI guide.");
println("2. Follow your own plan.");

int aiChoice = Ask.forInt("What do you choose?");


// DECISION 3
if (aiChoice == 1) {
  println("You decide to trust the AI guide.");
  println("The AI gives you a route to the exit.");
  
  int aiResult = int(random(1, 3));
  
  if (aiResult == 1) {
    println("The AI gives you the correct route.");
    println("You reach the exit!");
    progress = 4;
  }
  else {
    println("The AI gives you the wrong route.");
    println("You end up back where you started.");
    progress = 4;
  }
}

else if (aiChoice == 2) {
  println("You decide to follow your own plan.");
  println("You remember the information you found earlier.");
  println("You continue toward the exit.");
  progress = 4;
}


// DECISION 4
println("");
println("You reach the final hallway.");
println("There are two ways to continue.");
println("1. Take the risky shortcut.");
println("2. Stay with the safer route.");

int finalChoice = Ask.forInt("Which way do you go?");

if (finalChoice == 1) {
  println("You take the risky shortcut.");
  println("You manage to reach the exit!");
  println("You escaped!");
}

else if (finalChoice == 2) {
  println("You stay with the safer route.");
  println("It takes longer, but you reach the exit.");
  println("You escaped!");
}


println("");
println("Final Progress: " + progress + "/4");
println("The adventure is over.");
