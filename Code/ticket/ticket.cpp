#include <string>
#include <utility>
#include <variant>
#include <vector>
class Ticket {
public:
  int seat_num;
};
class SoldTicket;
class UnsoldTicket : public Ticket {
  float price;
  friend SoldTicket;
};
class SoldTicket : public Ticket {
  float sold_price;
  std::string name;

public:
  template <typename String>
  SoldTicket(int seat_num, float sold_price, String &&name)
      : Ticket{seat_num}, sold_price(sold_price),
        name(std::forward<String>(name)) {}
  SoldTicket(UnsoldTicket &&ticket, std::string &&ticketholder_name)
      : Ticket(ticket.seat_num), sold_price(ticket.price),
        name(std::move(ticketholder_name)) {}
};
class Space {
  std::variant<UnsoldTicket, SoldTicket> ticket;
};
class Venue {
  int num_of_spaces;
  std::string name_of_venue;
  int tickets_sold;
};

class Event {
  std::string name;
  Venue venue;
};
