require "uri"

module SwaggerClient
  class MediaApi

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
        Swagger.logger.debug "Calling API: MediaApi#locations_location_id_media_recent_get ..."
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
        Swagger.logger.debug "API called: MediaApi#locations_location_id_media_recent_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get a list of what media is most popular at the moment.\nCan return mix of image and video types.\n
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def self.media_popular_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media_popular_get ..."
      end
      
      # resource path
      path = "/media/popular".sub('{format}','json')

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
        Swagger.logger.debug "API called: MediaApi#media_popular_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Search for media in a given area. The default time span is set to 5\ndays. The time span must not exceed 7 days. Defaults time stamps cover\nthe last 5 days. Can return mix of image and video types.\n
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :lat Latitude of the center search coordinate. If used, lng is required.\n
    # @option opts [Integer] :min_timestamp A unix timestamp. All media returned will be taken later than\nthis timestamp.\n
    # @option opts [Float] :lng Longitude of the center search coordinate. If used, lat is required.\n
    # @option opts [Integer] :max_timestamp A unix timestamp. All media returned will be taken earlier than this\ntimestamp.\n
    # @option opts [Integer] :distance Default is 1km (distance=1000), max distance is 5km.
    # @return [Object]
    def self.media_search_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media_search_get ..."
      end
      
      # resource path
      path = "/media/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'LAT'] = opts[:'lat'] if opts[:'lat']
      query_params[:'MIN_TIMESTAMP'] = opts[:'min_timestamp'] if opts[:'min_timestamp']
      query_params[:'LNG'] = opts[:'lng'] if opts[:'lng']
      query_params[:'MAX_TIMESTAMP'] = opts[:'max_timestamp'] if opts[:'max_timestamp']
      query_params[:'DISTANCE'] = opts[:'distance'] if opts[:'distance']

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
        Swagger.logger.debug "API called: MediaApi#media_search_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get information about a media object.\nThe returned type key will allow you to differentiate between `image`\nand `video` media.\n\nNote: if you authenticate with an OAuth Token, you will receive the\n`user_has_liked` key which quickly tells you whether the current user\nhas liked this media item.\n
    # @param [Hash] opts the optional parameters
    # @return [Media]
    def self.media_media_id_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media_media_id_get ..."
      end
      
      # resource path
      path = "/media/{media-id}".sub('{format}','json')

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
      result = response.deserialize('Media')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: MediaApi#media_media_id_get. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Create a comment on a media object with the following rules:\n\n* The total length of the comment cannot exceed 300 characters.\n* The comment cannot contain more than 4 hashtags.\n* The comment cannot contain more than 1 URL.\n* The comment cannot consist of all capital letters.\n
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :text Text to post as a comment on the media object as specified in\nmedia-id.\n
    # @return [Object]
    def self.media_media_id_comments_post(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media_media_id_comments_post ..."
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
        Swagger.logger.debug "API called: MediaApi#media_media_id_comments_post. Result: #{result.inspect}"
      end
      result
    end

    # 
    # Get a list of users who have liked this media.\n
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.media_media_id_likes_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media_media_id_likes_get ..."
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
        Swagger.logger.debug "API called: MediaApi#media_media_id_likes_get"
      end
      nil
    end

    # 
    # This endpoint returns the same response as **GET** `/media/media-id`.\n\nA media object&#39;s shortcode can be found in its shortlink URL.\nAn example shortlink is `http://instagram.com/p/D/`\nIts corresponding shortcode is D.\n
    # @param [Hash] opts the optional parameters
    # @return [Media]
    def self.media1_shortcode_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: MediaApi#media1_shortcode_get ..."
      end
      
      # resource path
      path = "/media1/{shortcode}".sub('{format}','json')

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
      result = response.deserialize('Media')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: MediaApi#media1_shortcode_get. Result: #{result.inspect}"
      end
      result
    end
  end
end
