require './lib/ahorcado.rb'
#require './config'

describe Ahorcado do
	it "verificar que la letra 'a' exista en la palabra Ana" do
		ahorcado = Ahorcado.new("Ana")
		expect(ahorcado.arriesgar('a')).to eq true
    end
  it "verificar que la letra 'x' no existe en la palabra Ana" do
		ahorcado = Ahorcado.new("Ana")
		expect(ahorcado.arriesgar('x')).to eq false
	end

	it "el usuario no acierta con la letra 'x' y suma un error" do
		ahorcado = Ahorcado.new("Ana")
		ahorcado.arriesgar('x')
		expect(ahorcado.errores).to eq 1
	end

	it "el usuario no acierta con la letra 'x' ni 'z' y suma dos errores" do
		ahorcado = Ahorcado.new("Ana")
		ahorcado.arriesgar('x')
		ahorcado.arriesgar('z')
		expect(ahorcado.errores).to eq 2
	end
end