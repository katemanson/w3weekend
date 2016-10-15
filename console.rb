require_relative('./models/film')
require_relative('./models/customer')
require_relative('./models/ticket')
require_relative('./db/sql_runner')
require('pry-byebug')

Ticket.delete_all
Film.delete_all
Customer.delete_all

film1 = Film.new({'title' => "The Girl on the Train", 'price' => 11.00, 'capacity' => 19})
film1.save
film2 = Film.new({'title' => "War on Everyone", 'price' => 10.00, 'capacity' => 23})
film2.save
film3 = Film.new({'title' => "Supersonic", 'price' => 9.00, 'capacity' => 14})
film3.save
film4 = Film.new({'title' => "Swiss Army Man", 'price' => 7.50, 'capacity' => 18})
film4.save
film5 = Film.new({'title' => "The Beatles: Eight Days a Week", 'price' => 7.00, 'capacity' => 10})
film5.save
film6 = Film.new({'title' => "Queen of Katwe", 'price' => 12.00, 'capacity' => 25})
film6.save
film7 = Film.new({'title' => "Bolshoi Ballet: The Golden Age", 'price' => 14.00, 'capacity' => 15})
film7.save
film8 = Film.new({'title' => "The Talented Mr Ripley", 'price' => 8.00, 'capacity' => 20})
film8.save

customer1 = Customer.new({'name' => "Ronald", 'funds' => 35})
customer1.save
customer2 = Customer.new({'name' => "David", 'funds' => 50})
customer2.save
customer3 = Customer.new({'name' => "Ali", 'funds' => 40})
customer3.save
customer4 = Customer.new({'name' => "John", 'funds' => 70})
customer4.save
customer5 = Customer.new({'name' => "Bill", 'funds' => 30})
customer5.save
customer6 = Customer.new({'name' => "Evie", 'funds' => 75})
customer6.save
customer7 = Customer.new({'name' => "Yasmin", 'funds' => 25})
customer7.save
customer8 = Customer.new({'name' => "Tamsin", 'funds' => 40})
customer8.save
customer9 = Customer.new({'name' => "Wray", 'funds' => 55})
customer9.save
customer10 = Customer.new({'name' => "Aimee", 'funds' => 30})
customer10.save
customer11 = Customer.new({'name' => "Calum", 'funds' => 10})
customer11.save
customer12 = Customer.new({'name' => "Ruaridh", 'funds' => 60})
customer12.save
customer13 = Customer.new({'name' => "Sian", 'funds' => 80})
customer13.save
customer14 = Customer.new({'name' => "Marni", 'funds' => 40})
customer14.save
customer15 = Customer.new({'name' => "Neil", 'funds' => 93})
customer15.save

ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
ticket2 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer1.id})
ticket3 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer1.id})
ticket4 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer1.id})
ticket5 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer1.id})
ticket6 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer1.id})
ticket7 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer2.id})
ticket8 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer2.id})
ticket9 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer2.id})
ticket10 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer2.id})
ticket11 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer3.id})
ticket12 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer3.id})
ticket13 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer3.id})
ticket14 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer4.id})
ticket15 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer4.id})
ticket16 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer4.id})
ticket17 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer4.id})
ticket18 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer4.id})
ticket19 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer4.id})
ticket20 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer4.id})
ticket21 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer4.id})
ticket22 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer5.id})
ticket23 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer5.id})
ticket24 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer5.id})
ticket25 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer5.id})
ticket26 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer6.id})
ticket27 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer7.id})
ticket28 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer7.id})
ticket29 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer8.id})
ticket30 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer8.id})
ticket31 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer8.id})
ticket32 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer8.id})
ticket33 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer9.id})
ticket34 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer9.id})
ticket35 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer9.id})
ticket36 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer10.id})
ticket37 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer10.id})
ticket38 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer10.id})
ticket39 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer10.id})
ticket40 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer10.id})
ticket41 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer11.id})
ticket42 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer11.id})
ticket43 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer12.id})
ticket44 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer12.id})
ticket45 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer12.id})
ticket46 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer13.id})
ticket47 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer13.id})
ticket48 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer14.id})
ticket49 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer14.id})
ticket50 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer15.id})
ticket51 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer15.id})
ticket52 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer15.id})
ticket53 = Ticket.new({'film_id' => film8.id, 'customer_id' => customer15.id})

ticket1.save
ticket2.save
ticket3.save
ticket4.save
ticket5.save
ticket6.save
ticket7.save
ticket8.save
ticket9.save
ticket10.save
ticket11.save
ticket12.save
ticket13.save
ticket14.save
ticket15.save
ticket16.save
ticket17.save
ticket18.save
ticket19.save
ticket20.save
ticket21.save
ticket22.save
ticket23.save
ticket24.save
ticket25.save
ticket26.save
ticket27.save
ticket28.save
ticket29.save
ticket30.save
ticket31.save
ticket32.save
ticket33.save
ticket34.save
ticket35.save
ticket36.save
ticket37.save
ticket38.save
ticket39.save
ticket40.save
ticket41.save
ticket42.save
ticket43.save
ticket44.save
ticket45.save
ticket46.save
ticket47.save
ticket48.save
ticket49.save
ticket50.save
ticket51.save
ticket52.save
ticket53.save

# film1.ticket_sale(5)

binding.pry
nil