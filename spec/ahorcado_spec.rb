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
end