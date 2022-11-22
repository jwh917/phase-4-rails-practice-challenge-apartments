class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.string :apartment_id
      t.string :tenant_id
      t.string :rent

      t.timestamps
    end
  end
end
