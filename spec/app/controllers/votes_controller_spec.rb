require 'spec_helper'

RSpec.describe "/votes" do
  pending "add some examples to #{__FILE__}" do
    before do
      get "/votes"
    end

    it "returns hello world" do
      expect(last_response.body).to eq "Hello World"
    end
  end
end
