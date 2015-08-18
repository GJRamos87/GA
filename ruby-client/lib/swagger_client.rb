# Swagger common files
require 'swagger_client/swagger'
require 'swagger_client/swagger/configuration'
require 'swagger_client/swagger/api_error'
require 'swagger_client/swagger/request'
require 'swagger_client/swagger/response'
require 'swagger_client/swagger/version'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/user'
require 'swagger_client/models/media'
require 'swagger_client/models/location'
require 'swagger_client/models/comment'
require 'swagger_client/models/like'
require 'swagger_client/models/tag'
require 'swagger_client/models/image'
require 'swagger_client/models/mini_profile'

# APIs
require 'swagger_client/api/relationships_api'
require 'swagger_client/api/comments_api'
require 'swagger_client/api/media_api'
require 'swagger_client/api/users_api'
require 'swagger_client/api/likes_api'
require 'swagger_client/api/default_api'
require 'swagger_client/api/tags_api'
require 'swagger_client/api/location_api'

module SwaggerClient
  # Initialize the default configuration
  Swagger.configuration = Swagger::Configuration.new
  Swagger.configure { |config| }
end
