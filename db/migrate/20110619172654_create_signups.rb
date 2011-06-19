class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :ip

      t.timestamps
    end
  end
end
