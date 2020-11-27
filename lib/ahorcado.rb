class Ahorcado
    def initialize palabra
        @palabra = palabra
        @errores = 0
    end

	def arriesgar letra
        if @palabra.include? letra
            return true
        else
            @errores+=1
            return false
		end
	end
		
	def errores
		@errores
  end
    
  def perdiste
		@errores >= 5
	end
end