module SwaggerClient
  # 
  class Location < BaseObject
    attr_accessor :id, :name, :latitude, :longitude
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'name' => :'name',
        
        # 
        :'latitude' => :'latitude',
        
        # 
        :'longitude' => :'longitude'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'latitude' => :'Float',
        :'longitude' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'latitude']
        self.latitude = attributes[:'latitude']
      end
      
      if attributes[:'longitude']
        self.longitude = attributes[:'longitude']
      end
      
    end

  end
end
