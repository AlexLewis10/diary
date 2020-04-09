require 'pg'

class Diary

  def self.all
    connection = PG.connect(dbname: 'diary_manager')
    result = connection.exec("SELECT * FROM diary")
    result.map { |diary| diary['entry'] }
  end
end
