module TeamNews
  class Recorder
    RECORD_URL = "http://www.weeklyteamnews.com/metrics"

    def initialize(options = {})
      @token = options.fetch(:token)
    end

    def record(data)
      uri = URI(RECORD_URL)
      Net::HTTP.post_form(uri, data.merge(:token => @token))
    end
  end
end
