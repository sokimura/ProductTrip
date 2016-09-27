class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string   :name
      t.text      :text
      t.text      :site_url
      t.text      :image_url
      t.integer   :category_id

      t.timestamps
    end
  end
end
