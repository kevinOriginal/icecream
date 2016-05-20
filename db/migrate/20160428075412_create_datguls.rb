class CreateDatguls < ActiveRecord::Migration
  def change
    create_table :datguls do |t|

    t.text :content
    t.integer :post_id
    




      t.timestamps null: false
    end
  end
end
