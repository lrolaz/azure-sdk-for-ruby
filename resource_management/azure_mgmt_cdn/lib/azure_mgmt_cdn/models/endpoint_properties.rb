# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Model object.
    #
    class EndpointProperties

      include MsRestAzure

      # @return [String] The host name of the endpoint {endpointName}.{DNSZone}
      attr_accessor :host_name

      # @return [String] The host header CDN provider will send along with
      # content requests to origins. The default value would be the host name
      # of the origin.
      attr_accessor :origin_host_header

      # @return [String] The path used for origin requests
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression
      # will be applied. The value for the elements should be Internet media
      # type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether the compression is enabled.
      # Default value is false. If compression is enabled, the content
      # transferred from cdn endpoint to end user will be compressed. The
      # requested content must be larger than 1 byte and smaller than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether http traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (http or
      # https) must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether https traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (http or
      # https) must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines the query string caching
      # behavior. Possible values include: 'IgnoreQueryString',
      # 'BypassCaching', 'UseQueryString', 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [Array<DeepCreatedOrigin>] The set of origins of the CDN
      # endpoint. When multiple origins exist, the first origin will be used
      # as primary and rest will be used as failover options.
      attr_accessor :origins

      # @return [EndpointResourceState] Resource status of the endpoint.
      # Possible values include: 'Creating', 'Deleting', 'Running',
      # 'Starting', 'Stopped', 'Stopping'
      attr_accessor :resource_state

      # @return [ProvisioningState] Provisioning status of the endpoint.
      # Possible values include: 'Creating', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @content_types_to_compress.each{ |e| e.validate if e.respond_to?(:validate) } unless @content_types_to_compress.nil?
        @origins.each{ |e| e.validate if e.respond_to?(:validate) } unless @origins.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.host_name
        output_object['hostName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.origin_host_header
        output_object['originHostHeader'] = serialized_property unless serialized_property.nil?

        serialized_property = object.origin_path
        output_object['originPath'] = serialized_property unless serialized_property.nil?

        serialized_property = object.content_types_to_compress
        output_object['contentTypesToCompress'] = serialized_property unless serialized_property.nil?

        serialized_property = object.is_compression_enabled
        output_object['isCompressionEnabled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.is_http_allowed
        output_object['isHttpAllowed'] = serialized_property unless serialized_property.nil?

        serialized_property = object.is_https_allowed
        output_object['isHttpsAllowed'] = serialized_property unless serialized_property.nil?

        serialized_property = object.query_string_caching_behavior
        output_object['queryStringCachingBehavior'] = serialized_property unless serialized_property.nil?

        serialized_property = object.origins
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = DeepCreatedOrigin.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['origins'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_state
        output_object['resourceState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [EndpointProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = EndpointProperties.new

        deserialized_property = object['hostName']
        output_object.host_name = deserialized_property

        deserialized_property = object['originHostHeader']
        output_object.origin_host_header = deserialized_property

        deserialized_property = object['originPath']
        output_object.origin_path = deserialized_property

        deserialized_property = object['contentTypesToCompress']
        output_object.content_types_to_compress = deserialized_property

        deserialized_property = object['isCompressionEnabled']
        output_object.is_compression_enabled = deserialized_property

        deserialized_property = object['isHttpAllowed']
        output_object.is_http_allowed = deserialized_property

        deserialized_property = object['isHttpsAllowed']
        output_object.is_https_allowed = deserialized_property

        deserialized_property = object['queryStringCachingBehavior']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = QueryStringCachingBehavior.constants.any? { |e| QueryStringCachingBehavior.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum QueryStringCachingBehavior does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.query_string_caching_behavior = deserialized_property

        deserialized_property = object['origins']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = DeepCreatedOrigin.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.origins = deserialized_property

        deserialized_property = object['resourceState']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = EndpointResourceState.constants.any? { |e| EndpointResourceState.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum EndpointResourceState does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.resource_state = deserialized_property

        deserialized_property = object['provisioningState']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = ProvisioningState.constants.any? { |e| ProvisioningState.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum ProvisioningState does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.provisioning_state = deserialized_property

        output_object
      end
    end
  end
end
