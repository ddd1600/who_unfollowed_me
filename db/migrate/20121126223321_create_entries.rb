class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.text :followers_ary
      t.text :recently_unfollowed

      t.timestamps
    end
  end
end
