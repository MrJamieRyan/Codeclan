require_relative("../db/sql_runner")
require_relative("./location")

class User

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO users
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id"
    values = [@name]
    user = SqlRunner.run( sql, values ).first
    @id = user['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM users"
    users = SqlRunner.run(sql)
  return map_items(users)
  end

  def locations()
    sql = "Select locations.* FROM locations WHERE id =$1
          INNER JOIN visits
          ON visits.location_id = locations.id
          WHERE user_id = $1"
    values = [@id]
    locations = SqlRunner.run(sql, values)
    return Location.map_items(locations)
  end

  def self.delete_all()
    sql = "DELETE FROM users"
    SqlRunner.run(sql)
  end

  def self.map_items(user_data)
    result = user_data.map{|user| User.new(user)}
    return map_items(user_data)
  end

end
