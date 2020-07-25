# Pry is another Ruby REPL (REPL stands for Read, Evaluate, Print, Loop)
# with some added functionality and is an alternative to IRB.

require 'pry'

def prying_into_the_method
	inside_the_method = "We're inside the method"
	puts inside_the_method
	puts "We're about to stop because of pry!"
	# 'binding.pry' is a built-in ruby class whose objects can encapsulate
	# the context of the current scope (variables, methods etc.),
	# and retain them for use outside of that context.

	# When written in a Ruby program, 'binding.pry' get interpreted at
	# runtime (as your program is executed).

	# When the interpreter hits that line of code, the program will freeze
	# and the terminal will turn into a REPL that exists in the middle
	# of the program.
	binding.pry
	
	# The binding placed on line 20 froze the program
	# and the variable below hasn't been interpreted yet,
	# so while in Pry it will return nil.
	this_variable_hasnt_been_interpreted_yet = "The program froze before it could read me!"
	puts this_variable_hasnt_been_interpreted_yet
end

prying_into_the_method
