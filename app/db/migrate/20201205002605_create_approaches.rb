class CreateApproaches < ActiveRecord::Migration[5.0]
  def change
    create_table :approaches do |t|
      t.string :text

      t.timestamps
    end
  end
end
