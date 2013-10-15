class Article < ActiveRecord::Base
  validates :title, :description, presence: true

  def self.text_search(query)
    if query.present?
      where("title @@ :q or description @@ :q", q: query)
    else
      scoped
    end
  end
  
end
