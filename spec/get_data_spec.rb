require_relative '../app/get_data'

describe GetData do
  it 'A new object have a size attribute' do
    g = GetData.new
    expect(g.size.class).to eq(Integer)
  end

  it 'The first page is not empty' do
    g = GetData.new
    expect(g.get_page(0).empty?).to eq(false)
  end

  it 'the last page should be empty' do
    g = GetData.new
    expect(g.get_page(g.size).empty?).to eq(true)
  end
end
