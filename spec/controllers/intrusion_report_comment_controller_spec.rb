require 'spec_helper'

describe IntrusionReportCommentController do

  describe "GET 'content'" do
    it "returns http success" do
      get 'content'
      response.should be_success
    end
  end

  describe "GET 'user_id:integer'" do
    it "returns http success" do
      get 'user_id:integer'
      response.should be_success
    end
  end

  describe "GET 'intrusion_report_id:integer'" do
    it "returns http success" do
      get 'intrusion_report_id:integer'
      response.should be_success
    end
  end

end
