class PigLatinizer
  attr_accessor :text
  def initialize
    # @text = text
  end

  def piglatinize(text)
    if "aeiou".include?(text[0])
      result = "#{text[1..-1]+text[0]}ay"
    else
      i=0
      while !"aeiou".include?(text[i])
        i+=1
      end
      result = "#{text[i..-1]+text[0..i-1]}way"
    end
    result
  end
end
