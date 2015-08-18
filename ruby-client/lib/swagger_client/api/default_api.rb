require "uri"

module SwaggerClient
  class DefaultApi

    # 
    # Get recent media from a geography subscription that you created.\n**Note**: You can only access Geographies that were explicitly created\nby your OAuth client. Check the Geography Subscriptions section of the\n[real-time updates page](https://instagram.com/developer/realtime/).\nWhen you create a subscription to some geography\nthat you define, you will be returned a unique geo-id that can be used\nin this query. To backfill photos from the location covered by this\ngeography, use the [media search endpoint\n](https://instagram.com/developer/endpoints/media/).\n
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Max number of media to return.
    # @option opts [Integer] :min_id Return media before this `min_id`.
    # @return [nil]
    def self.geographies_geo_id_media_recent_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: DefaultApi#geographies_geo_id_media_recent_get ..."
      end
      
      # resource path
      path = "/geographies/{geo-id}/media/recent".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if opts[:'count']
      query_params[:'min_id'] = opts[:'min_id'] if opts[:'min_id']

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
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: DefaultApi#geographies_geo_id_media_recent_get"
      end
      nil
    end
  end
end
