
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

	#  Matriz en punto flotante
        def to_f

                flotante = Array.new(matriz.size - 1)
                for i in 0...matriz.size
                        flotante[i] = Array.new(matriz[i].size - 1)
                        for j in 0...matriz[i].size
                                flotante[i][j] = (matriz[i][j]).to_f
                        end
                end
                Matriz.new(flotante)

        end

	# Suma de matrices
	def +(o)

		suma = Array.new(matriz.size - 1)
		for i in 0...matriz.size
		   	suma[i] = Array.new(matriz[i].size - 1)
			for j in 0...matriz[i].size
				suma[i][j] = matriz[i][j] + o.matriz[i][j]
			end
		end
		Matriz.new(suma)
		
	end

        # Resta de matrices
        def -(o)

                resta = Array.new(matriz.size - 1)
                for i in 0...matriz.size
			resta[i] = Array.new(matriz[i].size - 1)
			for j in 0...matriz[i].size
				resta[i][j] = matriz[i][j] - o.matriz[i][j]
			end
                end
                Matriz.new(resta)

        end

end
