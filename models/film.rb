class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id'] != 0
    @title = options['title']
    @price = options['price'].to_f
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', '#{@price}') RETURNING *"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end

  def update()
    sql = "UPDATE films SET
      title = '#{@title}', 
      price = #{@price}
      WHERE id = #{@id}"
    return SqlRunner.run(sql).first
  end

  def delete()
    sql = "DELETE FROM films WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  # Not totally sure this method is in the right class (could go in Ticket, with film_id and customer_id as parameters)?
  def ticket_sale(customer_id)  
    customer = Customer.find_by_id(customer_id)
    if customer.funds > @price
      customer.funds -= @price
      customer.update
      new_ticket = Ticket.new({'film_id' => @id, 'customer_id' => customer_id})
      new_ticket.save
      return new_ticket, customer
    else
      return "No sale: customer hasn't enough money."
    end
  end

  def number_of_tickets_sold()
    sql = "SELECT COUNT(t.id) FROM tickets t WHERE t.film_id = #{@id}"
    return SqlRunner.run(sql).first['count'].to_i
  end

  def self.all()
    sql = "SELECT * FROM films"
    return Film.map_to_objects(sql)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM films WHERE id = #{id}"
    return Film.map_to_object(sql)
  end

  # def self.find_by_title(title)
  #   sql = "SELECT * FROM films WHERE title = #{'title'}"
  #   return Film.map_to_object(sql)
  # end
  # # title needs to be passed in in inverted commas -- any way round this?

  def self.delete_all()
    sql = "DELETE from films"
    SqlRunner.run(sql)
  end

  def self.map_to_objects(sql)
    films = SqlRunner.run(sql)
    return films.map { |film| Film.new(film) }
  end

  def self.map_to_object(sql)
    film = Film.map_to_objects(sql)
    return film.first
  end

end