# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create!([
  {name: "テスト麺1", company: "テスト社1", date: "2015-12-17 00:00:00", description: "テストです1", large_category: "醤油", small_category: "普通", remaining_count: 10, price: "120.0", image_url: "test.jpg"},
  {name: "テスト麺2", company: "テスト社2", date: "2015-12-17 00:00:00", description: "テストです2", large_category: "焼きそば", small_category: "普通", remaining_count: 100, price: "1100.0", image_url: "test2.jpg"},
  {name: "テスト麺3", company: "テスト社3", date: "2015-12-17 00:00:00", description: "テストです3", large_category: "うどん", small_category: "太麺", remaining_count: 130, price: "60.0", image_url: "test3.jpg"}
])