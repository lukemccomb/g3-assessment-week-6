class AmuseParkApp

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    id_hsh = {}
    @parks.each do |hsh|
     id_hsh[hsh[:id]] = hsh
    end
    id_hsh
  end
end