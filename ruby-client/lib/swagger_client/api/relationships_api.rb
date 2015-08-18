require "uri"

module SwaggerClient
  class RelationshipsApi

    # 
    # List the users who have requested this user&#39;s permission to follow.\n
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.users_self_requested_by_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RelationshipsApi#users_self_requested_by_get ..."
      end
      
      # resource path
      path = "/users/self/requested-by".sub('{format}','json')

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
        Swagger.logger.debug "API called: RelationshipsApi#users_self_requested_by_get"
      end
      nil
    end

    # 
    # Get the list of users this user is followed by.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.users_user_id_followed_by_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RelationshipsApi#users_user_id_followed_by_get ..."
      end
      
      # resource path
      path = "/users/{user-id}/followed-by".sub('{format}','json')

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
        Swagger.logger.debug "API called: RelationshipsApi#users_user_id_followed_by_get"
      end
      nil
    end

    # 
    # Get the list of users this user follows.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.users_user_id_follows_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RelationshipsApi#users_user_id_follows_get ..."
      end
      
      # resource path
      path = "/users/{user-id}/follows".sub('{format}','json')

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
        Swagger.logger.debug "API called: RelationshipsApi#users_user_id_follows_get"
      end
      nil
    end

    # 
    # Modify the relationship between the current user and thetarget user.\n
    # @param [Hash] opts the optional parameters
    # @option opts [String] :action One of follow/unfollow/block/unblock/approve/ignore.
    # @return [nil]
    def self.users_user_id_relationship_post(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RelationshipsApi#users_user_id_relationship_post ..."
      end
      
      # resource path
      path = "/users/{user-id}/relationship".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(opts[:'action'])
      

      auth_names = ['oauth']
      Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RelationshipsApi#users_user_id_relationship_post"
      end
      nil
    end
  end
end
