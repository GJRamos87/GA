module SwaggerClient
  # 
  class MiniProfile < BaseObject
    attr_accessor :user_name, :full_name, :id, :profile_picture
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'user_name' => :'user_name',
        
        # 
        :'full_name' => :'full_name',
        
        # 
        :'id' => :'id',
        
        # 
        :'profile_picture' => :'profile_picture'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'user_name' => :'String',
        :'full_name' => :'String',
        :'id' => :'Integer',
        :'profile_picture' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user_name']
        self.user_name = attributes[:'user_name']
      end
      
      if attributes[:'full_name']
        self.full_name = attributes[:'full_name']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'profile_picture']
        self.profile_picture = attributes[:'profile_picture']
      end
      
    end

  end
end
