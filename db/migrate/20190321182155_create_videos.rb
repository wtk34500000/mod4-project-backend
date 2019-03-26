class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :title
      t.string :description
      t.string :creater_name
      t.string :img_url

      t.timestamps
    end
  end
end
