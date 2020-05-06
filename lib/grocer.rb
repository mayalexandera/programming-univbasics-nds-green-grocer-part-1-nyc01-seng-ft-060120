def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] === name.upcase
      return item
    end
  end
  return 'item was not found'
end

# ## `find_item_by_name_in_collection`

# The first method, `find_item_by_name_in_collection`, simulates the act of adding
# items to your shopping cart. Again, if we think of grocery items as having
# _attributes_ like a Hash, a shelf in a grocery store might contain a collection
# of various items. We could represent this as an `Array` of `Hash`es:

# ```rb
# grocery_shelf = [
#   { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
#   { :item => "CANNED CORN", :price => 2.50, :clearance => false },
#   { :item => "SALSA", :price => 1.50, :clearance => false },
#   { :item => "TORTILLAS", :price => 2.00, :clearance => false },
#   { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
# ]
# ```

# `find_item_by_name_in_collection` should be able to take the string name of a
# particular item and a collection of items like we have above. It should then
# iterate over the collection and check the value of `:item` in each nested hash.
# If a match is found, the method should return that entire hash. For instance, if
# we ran:

# ```rb
# find_item_by_name_in_collection("CANNED CORN", grocery_shelf)
# ```

# We would expect the following in return:

# ```rb
# { :item => "CANNED CORN", :price => 2.50, :clearance => false}
# ```

# If an item is _not_ found, `find_item_by_name_in_collection` should return `nil`.

# ```rb
# find_item_by_name_in_collection("CHOLULA", grocery_shelf)
# # => nil
# ```

# Get this method passing before moving on - the later tests use this method to
# build example carts for testing.
def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end


  