class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.string :longurl
      t.string :shorturl
      t.timestamps
    end
  end
end
