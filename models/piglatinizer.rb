class PigLatinizer
  attr_accessor :text
  def initialize
    # @text = text
  end

  def piglatinize(text)
    if "aeiouAEIOU".include?(text[0])
      result = "#{text}way"
    else
      i=0
      while !"aeiouAEIOU".include?(text[i])
        i+=1
      end
      result = "#{text[i..-1]+text[0..i-1]}ay"
    end
    result
  end
end
