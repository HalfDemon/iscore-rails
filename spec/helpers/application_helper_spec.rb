require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page name" do
      full_title("foo").should =~ /foo/
    end

    it "should includes the base name" do
      full_title("foo").should =~ /^#{$cdc_name}/
    end
  end
end