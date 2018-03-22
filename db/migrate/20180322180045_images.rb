class Images < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :file
      t.string :image_type
      t.integer :imageable_id
      t.string :imageable_type
      t.string :remote_filename
      t.string :remote_filesize
      t.string :remote_url

      t.timestamps
    end
  end
end
