# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Cart.delete_all
Order.delete_all

Product.create(:rus_title => "Розы", :description => "Все про розы в клубе любителей дачи. Виды роз, сорта, тонкости выращивания и ухода, практические советы дачников.", :price => 1460, :image_url => "the-b-day-winner-collection_feature-winnie-bday-feature.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")
Product.create(:rus_title => "Тюльпаны", :description => "Цветы тюльпаны – выращивание. Виды и сорта тюльпанов. Посадка тюльпанов в грунт – когда сажать тюльпаны: посадка тюльпанов.", :price => 2950, :image_url => "the-isabella-collection_feature-featured-image-isabelle.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")
Product.create(:rus_title => "Ромашки", :description => "Ромашка аптечная помогает справиться с простудой, насморком, ангиной, сердечными заболеваниями, заболеваниями пищеварительной системы.", :price => 3100, :image_url => "the-noelle-collection_feature-bloomthat-noelle-feature.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")
Product.create(:rus_title => "Петуньи", :description => "Что то рановато с петунией. Чтобы не падала не снимайте пленку, как только взошла (пленкой накрываете всходы после посева.", :price => 1460, :image_url => "the-merri-collection_feature-featured-image-merri.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")
Product.create(:rus_title => "Одуванчики", :description => "Как уже известно, одуванчик лекарственный – растение целебное и очень полезное. От большого количества недугов и заболеваний уже давно.", :price => 990, :image_url => "the-winnie-collection_feature-bloomthat-winnie-alt-feature.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")
Product.create(:rus_title => "подснежник", :description => "Подснежник лесной издавна является символом весны, чистоты, молодости и свежести, а также говорит о том, что нужно радоваться как настоящему.", :price => 6430, :image_url => "the-winter-warm-up-collection_feature-bloomthat-holly-premiumcandle-feature.jpg", :image_url_cart => "the-in-it-to-win-it-full-bloomthat-biggirl-bento-minispa-large.jpg", :image_url_cart_small => "for_the_cart_test.png")