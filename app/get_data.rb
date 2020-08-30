class GetData
  MAX_SIZE = 255
  PAGE_SIZE = 5
  attr_reader :size
  def initialize
    @lines = []
    @size = rand(1..MAX_SIZE)
    (1..@size).each { |i| @lines << "#{i}:blah blah blah\n"}
  end

  def get_page(i)
    result = @lines[i * PAGE_SIZE..(i + 1) * PAGE_SIZE]
    (result.nil? ? [] : result)
  end
end

