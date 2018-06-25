module CeasarCipher
  def self.ceaser_cipher(word, shift_factor)

    shift_factor = shift_factor % 26
    enc_word = ''
    word.each_byte do |char|
      if char >= 97 && char <= 122
        max = 122
        char += shift_factor
      elsif char >= 65 && char <= 90
        max = 90
        char += shift_factor
      else
        max = 200
      end
      char -= 26 if char > max
      enc_word += char.chr
    end
    enc_word
  end
end

puts CeasarCipher.ceaser_cipher('What a string!', 5)
