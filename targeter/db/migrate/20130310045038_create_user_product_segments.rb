class CreateUserProductSegments < ActiveRecord::Migration
  def change
    create_table :user_product_segments do |t|

      t.timestamps
    end
  end
end
