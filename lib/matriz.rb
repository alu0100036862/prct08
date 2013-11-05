!# /usr/bin/ruby
# matriz.rb

class Matriz

	# Inicialización
	def initialize(matriz)

		raise ArgumentError, "No se puede crear una matriz con un vector vacio" unless (matriz.size >= 1 and matriz[0].size >= 1)

		@matriz = matriz
		@filas = matriz[0].size
		@columnas = matriz[0].size

	end

	attr_reader :matriz, :filas, :columnas

	# Convertimos a string
	def to_s

		matriz.each do | fila |
			puts fila.to_s + "  "
		end

	end

        # Absoluto de matriz
        def abs
                
                absoluto = Array.new(matriz.size - 1)
                for i in 0...matriz.size            
                        absoluto[i] = Array.new(matriz[i].size - 1)
                        for j in 0...matriz[i].size
                                absoluto[i][j] = (matriz[i][j]).abs
                        end
                end
                Matriz.new(absoluto)
        
        end

end
