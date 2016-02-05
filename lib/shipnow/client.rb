module Shipnow

  # Orders (CRU)
  # Products (CRU)
  # Stores (CRU)
  # Shipments (CRU)
  # /tracking (R)
  # /shipping_services (R)

  class Client

    def initialize(token:)
      auth = { Authorization: "Token token=#{token}" }
      @api = Blanket.wrap(SHIPNOW, headers: auth)
    end

    def order(n)
      Order.new(get('orders', n), @api)
    end

    def orders(n)
      get('orders', n).map { |o| Order.new(o, @api) }
    end

    def product(n)
      Product.new(get('products', n), @api)
    end

    def products(n)
      get('products', n).map { |o| Product.new(o, @api) }
    end

    def store(n)
      Store.new(get('stores', n), @api)
    end

    def stores(n)
      get('stores', n).map { |o| Store.new(o, @api) }
    end

    def shipment(n)
      Shipment.new(get('shipments', n), @api)
    end

    def shipments(n)
      get('shipments', n).map { |o| Shipment.new(o, @api) }
    end

    private

    def get(resource, n)
      resources_ids = Array(n).join(',')
      @api.send(resource + '/' + resources_ids).get.payload
    end

    def post(resource, resource_id, params)
      json_body = params.to_json
      @api.send(resource + '/' + resources_ids).post(body: json_body)
    end

  end

end
