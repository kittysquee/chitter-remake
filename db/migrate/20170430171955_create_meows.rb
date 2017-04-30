class CreateMeows < ActiveRecord::Migration[5.1]
  def change
    create_table :meows do |t|
      t.text :message

      t.timestamps
    end
  end
end
