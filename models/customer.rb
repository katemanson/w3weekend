require_relative('../db/sql_runner')

class Customer

  attr_reader :id, :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @name = options['name']
    @funds = options['funds'].to_f
  end

  def save
    sql = "INSERT INTO customers (name, funds) VALUES ('#{ @name }', '#{ @funds }') RETURNING *"
    customer = SqlRunner.run(sql).first
    @id = customer['id'].to_i
  end

end