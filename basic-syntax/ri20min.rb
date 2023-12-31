# -*- coding: UTF-8 -*-

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")  # respond_to? 方法，判断对象是否有某个方法
      # @names is a list of some kind, iterate!
      # 如果 @names 对象可以回应 each 函数，那它就是可以被迭代的， 于是我们对它做迭代，向每个人问好。最后如果 @names 是其他的类， 就把它转化为字符串，用默认的方式问好。
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")  # respond_to? 方法，判断对象是否有某个方法
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end

end


# __FILE__ 是一个魔法值，它存有现在运行的脚本文件的名字。$0 是启动脚本的名字。 代码里的比较结构的意思是 “如果这是启动脚本的话…” 这允许代码作为库调用的时候不运行启动代码， 而在作为执行脚本的时候调用启动代码。
# 类似于 Python 的 if __name__ == '__main__': 的用法
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end


