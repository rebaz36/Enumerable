require_relative './Myenumerable'

class MyList
    include MyEnumerable
    def initialize(*list)
      @list = list
    end
    attr_reader :list
    def each
      puts 'Please, write your name:'
      name = gets.chomp
      puts "Welcome! #{name.capitalize}, to the Diego & Erik's project!\n\n\n"
      input_data = []
      @list.each { |number| input_data.push(number) }
      print "Method EACH:\n"
      print "Output data: #{input_data}\n"
    end
  end
  numbers = MyList.new(1, 2, 3, 4)
  numbers.each
  numbers.all? { |e| e < 5 }
  numbers.all? { |e| e > 5 }
  numbers.any? { |number| number == 2 }
  numbers.any? { |number| number == 5 }
  numbers.filter?(&:even?) # { |e| e.even }