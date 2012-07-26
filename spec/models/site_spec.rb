require 'spec_helper'

describe Site do
  before do
    @site = create(:site)
  end

  subject { @site }

   it { should respond_to(:name) }
   it { should respond_to(:number) }
   it { should respond_to(:points) }
   it { should respond_to(:organization) }

   describe "should require a name" do
     before { @site.name = " "}
     it { should_not be_valid}
   end

   describe "should require a number" do
     before do @site.number = " " end 
     it { should_not be_valid }
   end

   describe "should require a unqiue number" do
     it "on vaildations" do
       expect do
        create(:site, number: @site.number)
      end.should raise_error(ActiveRecord::RecordInvalid)
     end
   end

  describe "should require a unqiue name" do
     it "on vaildations" do
       expect do
        create(:site, name: @site.name)
      end.should raise_error(ActiveRecord::RecordInvalid)
     end
    end

   describe "should have zero points" do
      its(:points) { should eql(0) }
   end
end
