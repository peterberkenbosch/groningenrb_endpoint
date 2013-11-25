require "httparty"

class OrderCollector

  def self.collect(payload)
    HTTParty.post('http://dashing-groningenrb.herokuapp.com/widgets/karma',
      :body => { auth_token: "da39a3ee5e6b4b0d3255bfef95601890afd80709", current: 1000 }.to_json)
  end

end