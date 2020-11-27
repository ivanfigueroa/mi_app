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

	it "el usuario no acierta con 5 veces, obtiene mensaje Game Over" do
		ahorcado = Ahorcado.new("Ana")
		ahorcado.arriesgar('x')
		ahorcado.arriesgar('z')
		ahorcado.arriesgar('x')
		ahorcado.arriesgar('z')
		ahorcado.arriesgar('x')
		expect(ahorcado.perdiste).to eq true
    end
    
    it "el usuario acierta con 'a' y la palabra regresa 'a*a' " do
		ahorcado = Ahorcado.new("ana")
		ahorcado.arriesgar('a')
		expect(ahorcado.palabraSecreta).to eq 'a*a'
    end
    
    it "el usuario acierta con 'n' y la palabra regresa '*n*' " do
		ahorcado = Ahorcado.new("ana")
		ahorcado.arriesgar('n')
		expect(ahorcado.palabraSecreta).to eq '*n*'
    end
    
    it "el usuario acierta todas las letras" do
		ahorcado = Ahorcado.new("ana")
		ahorcado.arriesgar('n')
		ahorcado.arriesgar('a')
		expect(ahorcado.ganaste).to eq true
		expect(ahorcado.palabraSecreta).to eq 'ana'
	end
end