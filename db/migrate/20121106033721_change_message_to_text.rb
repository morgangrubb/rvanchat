class ChangeMessageToText < ActiveRecord::Migration
  def up
    change_table :messages do |t|
      t.change :message, :text, limit: 8192
    end
  end

  def down
    change_table :messages do |t|
      t.change :message, :string
    end
  end
end