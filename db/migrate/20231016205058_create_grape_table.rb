class CreateGrapeTable < ActiveRecord::Migration[7.0]
  def change
    create_table :grapes do |t|
        t.string :html_template
        t.string :json_template
        t.string :css
      t.timestamps
    end
  end
end
