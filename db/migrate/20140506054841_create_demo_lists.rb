class CreateDemoLists < ActiveRecord::Migration
  def change
    create_table :demo_lists do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
