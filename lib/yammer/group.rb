class Yammer::Group

  attr_reader :privacy, :web_url, :updates_count, :members_count,
              :mugshot_url, :url, :description, :full_name, :name, :id, :created_at
              
  def self.find_by_name(name, client)
    response = client.search(name).groups.select {|t| t.name == name }.first
    Yammer::Group.new(response) unless response.nil?
  end

  def initialize(m)
    @privacy = m['privacy']
    @web_url = m['web_url']
    @updates_count = m['stats']['updates']
    @members_count = m['stats']['members']
    @mugshot_url = m['mugshot_url']
    @url = m['url']
    @description = m['description']
    @full_name = m['full_name']
    @name = m['name']
    @id = m['id']
    @created_at = m['created_at']
  end
end