# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class BackupRequestProperties

      include MsRestAzure

      # @return [String] Name of the backup
      attr_accessor :name

      # @return [Boolean] True if the backup schedule is enabled (must be
      # included in that case), false if the backup schedule should be
      # disabled
      attr_accessor :enabled

      # @return [String] SAS URL to the container
      attr_accessor :storage_account_url

      # @return [BackupSchedule] Schedule for the backup if it is executed
      # periodically
      attr_accessor :backup_schedule

      # @return [Array<DatabaseBackupSetting>] Databases included in the backup
      attr_accessor :databases

      # @return [BackupRestoreOperationType] Type of the backup. Possible
      # values include: 'Default', 'Clone', 'Relocation'
      attr_accessor :type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @backup_schedule.validate unless @backup_schedule.nil?
        @databases.each{ |e| e.validate if e.respond_to?(:validate) } unless @databases.nil?
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

        serialized_property = object.enabled
        output_object['enabled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.storage_account_url
        output_object['storageAccountUrl'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backup_schedule
        unless serialized_property.nil?
          serialized_property = BackupSchedule.serialize_object(serialized_property)
        end
        output_object['backupSchedule'] = serialized_property unless serialized_property.nil?

        serialized_property = object.databases
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = DatabaseBackupSetting.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['databases'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BackupRequestProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BackupRequestProperties.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['enabled']
        output_object.enabled = deserialized_property

        deserialized_property = object['storageAccountUrl']
        output_object.storage_account_url = deserialized_property

        deserialized_property = object['backupSchedule']
        unless deserialized_property.nil?
          deserialized_property = BackupSchedule.deserialize_object(deserialized_property)
        end
        output_object.backup_schedule = deserialized_property

        deserialized_property = object['databases']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = DatabaseBackupSetting.deserialize_object(element1)
            end
            deserialized_array.push(element1)
          end
          deserialized_property = deserialized_array
        end
        output_object.databases = deserialized_property

        deserialized_property = object['type']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = BackupRestoreOperationType.constants.any? { |e| BackupRestoreOperationType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum BackupRestoreOperationType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.type = deserialized_property

        output_object
      end
    end
  end
end
