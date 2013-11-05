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

end
