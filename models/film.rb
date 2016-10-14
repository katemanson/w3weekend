require_relative('../db/sql_runner')

class Film

  attr_reader :id, :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @title = options['title']
    @price = options['price'].to_f
  end

  def save
    sql = "INSERT INTO films (title, price) VALUES ('#{ @title }', '#{ @price }') RETURNING *"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end

end