Dir['./lib/**/*.rb'].each { |f| require f }
require 'httparty'

class GroningenrbEndpoint < EndpointBase

  set :logging, true

  post '/dashing' do
    total_order = @message[:payload][:order][:totals][:order]
    HTTParty.post('http://dashing-groningenrb.herokuapp.com/widgets/lastorder',
      :body => { auth_token: @config["groningenrb.dashing_key"], current: total_order.to_i }.to_json)

    process_result 200, { message_id: @message[:message_id] }
  end

end