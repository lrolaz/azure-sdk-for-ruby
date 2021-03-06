# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Plan for the resource.
    #
    class Plan

      include MsRestAzure

      # @return [String] Gets or sets the plan ID.
      attr_accessor :name

      # @return [String] Gets or sets the publisher ID.
      attr_accessor :publisher

      # @return [String] Gets or sets the offer ID.
      attr_accessor :product

      # @return [String] Gets or sets the promotion code.
      attr_accessor :promotion_code

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

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.publisher
        output_object['publisher'] = serialized_property unless serialized_property.nil?

        serialized_property = object.product
        output_object['product'] = serialized_property unless serialized_property.nil?

        serialized_property = object.promotion_code
        output_object['promotionCode'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Plan] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Plan.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['publisher']
        output_object.publisher = deserialized_property

        deserialized_property = object['product']
        output_object.product = deserialized_property

        deserialized_property = object['promotionCode']
        output_object.promotion_code = deserialized_property

        output_object
      end
    end
  end
end
