module SwaggerClient
  # 
  class Image < BaseObject
    attr_accessor :width, :height, :url
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'width' => :'width',
        
        # 
        :'height' => :'height',
        
        # 
        :'url' => :'url'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'url' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'width']
        self.width = attributes[:'width']
      end
      
      if attributes[:'height']
        self.height = attributes[:'height']
      end
      
      if attributes[:'url']
        self.url = attributes[:'url']
      end
      
    end

  end
end
