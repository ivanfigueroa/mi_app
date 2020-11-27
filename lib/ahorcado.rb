class Ahorcado
    def initialize palabra
        @palabra = palabra
        @errores = 0
        @progreso = palabra.gsub(/\S/, '*')        
    end

	def arriesgar letra
        if @palabra.include? letra      
            actualizarProgreso(letra)
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

    def palabraSecreta
      @progreso
    end

    def actualizarProgreso letra
        @palabra.split('').each_with_index do | value, index |
            if value == letra
              @progreso[index]=value
            end
        end
    end
end