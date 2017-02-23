class MyClass
  def my_method
    @string = 'hello world'
  end
end

obj1 = MyClass.new
obj2 = MyClass.new

p obj1.class
p obj1.methods
p '--------------------------------------------------------------------------------'
p MyClass.methods
p MyClass.class
p MyClass.superclass
p Class.superclass
p Class.methods.grep(/new/)
p Object.class
p Module.superclass
p Class.class
p MyClass.ancestors
p Module.ancestors
