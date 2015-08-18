require "uri"

module SwaggerClient
  class UsersApi

    # 
    # Search for a user by name.
    # @param q A query string
    # @param [Hash] opts the optional parameters
    # @option opts [String] :count Number of users to return.
    # @return [Object]
    def self.users_search_get(q, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UsersApi#users_search_get ..."
      end
      
      # verify the required parameter 'q' is set
      fail "Missing the required parameter 'q' when calling users_search_get" if q.nil?
      
      # resource path
      path = "/users/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q'] = q
      query_params[:'count'] = opts[:'count'] if opts[:'count']

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
        Swagger.logger.debug "API called: UsersApi#users_search_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # See the authenticated user&#39;s feed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Count of media to return.
    # @option opts [Integer] :max_id Return media earlier than this max_id.s
    # @option opts [Integer] :min_id Return media later than this min_id.
    # @return [Object]
    def self.users_self_feed_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UsersApi#users_self_feed_get ..."
      end
      
      # resource path
      path = "/users/self/feed".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if opts[:'count']
      query_params[:'max_id'] = opts[:'max_id'] if opts[:'max_id']
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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: UsersApi#users_self_feed_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # See the list of media liked by the authenticated user.\nPrivate media is returned as long as the authenticated user\nhas permissionto view that media. Liked media lists are only\navailable for the currently authenticated user.\n
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Count of media to return.
    # @option opts [Integer] :max_like_id Return media liked before this id.
    # @return [Object]
    def self.users_self_media_liked_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UsersApi#users_self_media_liked_get ..."
      end
      
      # resource path
      path = "/users/self/media/liked".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if opts[:'count']
      query_params[:'max_like_id'] = opts[:'max_like_id'] if opts[:'max_like_id']

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
        Swagger.logger.debug "API called: UsersApi#users_self_media_liked_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get basic information about a user.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.users_user_id_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UsersApi#users_user_id_get ..."
      end
      
      # resource path
      path = "/users/{user-id}".sub('{format}','json')

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
      

      auth_names = ['oauth', 'key']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Object')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: UsersApi#users_user_id_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Count of media to return.
    # @option opts [Integer] :max_timestamp Return media before this UNIX timestamp.
    # @option opts [Integer] :min_timestamp Return media after this UNIX timestamp.
    # @option opts [String] :min_id Return media later than this min_id.
    # @option opts [String] :max_id Return media earlier than this max_id.
    # @return [Object]
    def self.users_user_id_media_recent_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UsersApi#users_user_id_media_recent_get ..."
      end
      
      # resource path
      path = "/users/{user-id}/media/recent".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if opts[:'count']
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
        Swagger.logger.debug "API called: UsersApi#users_user_id_media_recent_get. Result: #{result.inspect}"
      end
      result
    end
  end
end
