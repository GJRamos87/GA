require "uri"

module SwaggerClient
  class LikesApi

    # 
    # Get a list of users who have liked this media.\n
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.media_media_id_likes_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LikesApi#media_media_id_likes_get ..."
      end
      
      # resource path
      path = "/media/{media-id}/likes".sub('{format}','json')

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
        Swagger.logger.debug "API called: LikesApi#media_media_id_likes_get"
      end
      nil
    end

    # 
    # Set a like on this media by the currently authenticated user.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.media_media_id_likes_post(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LikesApi#media_media_id_likes_post ..."
      end
      
      # resource path
      path = "/media/{media-id}/likes".sub('{format}','json')

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
      

      auth_names = ['oauth']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: LikesApi#media_media_id_likes_post. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Remove a like on this media by the currently authenticated user.\n
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.media_media_id_likes_delete(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: LikesApi#media_media_id_likes_delete ..."
      end
      
      # resource path
      path = "/media/{media-id}/likes".sub('{format}','json')

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
        Swagger.logger.debug "API called: LikesApi#media_media_id_likes_delete. Result: #{result.inspect}"
      end
      result
    end
  end
end
