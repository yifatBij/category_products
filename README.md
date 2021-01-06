# README

Categories tree with products.
The Category tree implemented with nested set model technique.
Relation of one to many between category and product

# Demo at Heroku
https://secure-stream-01212.herokuapp.com/products

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
