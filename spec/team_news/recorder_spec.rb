require "spec_helper"
require "team_news/recorder"

module TeamNews
  RSpec.describe Recorder do
    describe "#record", :vcr do
      it "sends data to Weekly Team News" do
        recorder = TeamNews::Recorder.new(:token => "aGftPgJwdsRH5fXWHnuecKMz")

        response = recorder.record(
          :users => 42,
          :posts => 12
        )

        expect(response.code).to eq("201")
        expect(response.body).to eq("Successfully recorded.")
      end
    end
  end
end
