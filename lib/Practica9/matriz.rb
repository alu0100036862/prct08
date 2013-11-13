
!# /usr/bin/ruby
# matriz.rb

require "racional"

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

#		# Mostramos matriz de racionales
#		if matriz[0][0].is_a? Racional then

			fil = 0
			print "["
			while fil < filas

				col = 0					
				while col < columnas

					print "#{matriz[fil][col].to_s}"
					if (col + 1) < columnas then print ", " end
					col += 1

				end

				if (fil + 1) < filas then print ", " end
				fil += 1

			end
			print "]"

#		elsif matriz[0][0].is_a? Numeric		

#			matriz.each do | fila |
#				puts fila.to_s + "  "
#			end

#		end

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

	#  Matriz opuesta (negada)
        def -@

                opuesta = Array.new(matriz.size - 1)
                for i in 0...matriz.size
                        opuesta[i] = Array.new(matriz[i].size - 1)
                        for j in 0...matriz[i].size
                                opuesta[i][j] = matriz[i][j] * -1
                        end
                end
                Matriz.new(opuesta)

        end

        # Traspuesta de matriz
        def trasp

                traspuesta = Array.new(matriz.size - 1)
                for i in 0...matriz.size
                        traspuesta[i] = Array.new(matriz[i].size - 1)
                        for j in 0...matriz[i].size
                                traspuesta[i][j] = matriz[j][i]
                        end
                end
                Matriz.new(traspuesta)

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

	# Multiplicación de matrices
	def *(o)

		prod = Array.new(matriz.size - 1,0)
		for i in 0...matriz[0].size 
			prod[i] = Array.new(o.matriz.size,0)
			for j in 0...o.matriz.size
				for pos in 0...matriz.size
					prod[i][j] = prod[i][j] + (matriz[i][pos] * o.matriz[pos][j])
				end
			end
		end
		Matriz.new(prod)

	end

end
