# Q0: Why is this error being thrown?
Because there is no Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
All the pokemon have no trainer, and they are coming from _________.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It gives us a button called "Throw a Pokeball!" which takes in the id of the pokemon
as a parameter to call the capture method defined in the Pokemon controller.

# Question 3: What would you name your own Pokemon?
Charizaptor.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path, and that path needed the id of the trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It renders a flash[:error] message when it is called, providing an error to the screen.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
