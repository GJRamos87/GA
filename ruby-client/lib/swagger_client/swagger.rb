module SwaggerClient
  module Swagger
    class << self
      attr_accessor :logger

      # A Swagger configuration object. Must act like a hash and return sensible
      # values for all Swagger configuration options. See Swagger::Configuration.
      attr_accessor :configuration

      attr_accessor :resources

      # Call this method to modify defaults in your initializers.
      #
      # @example
      #   Swagger.configure do |config|
      #     config.api_key['api_key'] = '1234567890abcdef'     # api key authentication
      #     config.username = 'wordlover'           # http basic authentication
      #     config.password = 'i<3words'            # http basic authentication
      #     config.format = 'json'                  # optional, defaults to 'json'
      #   end
      #
      def configure
        yield(configuration) if block_given?

        self.logger = configuration.logger

        # remove :// from scheme
        configuration.scheme.sub!(/:\/\//, '')

        # remove http(s):// and anything after a slash
        configuration.host.sub!(/https?:\/\//, '')
        configuration.host = configuration.host.split('/').first

        # Add leading and trailing slashes to base_path
        configuration.base_path = "/#{configuration.base_path}".gsub(/\/+/, '/')
        configuration.base_path = "" if configuration.base_path == "/"
      end

      def authenticated?
        !Swagger.configuration.auth_token.nil?
      end

      def de_authenticate
        Swagger.configuration.auth_token = nil
      end

      def authenticate
        return if Swagger.authenticated?

        if Swagger.configuration.username.nil? || Swagger.configuration.password.nil?
          raise ApiError, "Username and password are required to authenticate."
        end

        request = Swagger::Request.new(
          :get,
          "account/authenticate/{username}",
          :params => {
            :username => Swagger.configuration.username,
            :password => Swagger.configuration.password
          }
        )

        response_body = request.response.body
        Swagger.configuration.auth_token = response_body['token']
      end

      def last_response
        Thread.current[:swagger_last_response]
      end

      def last_response=(response)
        Thread.current[:swagger_last_response] = response
      end
    end
  end
end
