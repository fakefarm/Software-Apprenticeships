class RemoveColumnFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :category 
    remove_column :jobs, :highlight 
  end
end
