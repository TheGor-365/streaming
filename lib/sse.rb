require 'json'

class SSE
  def initialize(io)
    @io = io
  end

  def write(object, options = {})
    options.each do |name, value|
      @io.write "#{name}: #{value}\n"
    end

    @io.write "data: #{object}\n\n"
  end

  def close
    @io.close
  end
end
