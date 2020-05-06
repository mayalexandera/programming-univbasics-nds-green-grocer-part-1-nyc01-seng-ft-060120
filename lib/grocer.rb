def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] === name.upcase
      return item
    end
  end
  nil
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item|
    if consolidated_cart.include?(item)
      item[:count] += 1
    else
      consolidated_cart << item
      item[:count] = 1
    end
    consolidated_cart
  end

end

# ```rb
# unconsolidated_cart = [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "AVOCADO", :price => 3.00, :clearance => true },
#   {:item => "KALE", :price => 3.00, :clearance => false}
# ]
# ```

# If we passed this into `consolidate_cart`:

# ```rb
# consolidate_cart(unconsolidated_cart)
# ```

# We should expect the following in return:

# ```rb
# [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2},
#   {:item => "KALE", :price => 3.00, :clearance => false, :count => 1}
# ]
# ```

# Notice that instead of listing the Avocado hash twice, we now have a single hash
# for Avocado with a `:count` set to `2`. Since we only had one Kale hash, it has
# a `:count` set to `1`.

# **Hint:** The `find_item_by_name_in_collection` can be used to check if items
# exist in any array of hashes, whether it be a 'grocery shelf' or the _cart_ your
# are in the process of consolidating.


  