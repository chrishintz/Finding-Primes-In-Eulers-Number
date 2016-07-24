# Find Primes in Euler's Number

## Requirements
- A single web page with two boxes to accept an integer number
- It will have an upload field to accept a text file (csv)
- It will have a button to submit the form
- the uploaded csv will be 2 columns, all of which are integers
  - Note: column 1 corresponds with the number of digits, column 2 corresponds with the Nth prime number
- When the button is clicked, it will find the Xth prime number that has Y digits in the expansion of Euler's number.
- If a file (csv) is uploaded, it will go through all the rows of numbers and do the same thing, displaying all the results.
- The most difficult (computationally) tuple you should expect is 2, 10
- Deliverable: a git repo that can be cloned w/ a Readme that tell the user how to start it up and run it on their local machine.

## Starting up
- Clone Repo
- Make sure you are inside the newly closed rails app directory
- Run ```bundle install``` in terminal
- Run ```rails server``` in terminal and open browser to http:localhost:3000
