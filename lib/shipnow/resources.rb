require_relative 'resource'

module Shipnow
  Order = Class.new(Resource)
  Product = Class.new(Resource)
  Store = Class.new(Resource)
  Shipment = Class.new(Resource)
end
