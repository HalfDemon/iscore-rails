require 'spec_helper'

describe DocumentCommentController do

  describe "GET 'document:belongs_to'" do
    it "returns http success" do
      get 'document:belongs_to'
      response.should be_success
    end
  end

  describe "GET 'user:belongs_to'" do
    it "returns http success" do
      get 'user:belongs_to'
      response.should be_success
    end
  end

  describe "GET 'content'" do
    it "returns http success" do
      get 'content'
      response.should be_success
    end
  end

end
