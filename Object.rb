# Parent Class: BasicObject. Included Modules: Kernel.
# Object is the default root of all Ruby objects. Object inherits from BasicObject which allows creating alternate object hierarchies. Methods on Object are available to all classes unless explicitly overridden.

### Public Instance Methods

# obj !~ other → true or false
#Returns true if two objects do not match (using the =~ method), otherwise false. Regular Expression Matching
obj = 'Me'
obj !~ /Me/ # => false

# obj <=> other → 0 or nil
# Returns 0 if obj and other are the same object or obj == other, otherwise nil.
# Your implementation of <=> should return one of the following values: -1, 0, 1 or nil. -1 means self is smaller than other. 0 means self is equal to other. 1 means self is bigger than other. Nil means the two values could not be compared.
other = obj.dup
obj <=> other  # => 0
obj <=> 'saiful' # => -1
11 <=> 10 # => 1


# obj === other → true or false // case equality operator.. Case Equality 
obj === other  # => true
(1..5) === 3 # => true
(1..5) === 6 # => false
Integer === 42 # => true
Integer === 'fourtytwo' # => false
/ell/ === 'Hello' # => true
/ell/ === 'Foobar' # => false
/test/ === "this is a test" # => true
# === is used in case statements as such:
case 'test'
when /blah/
  "Blach"
when /test/
  "Test"
else
  "Fail"
end # => "Test"

# Is the same as
vari = 'test'
if /blah/ === vari
  "Blash"
elsif /test/ === vari
  "Test"
else
  "Fail"
end # => "Test"


# obj =~ other → nil //Pattern Match
'Saiful'.=~ /Saiful/ # => 0
'Me' =~ /ABC/ # => nil

# class → class
# This method must always be called with an explicit receiver, as class is also a reserved word in Ruby.
1.class  # => Integer
self.class  # => Object
'Saiful'.class  # => String
/Me/.class  # => Regexp

# clone(freeze: true) → an_object



# define_singleton_method(symbol, method) → symbol 
# define_singleton_method(symbol) { block } → symbol

# display(port=$>) → nil

# dup → an_object

# enum_for(method = :each, *args) → enum 
# enum_for(method = :each, *args){|*args| block} → enum

# obj == other → true or false
# equal?(other) → true or false
# eql?(other) → true or false

# extend(module, ...) → obj

# freeze → obj

# frozen? → true or false

# hash → integer

# inspect → string

# instance_of?(class) → true or false

# instance_variable_defined?(symbol) → true or false
# instance_variable_defined?(string) → true or false

# instance_variable_get(symbol) → obj
# instance_variable_get(string) → obj

# instance_variable_set(symbol, obj) → obj
# instance_variable_set(string, obj) → obj

# instance_variables → array

# is_a?(class) → true or false

# itself → an_object

# kind_of?(class) → true or false

# method(sym) → method

# methods(regular=true) → array

# nil? → true or false

# private_methods(all=true) → array

# protected_methods(all=true) → array

# public_method(sym) → method

# public_methods(all=true) → array

# public_send(symbol [, args...]) → obj
# public_send(string [, args...]) → obj

# remove_instance_variable(symbol) → obj

# respond_to?(symbol, include_all=false) → true or false click to toggle source
# respond_to?(string, include_all=false) → true or false

# respond_to_missing?(symbol, include_all) → true or false
# respond_to_missing?(string, include_all) → true or false

# singleton_class → class

# singleton_method(sym) → method

# singleton_methods(all=true) → array

# taint → obj

# tainted? → true or false

# tap{|x|...} → obj

# to_enum(method = :each, *args) → enum
# to_enum(method = :each, *args) {|*args| block} → enum

# to_s → string

# trust → obj

# untaint → obj

# untrust → obj

# untrusted? → true or false
# --------------------------------------
