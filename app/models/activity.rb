class Activity < ActiveRecord::Base
  translates :title, :description
  
  def self.text_search(query)
    where("title @@ :q or description @@ :q", q: query) if query.present?
  end

end
