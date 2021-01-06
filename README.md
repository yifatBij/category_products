# README

Categories tree with products.
The Category tree implemented with nested set model technique.
Relation of one to many between category and product

Things you may want to cover:

* Ruby version
ruby '3.0.0'
rails '6.1'

* System dependencies
'postgress'
hombrew install pg

* Configuration
bundle install

* Database creation
rake db:create

* Database initialization
rake db:seed

* Complexity
Time: 
    getCategoriesList: O(log(n))
    fetchRelatedProducts: O(log(n))
    Total: O(log(n)) + O(log(n)) = O(log(n))
Space:
    categoriesList: O(n) - table
    categoryLeftIndex: O(n) - tree
    productList: O(n) - table
    Total: O(n) + O(n) + O(n) = O(n)
* How to run the test suite

