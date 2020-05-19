class HpService


  def get_members
    params = { house: 'gryffindor', orderOfThePhoenix: true }

    get_json('/characters', params)
  end

  private

  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1') do |f|
      f.adapter Faraday.default_adapter
      f.params[:key] = ENV['HP_API_KEY']
    end
  end

end
