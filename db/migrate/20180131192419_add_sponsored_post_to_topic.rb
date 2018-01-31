class AddSponsoredPostToTopic < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :sponsored_post_id, :integer
    add_index :topics, :sponsored_post_id
  end
end
