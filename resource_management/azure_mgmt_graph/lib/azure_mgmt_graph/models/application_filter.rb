# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Filter parameters for listing applications
    #
    class ApplicationFilter

      include MsRestAzure

      # @return [String] Application display name starts with
      attr_accessor :display_name_starts_with

      # @return [String] ApplicationId
      attr_accessor :app_id

      # @return [String] Identifier Uri
      attr_accessor :identifier_uri

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

        serialized_property = object.display_name_starts_with
        output_object['displayNameStartsWith'] = serialized_property unless serialized_property.nil?

        serialized_property = object.app_id
        output_object['appId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.identifier_uri
        output_object['identifierUri'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ApplicationFilter] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ApplicationFilter.new

        deserialized_property = object['displayNameStartsWith']
        output_object.display_name_starts_with = deserialized_property

        deserialized_property = object['appId']
        output_object.app_id = deserialized_property

        deserialized_property = object['identifierUri']
        output_object.identifier_uri = deserialized_property

        output_object
      end
    end
  end
end
