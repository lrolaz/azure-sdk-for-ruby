# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class JobHistoryFilter

      include MsRestAzure

      # @return [JobExecutionStatus] Gets or sets the job execution status.
      # Possible values include: 'Completed', 'Failed', 'Postponed'
      attr_accessor :status

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

        serialized_property = object.status
        output_object['status'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [JobHistoryFilter] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = JobHistoryFilter.new

        deserialized_property = object['status']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = JobExecutionStatus.constants.any? { |e| JobExecutionStatus.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum JobExecutionStatus does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.status = deserialized_property

        output_object
      end
    end
  end
end
