class AmuseParkApp

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    Hash[@parks.map { |hsh| [hsh[:id], hsh] } ]
  end

  def index_by_country
    @parks.group_by { |hsh| hsh[:country]}
  end
end