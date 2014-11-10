module ActiveAdmin::Mongoid::Document
  module ClassMethods
    def primary_key
      :_id
    end
  end
end
