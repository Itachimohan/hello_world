#!/bin/bash




echo "Welcome Mohanraj"  # This line prints a welcome message to the user.
sleep 2  # This line pauses the script for 2 seconds.

echo "How many characters do you need for your password?"  # Prompt the user to input the desired length of the password.
read l  # Read the user's input and store it in the variable 'l'.

for p in $(seq 1); do  # Start of the for loop
    openssl rand -base64 48 | cut -c1-$l&>password.txt 
    # This line generates a random string of 48 base64 characters and then cuts it to the length specified by the user.
done  # End of the for loop

# The loop ends here.

# There is no need to clear the error because there isn't an error in this script. However, if you meant to clear the screen, you can add the command 'clear' here.









