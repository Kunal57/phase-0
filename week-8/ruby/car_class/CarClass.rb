# CarClass (Composition)

=begin

PSEUDOCODE
Input: Many inputs based on methods.
Output: Many outputs based on methods.
Steps:
1. Define a Car Class that takes a model and color are inputs.
2. Initialize the model and color of the car.
3. Define a distance method that takes the distance as a parameter.
4. Define a speed method that calculates the speed based on the MPH
5. Define a turn method that allows us to turn left or right
6. Define a total_distance method that keeps track of the total distance travelled.
7. Define a stop method.
8. Make sure to have output for each action.

=end

# Initial Solution

class Car
	attr_reader
	attr_accessor :model, :color

	def initialize (model, color)
		@model = model
		@color = color
		@distance = 0
		@speed = 0
		@pizzas = []
	end

	def direction(distance, speed=@speed)
		@distance += distance
		@speed = speed
		"You have travelled for #{distance} at #{speed} mhp!"
	end

	def speed(speed=@speed)
		@speed = speed
		"Your current speed is #{@speed} mph!"
	end

	def turn(turn)
		"You turn #{turn}"
	end

	def total_distance
		@distance
		"Your total distance travelled is #{@distance}"
	end

	def stop
		@speed = 0
		"You have come to a stop!"
	end

	def load_pizza(pizza)
		@pizzas << pizza
		"You have loaded the #{pizza} pizza into your car!"
	end

	def check_pizza
		@pizzas
	end

	def deliver_pizza
		pizza_delivery = @pizzas.delete_at(0)
		"You have deliveried the #{pizza_delivery} pizza!"
	end
end


# DRIVER CODE

tesla = Car.new("Tesla Model S","grey")
p tesla.direction(0.25,25)
p tesla.stop
p tesla.turn("right")
p tesla.direction(1.5,35)
p tesla.speed
p tesla.speed(15)
p tesla.direction(0.25)
p tesla.stop
p tesla.turn("left")
p tesla.direction(1.4,35)
p tesla.stop
p tesla.total_distance
p tesla.load_pizza("Veggie")
p tesla.load_pizza("Cheese")
p tesla.load_pizza("Mushroom")
p tesla.check_pizza
p tesla.deliver_pizza
p tesla.check_pizza