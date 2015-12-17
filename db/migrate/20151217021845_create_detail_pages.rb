class CreateDetailPages < ActiveRecord::Migration
  def change
    create_table :detail_pages do |t|

      t.timestamps null: false
    end
  end
end
