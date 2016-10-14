class Ticket

  attr_reader :id, :film_id, :customer_id

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @film_id = options['film_id'].to_i
    @customer_id = options['customer_id'].to_i
  end

  def save
    sql = "INSERT INTO tickets (film_id, customer_id) VALUES ('#{@film_id}', '#{@customer_id}') RETURNING *"
    ticket = SqlRunner.run(sql).first
    @id = ticket['id'].to_i
  end

end