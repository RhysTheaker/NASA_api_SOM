require_relative '../lib/neo.rb'

describe 'Near Earth Object' do

  before(:all) do
    @neo = NEO.new.get_index_service("2015-09-07", "2015-09-08")
  end

  context "core information on the NEO" do

    it "should..." do
      
    end

  end

end
