module SwaggerClient
  # 
  class Media < BaseObject
    attr_accessor :created_time, :type, :filter, :tags, :id, :user, :users_in_photo, :location, :comments:, :likes
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Epoc time (ms)
        :'created_time' => :'created_time',
        
        # 
        :'type' => :'type',
        
        # 
        :'filter' => :'filter',
        
        # 
        :'tags' => :'tags',
        
        # 
        :'id' => :'id',
        
        # 
        :'user' => :'user',
        
        # 
        :'users_in_photo' => :'users_in_photo',
        
        # 
        :'location' => :'location',
        
        # 
        :'comments:' => :'comments:',
        
        # 
        :'likes' => :'likes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'created_time' => :'Integer',
        :'type' => :'String',
        :'filter' => :'String',
        :'tags' => :'Array<Tag>',
        :'id' => :'Integer',
        :'user' => :'MiniProfile',
        :'users_in_photo' => :'Array<MiniProfile>',
        :'location' => :'Location',
        :'comments:' => :'Object',
        :'likes' => :'Object'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'created_time']
        self.created_time = attributes[:'created_time']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'filter']
        self.filter = attributes[:'filter']
      end
      
      if attributes[:'tags']
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'user']
        self.user = attributes[:'user']
      end
      
      if attributes[:'users_in_photo']
        if (value = attributes[:'users_in_photo']).is_a?(Array)
          self.users_in_photo = value
        end
      end
      
      if attributes[:'location']
        self.location = attributes[:'location']
      end
      
      if attributes[:'comments:']
        self.comments: = attributes[:'comments:']
      end
      
      if attributes[:'likes']
        self.likes = attributes[:'likes']
      end
      
    end

  end
end
