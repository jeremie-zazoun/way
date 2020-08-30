require_relative '../app/save_data'

describe SaveData do
  it 'new object has default file destination' do
    s = SaveData.new
    expect(s.filename).to eq(SaveData::FILENAME)
  end

  it 'You can specify a destination' do
    filename = 'Hello file'
    s = SaveData.new(filename)
    expect(s.filename).to eq(filename)
  end
end
