class Ahorcado
    def initialize palabra
        @palabra = palabra
    end

	  def arriesgar letra
        @palabra.include? letra
    end
end