require 'json'

# Understands solutions to a need for a rental car offer
class RentalOfferSolutionPacket
  SOLUTION = 'car_rentals'

  def initialize
    @solutions = [{type: 'some awesome car  '}]
  end

  def to_json(*args)
    {
        'json_class' => self.class.name,
        'need' => SOLUTION,
        'solutions' => @solutions
    }.to_json
  end


end
