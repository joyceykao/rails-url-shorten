class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :url
      t.string :short

      t.timestamps
    end
  end
end
