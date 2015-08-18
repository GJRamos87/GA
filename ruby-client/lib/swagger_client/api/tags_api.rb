require "uri"

module SwaggerClient
  class TagsApi

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q A valid tag name without a leading #. (eg. snowy, nofilter)\n
    # @return [Object]
    def self.tags_search_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: TagsApi#tags_search_get ..."
      end
      
      # resource path
      path = "/tags/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if opts[:'q']

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
        Swagger.logger.debug "API called: TagsApi#tags_search_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get information about a tag object.
    # @param [Hash] opts the optional parameters
    # @return [Tag]
    def self.tags_tag_name_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: TagsApi#tags_tag_name_get ..."
      end
      
      # resource path
      path = "/tags/{tag-name}".sub('{format}','json')

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
      result = response.deserialize('Tag')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: TagsApi#tags_tag_name_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get a list of recently tagged media. Use the `max_tag_id` and\n`min_tag_id` parameters in the pagination response to paginate through\nthese objects.\n
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.tags_tag_name_media_recent_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: TagsApi#tags_tag_name_media_recent_get ..."
      end
      
      # resource path
      path = "/tags/{tag-name}/media/recent".sub('{format}','json')

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
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: TagsApi#tags_tag_name_media_recent_get"
      end
      nil
    end
  end
end
