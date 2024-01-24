class HouseSerializer < ActiveModel::Serializer
  attributes :id,:house_type, :floor, :price, :house_number, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :has_kitchen, :has_bathroom, :has_wifi, :has_bedroom, :vacant
end
