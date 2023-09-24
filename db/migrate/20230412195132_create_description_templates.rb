class CreateDescriptionTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :description_templates do |t|
      t.text :template, null: false

      t.timestamps
    end
  end
end
