module SwaggerClient
  # 
  class Comment < BaseObject
    attr_accessor :id, :created_time, :text, :from
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'created_time' => :'created_time',
        
        # 
        :'text' => :'text',
        
        # 
        :'from' => :'from'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'String',
        :'created_time' => :'String',
        :'text' => :'String',
        :'from' => :'MiniProfile'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'created_time']
        self.created_time = attributes[:'created_time']
      end
      
      if attributes[:'text']
        self.text = attributes[:'text']
      end
      
      if attributes[:'from']
        self.from = attributes[:'from']
      end
      
    end

  end
end
