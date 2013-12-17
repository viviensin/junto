class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :question
      t.text :description
      t.integer :groupsize
      t.datetime :starttime
      t.time :length
      t.string :picture
      t.integer :groupsize

      t.timestamps
    end
  end
end
