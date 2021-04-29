describe '#acronym' do
  it 'returns nil when given an empty string' do
    expected = nil
    actual = acronym('')

    expect(actual).to eq(expected)
  end

  it 'returns the expected acronym for lower case sentence' do
    expected = 'NASA'
    actual = acronym('north american space agency')

    expect(actual).to eq(expected)
  end
end

def acronym(sentence)
  # split sentence into words
  # iterate over the words. for each word:
  #   take first letter of the word
  #   create array with the letter to upper case
  # return array converted to string
  return nil if sentence.length == 0

  new_word = sentence.split.map do |word|
    word[0].upcase
  end
  return new_word.join
end
