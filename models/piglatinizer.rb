class PigLatinizer

  def initialize(text)
    @text = text
  end

  def latinize
    if "aeiou".include?(@text[0])
      result = "#{text.slice(1..-1)}"

end
