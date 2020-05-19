class HpService


  # def get_members(house)
  #   params = { house: house, orderOfThePhoenix: true }
  #
  #   get_json('/characters', params)
  # end

  # private

  # def get_json(url, params)
  #   response = conn.get(url, params)
  #   JSON.parse(response.body, symbolize_names: true)
  # end

  def get_object(house)
    response = get_members(house)
    members = []
    response.each do |member|
      if member[:patronus]
        members << Member.new(member[:name], member[:role], member[:house], member[:patronus])
      else
        members << Member.new(member[:name], member[:role], member[:house])
      end
    end
    members
  end

  def get_members(house)
    response = Faraday.get('https://www.potterapi.com/v1/characters') do |f|
      f.params[:key] = ENV['HP_API_KEY']
      f.params[:house] = house
      f.params[:orderOfThePhoenix] = true
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
