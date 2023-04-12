class AddDescriptionTempleteToVideos < ActiveRecord::Migration[7.0]
  def change
    add_reference :videos, :description_template, null: false, foreign_key: true
  end
end
