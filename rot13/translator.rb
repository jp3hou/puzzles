class Translator
  def translate(string)
    string.tr('a-zA-Z', 'n-za-mN-ZA-M')
  end
end
