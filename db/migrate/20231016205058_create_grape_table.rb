class CreateGrapeTable < ActiveRecord::Migration[7.0]
  def change
    create_table :grape_templates do |t|
        t.text   :html_template
        t.string :json_template
        t.string :css
      t.timestamps
    end
  end
end
