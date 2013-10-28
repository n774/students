class CreateEnumviews < ActiveRecord::Migration
  def change
    create_table :enumviews do |t|
      t.enum :gender

      t.timestamps
    end
  end
end
