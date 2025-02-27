```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value #=> 20

#Unexpected behavior when using instance_variable_get
puts my_object.instance_variable_get(:@value) #=>20
my_object.instance_variable_set(:@value, 30) # Modify the instance variable directly
puts my_object.instance_variable_get(:@value) #=>30
puts my_object.value #=> 20 #Still 20! The getter does not reflect changes to the instance variable directly
```