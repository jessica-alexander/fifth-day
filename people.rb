class Person

attr_writer = :first_name

def initialize (first_name, last_name)
	@first_name = first_name
	@last_name = last_name
end

def greetings
	puts "Hi my name is #{@first_name} #{@last_name}"
end

end

class Student < Person

	def initialize (first_name, last_name)
	@first_name = first_name
	@last_name = last_name
		
	end

	def learn
		puts "I get it!"
	end

end 

class Instructor < Person

	def initialize (first_name, last_name)
	@first_name = first_name
	@last_name = last_name
		
	end

	def teach
		puts "Everything in Ruby is an object!"
	end

end

#jessica = Student.new("Jessica", "A")

#jessica.greetings

#jessica.learn


#Step 6,7 & 8
chris = Instructor.new("Chris", "D")
cristina = Student.new("Cristina", "A")

chris.greetings
cristina.greetings

chris.teach
cristina.learn
cristina.teach #this method call did not work, because there is no teach method in the student class.

