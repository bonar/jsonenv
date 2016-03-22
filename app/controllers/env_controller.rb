class EnvController < ApplicationController

  def index
    env = {}
    request.env.each do |header|
      key = header[0]
      val = header[1]
      if key =~ /^[A-Z]/
        env[key] = val
      end
    end
    render :json => env
  end

end
