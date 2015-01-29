class Item

  attr_reader :id, :category, :name, :price, :description

  def initialize(args)
    @id          = args[:id]
    @category    = args[:category]
    @name        = args[:name]
    @price       = args[:price]
    @description = args[:description]
  end

  def to_s
    "ID: #{@id}, Category: #{@category}, Name: #{@name}, Price: #{@price}, Description: #{@description}"
  end
end
