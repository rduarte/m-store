class AddPriorityToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :priority, :integer
  end

  def self.down
    remove_column :pages, :priority
  end
end
