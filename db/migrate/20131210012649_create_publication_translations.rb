class CreatePublicationTranslations < ActiveRecord::Migration
  def self.up
    Publication.create_translation_table!({
      :title => :string,
      :description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Publication.drop_translation_table! :migrate_data => true
  end
end
