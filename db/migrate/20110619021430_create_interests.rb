class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :ip

      t.timestamps
    end
  end
end
