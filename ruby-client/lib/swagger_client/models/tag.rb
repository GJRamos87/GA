module SwaggerClient
  # 
  class Tag < BaseObject
    attr_accessor :media_count, :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'media_count' => :'media_count',
        
        # 
        :'name' => :'name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'media_count' => :'Integer',
        :'name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'media_count']
        self.media_count = attributes[:'media_count']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
    end

  end
end
