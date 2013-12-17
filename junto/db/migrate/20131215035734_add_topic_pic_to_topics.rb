class AddTopicPicToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :topic_pic, :string
  end
end
