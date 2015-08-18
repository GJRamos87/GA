module SwaggerClient
  # 
  class User < BaseObject
    attr_accessor :id, :username, :full_name, :profile_picture, :bio, :website, :counts
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'username' => :'username',
        
        # 
        :'full_name' => :'full_name',
        
        # 
        :'profile_picture' => :'profile_picture',
        
        # 
        :'bio' => :'bio',
        
        # 
        :'website' => :'website',
        
        # 
        :'counts' => :'counts'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'username' => :'String',
        :'full_name' => :'String',
        :'profile_picture' => :'String',
        :'bio' => :'String',
        :'website' => :'String',
        :'counts' => :'Object'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'username']
        self.username = attributes[:'username']
      end
      
      if attributes[:'full_name']
        self.full_name = attributes[:'full_name']
      end
      
      if attributes[:'profile_picture']
        self.profile_picture = attributes[:'profile_picture']
      end
      
      if attributes[:'bio']
        self.bio = attributes[:'bio']
      end
      
      if attributes[:'website']
        self.website = attributes[:'website']
      end
      
      if attributes[:'counts']
        self.counts = attributes[:'counts']
      end
      
    end

  end
end
