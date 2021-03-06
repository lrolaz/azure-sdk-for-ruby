# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

module Azure::ARM::SQL
  autoload :SecurityAlertPolicy,                                'azure_mgmt_sql/security_alert_policy.rb'
  autoload :SqlManagementClient,                                'azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :ServerSecurityAlertPolicyProperties,                'azure_mgmt_sql/models/server_security_alert_policy_properties.rb'
    autoload :ServerSecurityAlertPolicyCreateOrUpdateParameters,  'azure_mgmt_sql/models/server_security_alert_policy_create_or_update_parameters.rb'
    autoload :ServerSecurityAlertPolicy,                          'azure_mgmt_sql/models/server_security_alert_policy.rb'
    autoload :State,                                              'azure_mgmt_sql/models/state.rb'
    autoload :EmailAccountAdmins,                                 'azure_mgmt_sql/models/email_account_admins.rb'
  end
end
