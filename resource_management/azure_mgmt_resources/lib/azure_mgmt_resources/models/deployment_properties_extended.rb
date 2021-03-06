# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Deployment properties with additional details.
    #
    class DeploymentPropertiesExtended

      include MsRestAzure

      # @return [String] Gets or sets the state of the provisioning.
      attr_accessor :provisioning_state

      # @return [String] Gets or sets the correlation ID of the deployment.
      attr_accessor :correlation_id

      # @return [DateTime] Gets or sets the timestamp of the template
      # deployment.
      attr_accessor :timestamp

      # @return Gets or sets key/value pairs that represent deploymentoutput.
      attr_accessor :outputs

      # @return [Array<Provider>] Gets the list of resource providers needed
      # for the deployment.
      attr_accessor :providers

      # @return [Array<Dependency>] Gets the list of deployment dependencies.
      attr_accessor :dependencies

      # @return Gets or sets the template content. Use only one of Template or
      # TemplateLink.
      attr_accessor :template

      # @return [TemplateLink] Gets or sets the URI referencing the template.
      # Use only one of Template or TemplateLink.
      attr_accessor :template_link

      # @return Deployment parameters. Use only one of Parameters or
      # ParametersLink.
      attr_accessor :parameters

      # @return [ParametersLink] Gets or sets the URI referencing the
      # parameters. Use only one of Parameters or ParametersLink.
      attr_accessor :parameters_link

      # @return [DeploymentMode] Gets or sets the deployment mode. Possible
      # values include: 'Incremental', 'Complete'
      attr_accessor :mode

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @providers.each{ |e| e.validate if e.respond_to?(:validate) } unless @providers.nil?
        @dependencies.each{ |e| e.validate if e.respond_to?(:validate) } unless @dependencies.nil?
        @template_link.validate unless @template_link.nil?
        @parameters_link.validate unless @parameters_link.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.correlation_id
        output_object['correlationId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.timestamp
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['timestamp'] = serialized_property unless serialized_property.nil?

        serialized_property = object.outputs
        output_object['outputs'] = serialized_property unless serialized_property.nil?

        serialized_property = object.providers
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = Provider.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['providers'] = serialized_property unless serialized_property.nil?

        serialized_property = object.dependencies
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = Dependency.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['dependencies'] = serialized_property unless serialized_property.nil?

        serialized_property = object.template
        output_object['template'] = serialized_property unless serialized_property.nil?

        serialized_property = object.template_link
        unless serialized_property.nil?
          serialized_property = TemplateLink.serialize_object(serialized_property)
        end
        output_object['templateLink'] = serialized_property unless serialized_property.nil?

        serialized_property = object.parameters
        output_object['parameters'] = serialized_property unless serialized_property.nil?

        serialized_property = object.parameters_link
        unless serialized_property.nil?
          serialized_property = ParametersLink.serialize_object(serialized_property)
        end
        output_object['parametersLink'] = serialized_property unless serialized_property.nil?

        serialized_property = object.mode
        output_object['mode'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [DeploymentPropertiesExtended] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = DeploymentPropertiesExtended.new

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        deserialized_property = object['correlationId']
        output_object.correlation_id = deserialized_property

        deserialized_property = object['timestamp']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.timestamp = deserialized_property

        deserialized_property = object['outputs']
        output_object.outputs = deserialized_property

        deserialized_property = object['providers']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element2|
            unless element2.nil?
              element2 = Provider.deserialize_object(element2)
            end
            deserialized_array.push(element2)
          end
          deserialized_property = deserialized_array
        end
        output_object.providers = deserialized_property

        deserialized_property = object['dependencies']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = Dependency.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.dependencies = deserialized_property

        deserialized_property = object['template']
        output_object.template = deserialized_property

        deserialized_property = object['templateLink']
        unless deserialized_property.nil?
          deserialized_property = TemplateLink.deserialize_object(deserialized_property)
        end
        output_object.template_link = deserialized_property

        deserialized_property = object['parameters']
        output_object.parameters = deserialized_property

        deserialized_property = object['parametersLink']
        unless deserialized_property.nil?
          deserialized_property = ParametersLink.deserialize_object(deserialized_property)
        end
        output_object.parameters_link = deserialized_property

        deserialized_property = object['mode']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = DeploymentMode.constants.any? { |e| DeploymentMode.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum DeploymentMode does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.mode = deserialized_property

        output_object
      end
    end
  end
end
