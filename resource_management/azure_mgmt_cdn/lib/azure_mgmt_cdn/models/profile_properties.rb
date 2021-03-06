# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Model object.
    #
    class ProfileProperties

      include MsRestAzure

      # @return [Sku] Profile sku
      attr_accessor :sku

      # @return [ProfileResourceState] Resource status of the profile.
      # Possible values include: 'Creating', 'Active', 'Deleting', 'Disabled'
      attr_accessor :resource_state

      # @return [ProvisioningState] Provisioning status of the profile.
      # Possible values include: 'Creating', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @sku.validate unless @sku.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.sku
        unless serialized_property.nil?
          serialized_property = Sku.serialize_object(serialized_property)
        end
        output_object['sku'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_state
        output_object['resourceState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ProfileProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ProfileProperties.new

        deserialized_property = object['sku']
        unless deserialized_property.nil?
          deserialized_property = Sku.deserialize_object(deserialized_property)
        end
        output_object.sku = deserialized_property

        deserialized_property = object['resourceState']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = ProfileResourceState.constants.any? { |e| ProfileResourceState.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum ProfileResourceState does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
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
