class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :topping
      t.string :pizza

      t.timestamps
    end
  end
end
