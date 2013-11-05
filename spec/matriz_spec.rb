require 'rspec'
require 'matriz'

describe Matriz do
  
	before :each do

		matA = [[1,2],[3,4]]
		matB = [[221,2],[3,4]]

		@matrizA = Matriz.new(matA)
		@matrizB = Matriz.new(matB)

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
	  
	end
  
end
