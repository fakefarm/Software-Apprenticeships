class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.string :category
      t.string :location, null: false
      t.text :description, null: false
      t.text :inquiry, null: false
      t.string :company, null: false
      t.string :url, null: false
      t.string :email, null: false
      t.text :reason, null: false
      t.boolean :highlight
      
      t.timestamps
    end
  end
end
