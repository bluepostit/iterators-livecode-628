require_relative '../caesar'

describe '#encrypt' do
  it 'returns empty string when receiving an empty string' do
    expected = ''
    actual = encrypt('')
    expect(actual).to eq(expected)
  end

  it 'returns the expected encryption' do
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(actual).to eq(expected)
  end

  it 'returns the expected encryption for a simple word' do
    expected = "ABC"
    actual = encrypt("DEF")
    expect(actual).to eq(expected)
  end
end
