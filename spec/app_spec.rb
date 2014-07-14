require "spec_helper"

describe AmuseParkApp do
  describe "#index_by_id" do
    it "turns array into hash with nested hashes" do
      park_arry = AmuseParkApp.new([
                                     {
                                       :id=>546,
                                       :name=>"Kalahari Resorts",
                                       :city=>"Wisconsin Dells",
                                       :state=>"Wisconsin",
                                       :country=>"United States"
                                     },
                                     {
                                       :id=>547,
                                       :name=>"Little Amerricka",
                                       :city=>"Marshall",
                                       :state=>"Wisconsin",
                                       :country=>"United States"
                                     }
                                   ])

      park_hsh = park_arry.index_by_id

      expect(park_hsh).to eq({
                               546 => {
                                 :id=>546,
                                 :name=>"Kalahari Resorts",
                                 :city=>"Wisconsin Dells",
                                 :state=>"Wisconsin",
                                 :country=>"United States"
                               },
                               547 => {
                                 :id=>547,
                                 :name=>"Little Amerricka",
                                 :city=>"Marshall",
                                 :state=>"Wisconsin",
                                 :country=>"United States"
                               }
                             })
    end
  end
end