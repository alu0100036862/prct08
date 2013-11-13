
require 'test/unit'
#require "matrices"
require 'matrix'
require 'racional'
class Test_matrices < Test::Unit::TestCase

	def setup
	
		@matrizA = Matriz.new([[1,2],[3,4]])
		@matrizB = Matriz.new([[221,2],[3,4]])

		@matrizA_R = Matriz.new([[Racional.new(1,1),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]])
		@matrizB_R = Matriz.new([[Racional.new(442,2),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]])
	
	end
	 
	def teardown
	  # No hacemos nada por ahora
	end
	
	def test_constructor
		assert_equal true, @matrizA.is_a? Racional
		assert_equal true, @matrizB.is_a? Racional
		assert_equal true, @matrizA_R.is_a? Racional
		assert_equal true, @matrizB_R.is_a? Racional

		assert_equal true, @matrizA_R.respond_to?("matriz").should == true
		assert_equal true, @matrizA.respond_to?("filas").should == true
		assert_equal true, @matrizA.respond_to?("columnas").should == true
		
	end
	
	def test_method
		assert_equal true, @matrizA_R.respond_to?("to_s").should == true
		assert_equal true, @matrizA_R.respond_to?("abs").should == true
		assert_equal true, @matrizA_R.respond_to?("to_f").should == true
		assert_equal true, @matrizA_R.respond_to?("-@").should == true
		assert_equal true, @matrizA_R.respond_to?("trasp").should == true
		assert_equal true, @matrizA_R.respond_to?("+").should == true
		assert_equal true, @matrizA_R.respond_to?("-").should == true
		assert_equal true, @matrizA_R.respond_to?("*").should == true
	end
	
	
	def test_simple
			assert_equal true,@matrizA_R.to_s, Matriz.new([[Racional.new(1,1),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]]).to_s
			assert_equal true,@matrizA.trasp.to_s, Matriz.new([[1,3],[2,4]]).to_s
			assert_equal true,(-@matrizA).to_s, Matriz.new([[-1,-2],[-3,-4]]).to_s
			assert_equal true,@matrizA.abs.to_s, Matriz.new([[1,2],[3,4]]).to_s
			assert_equal true,@matrizA.to_f.to_s, Matriz.new([[1.0,2.0],[3.0,4.0]]).to_s
			assert_equal true,matrizA.to_s, Matriz.new([[1,2],[3,4]]).to_s

	end
		
	def test_type_check
		assert_raise( RuntimeError ) { Matriz.new('r') }
		#assert_raises(RuntimeError) do Racional.new('r')
	end

	def test_sum
		assert_equal(Matriz.new(Matriz.new([[222,4], [6,8]]).to_s,(@matrizA + @matrizB).to_s, "Comprobar el metodo '-' de resta" )
		assert_equal(Matriz.new(Matriz.new([[Racional.new(222,1),Racional.new(4,1)],[Racional.new(6,1),Racional.new(8,1)]]).to_s, (@matrizA_R + @matrizB_R).to_s, "Comprobar el metodo '-' de resta" )
	end

	def test_rest
		assert_equal(Matriz.new([[-220,0], [0,0]]).to_s,(@matrizA - @matrizB).to_s, "Comprobar el metodo '-' de resta" )
		assert_equal(Matriz.new([[Racional.new(-220,1),Racional.new(0,1)],[Racional.new(0,1),Racional.new(0,1)]]).to_s, (@matrizA_R - @matrizB_R).to_s, "Comprobar el metodo '-' de resta" )
	end
	
	def test_mul
		assert_equal(Matriz.new([[227,10], [675,22]]).to_s, (@matrizA * @matrizB).to_s, "Comprobar el metodo '*' de multiplicación" )
	end

	def test_failure
		assert_equal("(8,12)", (@fraccion_1 * 2).to_s, "Producto escalar")
	end
	

end
