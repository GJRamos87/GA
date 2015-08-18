module SwaggerClient
  # 
  class Like < BaseObject
    attr_accessor :user_name, :first_name, :last_name, :type, :id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'user_name' => :'user_name',
        
        # 
        :'first_name' => :'first_name',
        
        # 
        :'last_name' => :'last_name',
        
        # 
        :'type' => :'type',
        
        # 
        :'id' => :'id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'user_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'type' => :'String',
        :'id' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user_name']
        self.user_name = attributes[:'user_name']
      end
      
      if attributes[:'first_name']
        self.first_name = attributes[:'first_name']
      end
      
      if attributes[:'last_name']
        self.last_name = attributes[:'last_name']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
    end

  end
end
