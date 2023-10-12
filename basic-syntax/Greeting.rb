# -*- coding: UTF-8 -*-

# 定义了一个 Greeter 类.
# 它有一个成员变量 @name, 有两个方法 say_hi 和 say_bye. 
# initialize 方法是构造函数. 它有一个默认参数 name = "World".
class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

# 创建一个对象
pat = Greeter.new("Pat")

# 调用对象的方法
pat.say_hi
pat.say_bye


# 看一下 Greeter 类中实际有哪些方法 （可以看到，除了我们自己显式定义的方法，还有很多其他的方法，实际都是从基类继承而来的）
print Greeter.instance_methods              
# 上面一行代码会打印出： [:say_hi, :say_bye, :hash, :singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :clone, :<=>, :===, :!~, :method, :public_method, :nil?, :singleton_method, :eql?, :respond_to?, :define_singleton_method, :freeze, :inspect, :object_id, :send, :to_s, :to_enum, :enum_for, :!, :equal?, :__send__, :==, :!=, :__id__, :instance_eval, :instance_exec]

puts "\n\n"

# 仅列出我们自己定义的方法  （还是调用 instance_methods。这里的参数 false 表示不列出继承而来的方法）
print Greeter.instance_methods(false)  # 仅输出 [:say_hi, :say_bye]

puts "\n\n"



# 改变 Greeter 类，对外暴露出 name 属性   （可见，定义好了一个类之后，在其他地方仍然可以改变这个类的定义）
class Greeter
  attr_accessor :name
end


print Greeter.instance_methods(false) # 输出 [:name=, :name, :say_hi, :say_bye] ，可以看到，多了两个方法 name= 和 name
puts "\n\n"

# 现在可以直接访问 name 属性了
puts pat.name # 输出 Pat

pat.name="Betty"
print pat.name  # 输出 Betty . 可以看到，即使之前创建的对象，也随着类的改变而改变了


