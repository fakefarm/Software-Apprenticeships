class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :location
      t.text :description
      t.text :inquiry
      t.string :company
      t.string :url
      t.string :email
      t.text :reason
      t.boolean :highlight
      
      t.timestamps
    end
  end
end
