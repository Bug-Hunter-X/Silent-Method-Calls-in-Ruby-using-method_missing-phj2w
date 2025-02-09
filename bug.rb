```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end
  def respond_to_missing?(method_name, include_private = false)
    true
  end
end

object = MyClass.new(10)
object.some_method(1,2,3) #This will not raise NoMethodError
```