```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Check if the method exists before handling it dynamically
    if !respond_to?(method_name)
       raise NoMethodError, "Undefined method '#{method_name}' called"
    else
      puts "Method '#{method_name}' called with args: #{args.inspect}"
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    true
  end
end

object = MyClass.new(10)
#object.some_method(1,2,3) #This will raise NoMethodError
```