require 'json'
require_relative 'get_data'

class SaveData
  FILENAME = './out.txt'
  attr_reader :filename, :data

  def initialize(filename = FILENAME)
    @filename = filename
    @data = []
  end

  def get_data
    g = GetData.new
    (0..GetData::MAX_SIZE/5).each do |i|
      data = g.get_page(i)
      data.each { |d| @data << d }
      break if data.size < 5
    end
  end

  def write_data
    File.open(@filename, "w") do |file|
      file.write @data.to_json
    end # Using a block auto close the file at the end of the block
  rescue => e # TODO: have a more user friendly exception message
    pp "Saving file failed with error: #{e.message}"
  end

  def print_sumary
    print "We have loaded #{@data.size} strings and successfully saved them inside file: #{@filename} in a json format"
  end
end


if __FILE__ == $0
  if ARGV.include?('?')
    print "Usage: ruby save_data <output_filename (optional)>\nuse with parameter ? to display this help\n"
    exit
  end

  s = if ARGV.empty?
    SaveData.new
  else
    SaveData.new(ARGV.first)
  end

  s.get_data
  s.write_data
  s.print_sumary
end
