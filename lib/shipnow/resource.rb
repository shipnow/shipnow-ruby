module Shipnow

  class Resource

    def initialize(resource_data, api)
      @resource = resource_data
      @api = api
    end

    def update(data)
      @api.send(resource_path + '/' + @resource.id.to_s).put(params: data)
    end

    private

    def resource_path
      self.class.name.split('::').last.downcase + 's'
    end

  end
end
