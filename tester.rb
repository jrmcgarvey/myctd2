require_relative "myclass"

def yesorno(test)
    loop do
        puts "Are you ready for " + test + "? If so, enter y, if not enter n."
        s=gets.chomp.strip.downcase
        if s=="n"
            return false
        elsif s=="y"
            return true
        end
    end
end

# test 1
puts "For test 1, myclass.rb needs to declare a class called MyClass."
puts "It should have an initialize method that creates @my_hash, an empty hash."
puts "It should also have a render method that puts the hash to the screen."
yesorno("test 1")
tester=MyClass.new
tester.render

# test 2
puts "For test 2, MyClass needs an additional method, add(key,value).  This"
puts "will add a key and value to @my_hash."
yesorno("test 2")
puts "Enter a key"
k1=gets.chomp
puts "Enter a value"
v1=gets.chomp
tester.add(k1,v1)
puts "Enter another key"
k2=gets.chomp
puts "Enter another value"
v2=gets.chomp
tester.add(k2,v2)
tester.render

# test 3
puts "For test 3, myclass.rb needs an additional class, MyClassB.  It should be"
puts "a child class of MyClass.  ( class MyClassB < MyClass ).  But for the"
puts "new class, it should check that each value to be added to the hash is an"
puts "integer (use the is_a? method).  If it isn't, the add returns false.  If"
puts "the value is an integer, the new entry should be added to the hash and"
puts "the add method should return true."
yesorno("test 3")
tester=MyClassB.new
assert false,tester.add("x","y"),"It shouldn't have let me add that one."
assert true,tester.add("this",-50),"It should have let me add that one"
tester.render

#test 4
puts "For test 4, we want to add an attr_accessor for the my_hash variable to"
puts "MyClassB."
yesorno("test 4")
tester.my_hash={one: 1,two: 2,three: 3}
tester.render

#test 5
puts "For test 5, add a new method to MyClass, called my_array.  This method"
puts "should return an array of all the values from my_hash."
yesorno("test 5")
puts tester.my_array.to_s

#test 6
puts "For test 6, add a new method to MyClassB, called my_array_2.  This method"
puts "should return an array of all of the values from my_hash, but each should"
puts "be multiplied times 3."
puts "Hint 1: To avoid repeating yourself, you should call the my_array method"
puts "within my_array_2."
puts "Hint 2: To multiply, you can use the Array each method or the array map"
puts "method."
puts "Hint 3: If you don't remember these methods, you can google them. No"
puts "programmer remembers everything.  Go to"
puts "https://ruby-doc.org/core-2.2.0/Array.html"
yesorno(test 6)
tester.my_array.to_s
tester.my_array_2.to_s


