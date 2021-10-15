module Habilidades
    module Volador
        def volar
            'estoy volandooooo'
        end
        def aterrizar
            'estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'estoy nadando'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'puedo caminar'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'puedo comer plantas'
        end
    end

    module Carnivoro
        def comer
            'puedo comer carne'
        end
    end
end

#######################################

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

# AVES
    class Ave < Animal
        include Habilidades::Caminante
    end

    class Pinguino < Ave
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Paloma < Ave
        include Habilidades::Volador
        include Alimentacion::Herbivoro
    end
    
    class Pato < Ave
        include Habilidades::Volador
        include Habilidades::Nadador
        include Alimentacion::Herbivoro
    end


#MAMIFEROS
    class Mamifero < Animal
        include Habilidades::Caminante
    end

    class Perro < Mamifero
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Gato < Mamifero
        include Habilidades::Nadador
        include Alimentacion::Carnivoro
    end
    
    class Vaca < Mamifero
        include Alimentacion::Herbivoro
    end

#INSECTOS
    class Insecto < Animal
        include Habilidades::Volador
        include Habilidades::Caminante
    end

    class Mosca < Insecto
        include Alimentacion::Carnivoro
    end
    
    class Mariposa < Insecto
        include Alimentacion::Herbivoro
    end
    
    class Abeja < Insecto
        include Alimentacion::Herbivoro
    end 

################################################################################

criatura=Perro.new('Perro callejero') 
puts "\nSoy un #{criatura.nombre}, #{criatura.caminar} y #{criatura.comer}!"

criatura2=Mariposa.new('Mariposa Monarca')
puts "\nSoy una #{criatura2.nombre}, #{criatura2.volar} y #{criatura2.comer}!"
print "\n"