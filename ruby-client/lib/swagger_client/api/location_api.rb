require "uri"

module SwaggerClient
  class LocationApi

    # 
    # Search for a location by geographic coordinate.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :distance Default is 1000m (distance=1000), max distance is 5000.
    # @option opts [Integer] :facebook_places_id Returns a location mapped off of a Facebook places id. If used, a\nFoursquare id and lat, lng are not required.\n
    # @option opts [Integer] :foursquare_id returns a location mapped off of a foursquare v1 api location id.\nIf used, you are not required to use lat and lng. Note that this\nmethod is deprecated; you should use the new foursquare IDs with V2\nof their API.\n
    # @option opts [Float] :lat atitude of the center search coordinate. If used, lng is required.\n
    # @option opts [Float] :lng ongitude of the center search coordinate. If used, lat is required.\n
    # @option opts [Integer] :foursquare_v2_id Returns a location mapped off of a foursquare v2 api location id. If\nused, you are not required to use lat and lng.\n
    # @return [Object]
    def self.locations_search_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LocationApi#locations_search_get ..."
      end
      
      # resource path
      path = "/locations/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'distance'] = opts[:'distance'] if opts[:'distance']
      query_params[:'facebook_places_id'] = opts[:'facebook_places_id'] if opts[:'facebook_places_id']
      query_params[:'foursquare_id'] = opts[:'foursquare_id'] if opts[:'foursquare_id']
      query_params[:'lat'] = opts[:'lat'] if opts[:'lat']
      query_params[:'lng'] = opts[:'lng'] if opts[:'lng']
      query_params[:'foursquare_v2_id'] = opts[:'foursquare_v2_id'] if opts[:'foursquare_v2_id']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: LocationApi#locations_search_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get information about a location.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.locations_location_id_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LocationApi#locations_location_id_get ..."
      end
      
      # resource path
      path = "/locations/{location-id}".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: LocationApi#locations_location_id_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get a list of recent media objects from a given location.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_timestamp Return media before this UNIX timestamp.
    # @option opts [Integer] :min_timestamp Return media after this UNIX timestamp.
    # @option opts [String] :min_id Return media later than this min_id.
    # @option opts [String] :max_id Return media earlier than this max_id.
    # @return [Object]
    def self.locations_location_id_media_recent_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LocationApi#locations_location_id_media_recent_get ..."
      end
      
      # resource path
      path = "/locations/{location-id}/media/recent".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if opts[:'max_timestamp']
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if opts[:'min_timestamp']
      query_params[:'min_id'] = opts[:'min_id'] if opts[:'min_id']
      query_params[:'max_id'] = opts[:'max_id'] if opts[:'max_id']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: LocationApi#locations_location_id_media_recent_get. Result: #{result.inspect}"
      end
      result
    end
  end
end
