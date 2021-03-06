# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class BackupItemProperties

      include MsRestAzure

      # @return [Integer] Id of the backup.
      attr_accessor :id

      # @return [String] SAS URL for the storage account container which
      # contains this backup
      attr_accessor :storage_account_url

      # @return [String] Name of the blob which contains data for this backup
      attr_accessor :blob_name

      # @return [String] Name of this backup
      attr_accessor :name

      # @return [BackupItemStatus] Backup status. Possible values include:
      # 'InProgress', 'Failed', 'Succeeded', 'TimedOut', 'Created',
      # 'Skipped', 'PartiallySucceeded', 'DeleteInProgress', 'DeleteFailed',
      # 'Deleted'
      attr_accessor :status

      # @return [Integer] Size of the backup in bytes
      attr_accessor :size_in_bytes

      # @return [DateTime] Timestamp of the backup creation
      attr_accessor :created

      # @return [String] Details regarding this backup. Might contain an error
      # message.
      attr_accessor :log

      # @return [Array<DatabaseBackupSetting>] List of databases included in
      # the backup
      attr_accessor :databases

      # @return [Boolean] True if this backup has been created due to a
      # schedule being triggered.
      attr_accessor :scheduled

      # @return [DateTime] Timestamp of a last restore operation which used
      # this backup.
      attr_accessor :last_restore_time_stamp

      # @return [DateTime] Timestamp when this backup finished.
      attr_accessor :finished_time_stamp

      # @return [String] Unique correlation identifier. Please use this along
      # with the timestamp while communicating with Azure support.
      attr_accessor :correlation_id

      # @return [Integer] Size of the original web app which has been backed up
      attr_accessor :website_size_in_bytes

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
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

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.storage_account_url
        output_object['storageAccountUrl'] = serialized_property unless serialized_property.nil?

        serialized_property = object.blob_name
        output_object['blobName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status
        output_object['status'] = serialized_property unless serialized_property.nil?

        serialized_property = object.size_in_bytes
        output_object['sizeInBytes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.created
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['created'] = serialized_property unless serialized_property.nil?

        serialized_property = object.log
        output_object['log'] = serialized_property unless serialized_property.nil?

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

        serialized_property = object.scheduled
        output_object['scheduled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_restore_time_stamp
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['lastRestoreTimeStamp'] = serialized_property unless serialized_property.nil?

        serialized_property = object.finished_time_stamp
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['finishedTimeStamp'] = serialized_property unless serialized_property.nil?

        serialized_property = object.correlation_id
        output_object['correlationId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.website_size_in_bytes
        output_object['websiteSizeInBytes'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BackupItemProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BackupItemProperties.new

        deserialized_property = object['id']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.id = deserialized_property

        deserialized_property = object['storageAccountUrl']
        output_object.storage_account_url = deserialized_property

        deserialized_property = object['blobName']
        output_object.blob_name = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['status']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = BackupItemStatus.constants.any? { |e| BackupItemStatus.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum BackupItemStatus does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.status = deserialized_property

        deserialized_property = object['sizeInBytes']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.size_in_bytes = deserialized_property

        deserialized_property = object['created']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.created = deserialized_property

        deserialized_property = object['log']
        output_object.log = deserialized_property

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

        deserialized_property = object['scheduled']
        output_object.scheduled = deserialized_property

        deserialized_property = object['lastRestoreTimeStamp']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.last_restore_time_stamp = deserialized_property

        deserialized_property = object['finishedTimeStamp']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.finished_time_stamp = deserialized_property

        deserialized_property = object['correlationId']
        output_object.correlation_id = deserialized_property

        deserialized_property = object['websiteSizeInBytes']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.website_size_in_bytes = deserialized_property

        output_object
      end
    end
  end
end
