require 'spec_helper'

RSpec.describe "/post" do
  pending "add some examples to #{__FILE__}" do
    before do
      get "/post"
    end

    it "returns hello world" do
      expect(last_response.body).to eq "Hello World"
    end
  end
end
