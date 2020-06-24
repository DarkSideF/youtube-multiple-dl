class AddProgressColumn < ActiveRecord::Migration[4.2]

  def up
    add_column :delayed_jobs, :progress_info, :string, :null => true
  end

  def down
    remove_column :delayed_jobs, :progress_info
  end

end
