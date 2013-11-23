class GroningenrbEndpoint < EndpointBase

  set :logging, true

  post '' do
    process_result 200, { message_id: @message[:message_id],
                          received: @message[:payload] }
  end

end