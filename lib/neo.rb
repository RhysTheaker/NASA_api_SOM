require_relative 'services/neo_index.rb'

class NEO

  def get_index_service start_date end_date
    NEOIndexService.new
  end

end

neo1 = NEO.new.get_index_service("2015-09-07", "2015-09-08")
neo1.neo
