require_relative './item'

class Inventory

  def self.all
    [
      Item.new(id: 1,
               category: "Tent",
               name: "1-person Tent",
               price: 119.99,
               description: "It's a very small tent."
              ),
      Item.new(id: 2,
               category: "Tent",
               name: "2-person Tent",
               price: 169.99,
               description: "Just right for 2 people."
              ),
      Item.new(id: 3,
               category: "Tent",
               name: "3-person Tent",
               price: 249.99,
               description: "3 is a crowd!"
              ),
      Item.new(id: 4,
               category: "Tent",
               name: "4-person Tent",
               price: 319.99,
               description: "Fit for a family."
              ),
      Item.new(id: 5,
               category: "Flashlight",
               name: "Small Flashlight",
               price:   6.99,
               description: "A very small flashlight." ),
      Item.new(id: 6,
               category: "Flashlight",
               name: "Large Flashlight",
               price:  12.99,
               description: "A big, powerful flashlight." ),
      Item.new(id: 7,
               category: "Water Bottle",
               name: "Small Water Bottle",
               price:   2.99,
               description: "Holds 16 ounces." ),
      Item.new(id: 8,
               category: "Water Bottle",
               name: "Large Water Bottle",
               price:   2.99,
               description: "Holds 64 ounces." ),
      Item.new(id: 9,
               category: "Stove",
               name: "Small Stove",
               price:  29.99,
               description: "Has 2 burners." ),
      Item.new(id: 10,
               category: "Stove",
               name: "Large Stove",
               price:  39.99,
               description: "Has 4 burners." ),
      Item.new(id: 11,
               category: "Sleeping Bag",
               name: "Simple Sleeping Bag",
               price:  49.99,
               description: "A simple mummy bag." ),
      Item.new(id: 12,
               category: "Sleeping Bag",
               name: "Deluxe Sleeping Bag",
               price:  79.99,
               description: "Will keep you warm in very cold weather!" )
    ]
  end

  def self.find(id)
    self.all.find do |item|
      item.id == id
    end
  end

  def self.search(pattern)
    all.select do |item|
      item.category.downcase.include?(pattern.downcase) ||
      item.name.downcase.include?(pattern.downcase) ||
      item.description.downcase.include?(pattern.downcase)
  end
  end
end

















