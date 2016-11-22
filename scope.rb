# Crea una variable en el global_scope llamada local_var con el valor "this is my local var" 

# después crea un método llamado return_my_local_var, este método deberá regresar simplemente local_var. 

# Has un puts del método return_my_local_var.

# Escribe una explicación de que esta pasando y porque obtuviste ese resultado. 

# Para hacer las cosas más claras dentro del método return_my_local_var cambia el valor de la variable.

# Te das cuenta como aunque tengas la misma variable en realidad son dos con el mismo nombre. 

# La diferencia es que una pertenece al contexto global y la otra al contexto local de un método.

# Crea un setter y un getter y sigue estos pasos para comprender el comportamiento de estas variables.

# Crea una instancia de DummyClass guardándola como dummy_1
# Crea otra instancia de DummyClass guardándola como dummy_2
# Imprime el valor de dummy_1.class_variable y de dummy_2.class_variable. Son iguales?
# Cambia el valor de dummy_1.class_variable = "New value for the class variable".
# Vuelve a Imprimir el valor de dummy_1.class_variable y de dummy_2.class_variable. Son iguales?
# Comprendiste lo que paso? si no te ha quedado claro repite esos pasos pero con @instance_var.

$global_var = "This is a global variable"
CONSTANT = 3.1416 

class DummyClass
  
  @@class_variable = "This is a class variable"

  def class_variable
   @@class_variable
  end
 
  def class_variable=(new_value)
   @@class_variable = new_value
  end

  def global_var
    $global_var
  end

  def global_var=(new_global_var)
    $global_var = new_global_var
  end

  def initialize
    @instance_var = "this is my local var"
  end

  def return_my_local_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

end

  def constant
    CONSTANT
  end

dummy_class = DummyClass.new
dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

# puts dummy_class.return_my_local_var

# p dummy_class.instance_var=("Bar")
# p dummy_class.instance_var   =    "Baz"
p dummy_1.class_variable = "New value for the class variable"
p dummy_2.class_variable
p dummy_1.global_var
dummy_1.global_var = "The new global var"
p dummy_1.global_var
p constant
