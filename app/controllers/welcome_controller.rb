require 'sse'

class WelcomeController < ApplicationController
  include ActionController::Live

  def homepage
    # data = 'hey'
    # send_data(data, filename: 'hey.txt')
    send_file(Rails.root.join('public', '404.html'), filename: '404.html')
  end

  # def send_message
    # response.headers['Content-Type'] = 'text/event-stream'
    # @message = params[:message]

    # sse = SSE.new(response.stream)

    # begin
    #   loop do
    #     sse.write({ message: "#{ @message }" })
    #   end
    # rescue IOError
    # ensure
    #   sse.close
    #   response.stream.close
    # end

  #   10.times do
  #     response.stream.write "#{ @message }\n"
  #   end
  # ensure
  #   response.stream.close
  # end
end
