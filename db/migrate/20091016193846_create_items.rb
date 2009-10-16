class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :done, :limit => 1, :default => 0
      t.integer :priority, :limit => 1, :default => 3
      t.string :description
      t.date :due_date
      t.integer :category_id
      t.integer :note_id
      t.integer :private, :limit => 1, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end

