require 'spec_helper'

describe GroningenrbEndpoint do

  let(:message) {
    {
      "message" => "order:new",
      :message_id => "abc",
      :payload => {
        "order" => Factories.order,
        "original" => Factories.original,
        "parameters" => Factories.parameters
      }
    }
  }

  describe "/dashing" do
    it "works" do
      post '/dashing', message.to_json, auth
      expect(last_response).to be_ok
    end
  end

end