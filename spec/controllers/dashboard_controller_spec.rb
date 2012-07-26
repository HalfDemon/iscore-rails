require 'spec_helper'

describe DashboardController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'blue'" do
    it "returns http success" do
      get 'blue'
      response.should be_success
    end
  end

  describe "GET 'green'" do
    it "returns http success" do
      get 'green'
      response.should be_success
    end
  end

  describe "GET 'red'" do
    it "returns http success" do
      get 'red'
      response.should be_success
    end
  end

  describe "GET 'white'" do
    it "returns http success" do
      get 'white'
      response.should be_success
    end
  end

end
