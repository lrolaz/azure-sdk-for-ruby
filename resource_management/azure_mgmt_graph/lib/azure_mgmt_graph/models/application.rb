# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Active Directory user information
    #
    class Application

      include MsRestAzure

      # @return [String] Gets or sets object Id
      attr_accessor :object_id

      # @return [String] Gets or sets object type
      attr_accessor :object_type

      # @return [String] Gets or sets application Id
      attr_accessor :app_id

      # @return [Array<String>] Gets or sets application permissions
      attr_accessor :app_permissions

      # @return [Boolean] Indicates if the application will be available to
      # other tenants
      attr_accessor :available_to_other_tenants

      # @return [String] Gets or sets the displayName
      attr_accessor :display_name

      # @return [Array<String>] Gets or sets the application identifier Uris
      attr_accessor :identifier_uris

      # @return [Array<String>] Gets or sets the application reply Urls
      attr_accessor :reply_urls

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @app_permissions.each{ |e| e.validate if e.respond_to?(:validate) } unless @app_permissions.nil?
        @identifier_uris.each{ |e| e.validate if e.respond_to?(:validate) } unless @identifier_uris.nil?
        @reply_urls.each{ |e| e.validate if e.respond_to?(:validate) } unless @reply_urls.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.object_id
        output_object['objectId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.object_type
        output_object['objectType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.app_id
        output_object['appId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.app_permissions
        output_object['appPermissions'] = serialized_property unless serialized_property.nil?

        serialized_property = object.available_to_other_tenants
        output_object['availableToOtherTenants'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display_name
        output_object['displayName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.identifier_uris
        output_object['identifierUris'] = serialized_property unless serialized_property.nil?

        serialized_property = object.reply_urls
        output_object['replyUrls'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Application] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Application.new

        deserialized_property = object['objectId']
        output_object.object_id = deserialized_property

        deserialized_property = object['objectType']
        output_object.object_type = deserialized_property

        deserialized_property = object['appId']
        output_object.app_id = deserialized_property

        deserialized_property = object['appPermissions']
        output_object.app_permissions = deserialized_property

        deserialized_property = object['availableToOtherTenants']
        output_object.available_to_other_tenants = deserialized_property

        deserialized_property = object['displayName']
        output_object.display_name = deserialized_property

        deserialized_property = object['identifierUris']
        output_object.identifier_uris = deserialized_property

        deserialized_property = object['replyUrls']
        output_object.reply_urls = deserialized_property

        output_object
      end
    end
  end
end
