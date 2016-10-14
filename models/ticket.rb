class Ticket

  attr_reader :id
  attr_accessor :film_id, :customer_id

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @film_id = options['film_id'].to_i
    @customer_id = options['customer_id'].to_i
  end

  def save()
    sql = "INSERT INTO tickets (film_id, customer_id) VALUES ('#{@film_id}', '#{@customer_id}') RETURNING *"
    ticket = SqlRunner.run(sql).first
    @id = ticket['id'].to_i
  end

  def update()
    sql = "UPDATE tickets SET
      film_id = #{@film_id},
      customer_id = #{@customer_id}
    WHERE id = #{@id}"
    return SqlRunner.run(sql).first
  end

  def delete()
    sql = "DELETE FROM tickets WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM tickets"
    return Ticket.map_to_objects(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM tickets WHERE id = #{id}"
    return Ticket.map_to_object(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

  def self.map_to_objects(sql)
    tickets = SqlRunner.run(sql)
    return tickets.map { |ticket| Ticket.new(ticket) }
  end

  def self.map_to_object(sql)
    ticket = Ticket.map_to_objects(sql)
    return ticket.first
  end

end