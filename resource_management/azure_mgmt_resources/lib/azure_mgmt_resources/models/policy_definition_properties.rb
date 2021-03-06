# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Policy definition properties.
    #
    class PolicyDefinitionProperties

      include MsRestAzure

      # @return [String] Gets or sets the policy definition description.
      attr_accessor :description

      # @return [String] Gets or sets the policy definition display name.
      attr_accessor :display_name

      # @return The policy rule json.
      attr_accessor :policy_rule

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.description
        output_object['description'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display_name
        output_object['displayName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.policy_rule
        output_object['policyRule'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [PolicyDefinitionProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = PolicyDefinitionProperties.new

        deserialized_property = object['description']
        output_object.description = deserialized_property

        deserialized_property = object['displayName']
        output_object.display_name = deserialized_property

        deserialized_property = object['policyRule']
        output_object.policy_rule = deserialized_property

        output_object
      end
    end
  end
end
