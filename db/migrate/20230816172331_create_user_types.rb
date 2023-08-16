class CreateUserTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_types do |t|
      t.string :account_type, limit: 20

    end
  end
end
