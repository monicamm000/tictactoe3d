class Simbolo
  def initialize(simbolo)
    @simbolo = simbolo
  end

  def getSimbolo
    if @simbolo == "X"
      return "O"
    else
      return "X"
    end
  end
end
