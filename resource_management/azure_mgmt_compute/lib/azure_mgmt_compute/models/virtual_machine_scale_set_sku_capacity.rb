# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes scaling information of a sku.
    #
    class VirtualMachineScaleSetSkuCapacity

      include MsRestAzure

      # @return [Integer] Gets the minimum capacity.
      attr_accessor :minimum

      # @return [Integer] Gets the maximum capacity that can be set.
      attr_accessor :maximum

      # @return [Integer] Gets the default capacity.
      attr_accessor :default_capacity

      # @return [VirtualMachineScaleSetSkuScaleType] Gets the scale type
      # applicable to the sku. Possible values include: 'Automatic', 'None'
      attr_accessor :scale_type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.minimum
        output_object['minimum'] = serialized_property unless serialized_property.nil?

        serialized_property = object.maximum
        output_object['maximum'] = serialized_property unless serialized_property.nil?

        serialized_property = object.default_capacity
        output_object['defaultCapacity'] = serialized_property unless serialized_property.nil?

        serialized_property = object.scale_type
        output_object['scaleType'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetSkuCapacity] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetSkuCapacity.new

        deserialized_property = object['minimum']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.minimum = deserialized_property

        deserialized_property = object['maximum']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.maximum = deserialized_property

        deserialized_property = object['defaultCapacity']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.default_capacity = deserialized_property

        deserialized_property = object['scaleType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = VirtualMachineScaleSetSkuScaleType.constants.any? { |e| VirtualMachineScaleSetSkuScaleType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum VirtualMachineScaleSetSkuScaleType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.scale_type = deserialized_property

        output_object
      end
    end
  end
end
