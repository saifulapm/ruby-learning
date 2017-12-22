# BasicObject is the parent class of all classes in Ruby. It's an explicit blank class.

### Public Instance Methods

# !obj → true or false
obj = nil
!obj # => true

# obj != other → true or false
# obj == other → true or false
# equal?(other) → true or false
obj = "a"
other = obj.dup

obj == other      # => true
obj.equal? other  # => false
obj.equal? obj    # => true

#__id__ → integer click to toggle source
# object_id → integer
obj.__id__  # => 70097926582760
other.object_id  # => 70097926582680



#send(symbol [, args...]) → obj click to toggle source
# __send__(symbol [, args...]) → obj
# send(string [, args...]) → obj
# __send__(string [, args...]) → obj
#send( ) is an instance method of the Object class. The first argument to send( ) is the message that you're sending to the object - that is, the name of a method. You can use a string or a symbol, but symbols are preferred. Any remaining arguments are simply passed on to the method.
class Rubyist
  def welcome(*args)
    "Welcome " + args.join(' ')
  end
end
obj2 = Rubyist.new
puts obj2.send :welcome, 'to', 'Ruby' # => "Welcome to Ruby"


# instance_eval(string [, filename [, lineno]] ) → obj click to toggle source
# instance_eval {|obj| block } → obj
class KlassWithSecret
  def initialize
    @secret = 99
  end
  private
  def the_secret
    "Ssssh! The secret is #{@secret}."
  end
end
k = KlassWithSecret.new
k.instance_eval { @secret } # => 99
k.instance_eval { the_secret } # => "Ssssh! The secret is 99."
k.instance_eval { |ob| ob == self } # => true
# instance_eval can be used to change self. Here is refactored code using instance_eval
class Person
  code = proc { puts self }

  define_method :name do
    self.class.instance_eval &code
  end

end
class Developer < Person
end
Person.new.name #=> Person
Developer.new.name #=> Developer

Person.instance_eval do
  def human?
    true
  end
end
# MyClass.instance_eval will create class methods.
Person.human?  # => true


# instance_exec(arg...) {|var...| block } → obj
k.instance_exec(5) {|x| @secret+x }  # => 104
# instance_eval has one limitation. It does not accept arguments.This is where instance_exec comes to rescue. It allows us to change self and it can also accept arguments.
class Person
  code = proc { |greetings| puts greetings; puts self }

  define_method :name do
    self.class.instance_exec 'Good morning', &code
  end
end

class Developer < Person
end

Person.new.name #=> Good morning Person
Developer.new.name #=> Good morning Developer


### Private Instance Methods

# method_missing(symbol [, *args] ) → result
# By default, the interpreter raises an error when this method is called. However, it is possible to override the method to provide more dynamic behavior

# singleton_method_added(symbol)

# singleton_method_removed(symbol)

# singleton_method_undefined(symbol)



