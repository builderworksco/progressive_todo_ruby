class Writable
  attr_accessor :title, :body

  def output
    File.open(path, 'w') do |file|
      file.puts @body.map(&:to_s)
    end
  end

  def path
    File.join('tmp', @title)
  end
end
