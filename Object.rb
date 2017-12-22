# Parent Class: BasicObject. Included Modules: Kernel.
# Object is the default root of all Ruby objects. Object inherits from BasicObject which allows creating alternate object hierarchies. Methods on Object are available to all classes unless explicitly overridden.

### Public Instance Methods

# obj !~ other → true or false

# obj <=> other → 0 or nil

# obj === other → true or false

# obj =~ other → nil

# class → class

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
