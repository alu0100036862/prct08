require 'rspec'
require 'matriz'

describe Matriz do
  
	before :each do

		matA = [[1,2],[3,4]]
		matB = [[221,2],[3,4]]

		@matrizA = Matriz.new(matA)
		@matrizB = Matriz.new(matB)

	end
	context 'comprobar los accessors' do

		it "Se debe invocar al metodo matriz() para obtener la matriz" do
			@matrizA.respond_to?("matriz").should == true
		end
		
		it "Se debe invocar al metodo filas() para obtener el numero de filas" do
			@matrizA.respond_to?("filas").should == true
		end



	end
	context 'Comprobar metodos de conversion' do

		it "Se debe mostrar la matriz" do
			@matrizA.to_s.should == Matriz.new([[1,2],[3,4]]).to_s
		end

		it "Se debe convertir a valor absoluto" do
			@matrizA.abs.to_s.should == Matriz.new([[1,2],[3,4]]).to_s
		end	  
	end

	context 'Comprobar los operaciones entre matrices' do

		it "Se debe poder sumar dos matrices" do
			(@matrizA + @matrizB).to_s.should == Matriz.new([[222,4], [6,8]]).to_s
		end
	  
		it "Se debe poder restar dos matrices" do
			(@matrizA - @matrizB).to_s.should == Matriz.new([[-220,0], [0,0]]).to_s
		end
	  
	end
  
end
