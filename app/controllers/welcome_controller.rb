require 'sse'

class WelcomeController < ApplicationController
  include ActionController::Live

  def homepage
    # data = 'hey'
    # send_data(data, filename: 'hey.txt')
    # send_data(File.open(Rails.root.join('public', '404.html')), w { |file| file << data }, filename: '404.html')
    # send_file(Rails.root.join('public', '404.html'), filename: '404.html')
  end

  def send_message
    response.headers['Content-Type'] = 'text/event-stream'
    # @message = params[:message]

    # sse = SSE.new(response.stream)

    begin
      loop do
        sse.write({ message: "#{ params[:message]}" })
      end
    rescue IOError
    ensure
      sse.close
    end

  #   10.times do
  #     response.stream.write "#{ @message }\n"
  #   end
  # ensure
  #   response.stream.close
  # end
end
