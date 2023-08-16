class CreateUserAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_accounts do |t|
      t.references :user_types, null:false, foreign_key: true
      t.string :email, null: false
      t.string :password_digest, null: false
      t.date :data_of_birth, null: false
      t.string :gender, limit: 1, null: false
      t.boolean :is_active, default: 1
      t.string :contact_number, null: false
      t.boolean :sms_notification_active
      t.boolean :email_notification_active
      t.string :user_image

      t.timestamps
    end
  end
end
