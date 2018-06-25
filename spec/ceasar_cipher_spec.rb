RSpec.describe CeasarCipher do
  it 'has a version number' do
    expect(CeasarCipher::VERSION).not_to be nil
  end

  it 'shifts letter 5 places' do
    expect(CeasarCipher.ceaser_cipher('What a string!', 5)).to eq 'Bmfy f xywnsl!'
  end

  it 'shifts capital to capital' do
    expect(CeasarCipher.ceaser_cipher('W', 5)).to eq 'B'
  end

  it 'works with z to a' do
    expect(CeasarCipher.ceaser_cipher('Zz', 1)).to eq 'Aa'
  end
end
