class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :house_number, :house_type, :phone_number, :id_number, :occupation, :rent, :next_of_kin_name, :next_of_kin_phone, :password_digest
end
