#!/usr/bin/ruby -w 

class ClassDemo
	@@count = 0
	def initialize
	end
	
	def initialize(x,y)
		@x = x
		@y = y

		@@count += 1
	end

	def printX
		@x
	end
	
	def printY
		@y
	end

	def setX=(value)
		@x = value
	end
	def setY=(value)
                @y = value
        end

	def self.printCount()
		puts "Number of instances of ClassDemo is : #@@count"
	end
	
end
	obj1 = ClassDemo.new(10, 20)
	obj2 = ClassDemo.new(30, 40)
	
	#obj2.setX = 30
	#obj2.setY = 40
	
	x1=obj1.printX()
	y1=obj1.printY()

	x2=obj2.printX()
        y2=obj2.printY()
	
	puts "obj1 => x:#{x1}, y:#{y1}"
	puts "obj2 => x:#{x2}, y:#{y2}"
	
	ClassDemo.printCount()

