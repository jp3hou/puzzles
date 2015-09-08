class Translator
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  def translate(string)
    result = ''
    string.split(//).each do |char|
      if char == ' '
        result << char
        next
      end
      result << translate_char(char)
    end
    result
  end

  private

  def translate_char(char)
    lowercase = char.downcase
    is_uppercase = char != lowercase
    index = ALPHABET.index lowercase
    translated_index = index - 13
    if translated_index < 0
      translated_index += 26
    end

    if is_uppercase
      ALPHABET[translated_index].upcase
    else
      ALPHABET[translated_index]
    end
  end
end
