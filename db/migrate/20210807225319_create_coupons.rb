class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :title
      t.decimal :discount
      t.integer :percent
      t.boolean :status
      t.uuid :code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
