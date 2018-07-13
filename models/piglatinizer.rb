class PigLatinizer
  attr_reader :text
  def initialize
    @text = text
  end

  def latinize
    if "aeiou".include?(@text[0])
      result = "#{@text[1..-1]+@text[0]}ay"
    else
      i=0
      while !"aeiou".include?(@text[i])
        i+=1
      end
      result = "#{@text[i..-1]+@text[0..i-1]}ay"
    end
    result
  end
end
