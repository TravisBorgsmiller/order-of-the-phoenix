class Member

  attr_reader :name, :house, :role, :patronus

  def initialize(name, role, house, patronus = 'false')
    @name = name
    @role = role
    @house = house
    @patronus = patronus
  end



end
