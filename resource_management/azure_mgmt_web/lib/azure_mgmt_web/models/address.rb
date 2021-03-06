# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Address information for domain registration
    #
    class Address

      include MsRestAzure

      # @return [String] Address 1
      attr_accessor :address1

      # @return [String] Address 2
      attr_accessor :address2

      # @return [String] City
      attr_accessor :city

      # @return [String] Country
      attr_accessor :country

      # @return [String] Postal code
      attr_accessor :postal_code

      # @return [String] State
      attr_accessor :state

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

        serialized_property = object.address1
        output_object['address1'] = serialized_property unless serialized_property.nil?

        serialized_property = object.address2
        output_object['address2'] = serialized_property unless serialized_property.nil?

        serialized_property = object.city
        output_object['city'] = serialized_property unless serialized_property.nil?

        serialized_property = object.country
        output_object['country'] = serialized_property unless serialized_property.nil?

        serialized_property = object.postal_code
        output_object['postalCode'] = serialized_property unless serialized_property.nil?

        serialized_property = object.state
        output_object['state'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Address] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Address.new

        deserialized_property = object['address1']
        output_object.address1 = deserialized_property

        deserialized_property = object['address2']
        output_object.address2 = deserialized_property

        deserialized_property = object['city']
        output_object.city = deserialized_property

        deserialized_property = object['country']
        output_object.country = deserialized_property

        deserialized_property = object['postalCode']
        output_object.postal_code = deserialized_property

        deserialized_property = object['state']
        output_object.state = deserialized_property

        output_object
      end
    end
  end
end
