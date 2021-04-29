def encrypt(sentence)
  return '' if sentence == ''

  # create array with alphabet
  # split sentence into letters
  # map sentence letters to new array:
  #   get index of letter in alphabet array
  #   subtract 3
  #   get letter from alphabet (with the new index)
  # convert array to string
  # return string

  alphabet = ('A'..'Z').to_a
  new_sentence = sentence.split('').map do |letter|
    index = alphabet.index(letter)
    # Ternary version:
    # index.nil? ? letter : alphabet[index - 3]
    if index.nil? # letter is not found in alphabet array
      letter
    else
      alphabet[index - 3]
    end
  end
  return new_sentence.join
end
