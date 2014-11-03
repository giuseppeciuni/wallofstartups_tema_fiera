class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :title
      t.text :description
      t.text :video_url
      t.integer :rank

      t.timestamps
    end
  end
end
