# puts "self es igual a: #{self}"

# class DummyClass
#   puts "Esto esta corriendo cuando se define la clase"
#   puts "En este contexto self es igual a: #{self}"
# end

# class DummyClass

#     def instance_method
#         puts "Dentro de un método de instancia"
#         puts "En este contexto self es igual a: #{self}"
#     end
# end

# dummy_class = DummyClass.new()
# puts dummy_class.instance_method

class DummyClass

    def self.class_method
            puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts DummyClass.class_method  

=begin
Comprender el uso de self
Conocer los tres tipos de contextos en los que puede llamarse
  
end