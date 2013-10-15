class Service < ActiveRecord::Base

  def self.text_search(query)
    where("title @@ :q or description @@ :q", q: query) if query.present?
  end

end
