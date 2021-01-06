# README

Categories tree with products.

The Category tree implemented with nested set model technique.

Relation of one to many between category and product.

# Demo at Heroku
https://secure-stream-01212.herokuapp.com/products

Optional params: 

1. by_category_id[Number]: category id for filter.

2. sort[asc/desc]: sort product by name(asc:A-Z, desc: Z-A).

3. page[Number]: each page include 5 items.

# Ruby version
ruby '3.0.0'

rails '6.1'

# System dependencies

postgres

# Configuration

bundle install

# Database creation

rake db:create

# Database initialization

rake db:seed

# Complexity

## Time: 

    getCategoriesList: O(log(n))
    
    fetchRelatedProducts: O(log(n))
    
    Total: O(log(n)) + O(log(n)) = O(log(n))
    
## Space:

    categoriesList: O(n) - table
    
    categoryLeftIndex: O(n) - tree
    
    productList: O(n) - table
    
    Total: O(n) + O(n) + O(n) = O(n)
