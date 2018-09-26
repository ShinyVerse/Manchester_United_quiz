require './lib/level'

describe Level do
  subject(:easy) { described_class.new("Easy") }
  subject(:medium) { described_class.new("Medium") }
  subject(:hard) { described_class.new("Hard") }
  subject(:select) { described_class.new("Select") }

  it 'stores the level choice of the player if Easy' do
    expect(easy.choice).to eq "Easy"
  end

  it 'stores the level choice of the player if Medium' do
    expect(medium.choice).to eq "Medium"
  end

  it 'stores the level choice of the player if Hard' do
    expect(hard.choice).to eq "Hard"
  end

  it 'stores the level choice of the player if Select' do
    expect(select.choice).to eq "Select"
  end
end
