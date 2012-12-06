require 'spec_helper'

describe OmniAuth::Strategies::Instagram do
  subject do
    OmniAuth::Strategies::Instagram.new({})
  end

  it "should have a name" do
    expect(subject.options.name).to eq('instagram')
  end

  describe "client options" do
    subject do
      OmniAuth::Strategies::Instagram.new({}).options.client_options
    end

    it "should have the correct site" do
      expect(subject.site).to eq('https://api.instagram.com')
    end

    it "should have the correct authorize url" do
      expect(subject.authorize_url).to eq('/oauth/authorize')
    end

    it "should have the correct token url" do
      expect(subject.token_url).to eq('/oauth/access_token')
    end
  end
end
