require "uri"

module SwaggerClient
  class CommentsApi

    # 
    # Get a list of recent comments on a media object.\n
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.media_media_id_comments_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CommentsApi#media_media_id_comments_get ..."
      end
      
      # resource path
      path = "/media/{media-id}/comments".sub('{format}','json')

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
        Swagger.logger.debug "API called: CommentsApi#media_media_id_comments_get"
      end
      nil
    end

    # 
    # Create a comment on a media object with the following rules:\n\n* The total length of the comment cannot exceed 300 characters.\n* The comment cannot contain more than 4 hashtags.\n* The comment cannot contain more than 1 URL.\n* The comment cannot consist of all capital letters.\n
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :text Text to post as a comment on the media object as specified in\nmedia-id.\n
    # @return [Object]
    def self.media_media_id_comments_post(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CommentsApi#media_media_id_comments_post ..."
      end
      
      # resource path
      path = "/media/{media-id}/comments".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(opts[:'text'])
      

      auth_names = ['oauth']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CommentsApi#media_media_id_comments_post. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Remove a comment either on the authenticated user&#39;s media object or\nauthored by the authenticated user.\n
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.media_media_id_comments_delete(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CommentsApi#media_media_id_comments_delete ..."
      end
      
      # resource path
      path = "/media/{media-id}/comments".sub('{format}','json')

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
      response = Swagger::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CommentsApi#media_media_id_comments_delete. Result: #{result.inspect}"
      end
      result
    end
  end
end
