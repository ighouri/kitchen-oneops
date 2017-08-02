# -*- encoding: utf-8 -*-
#
# Author:: Imaad Ghouri (<ighouri@walmartlabs.com>)
#
# Copyright (C) 2017, Imaad Ghouri
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'kitchen'

module Kitchen

  module Driver

    # Oneops driver for Kitchen.
    #
    # @author Imaad Ghouri <ighouri@walmartlabs.com>
    class Oneops < Kitchen::Driver::SSHBase

      def create(state)
        curl_post_command="curl -s -X POST -H \"Content-Type: application/json\" -H \"Accept: application/json\" -u #{config[:auth_token]}:"
        create_org(curl_post_command)
        create_assembly(curl_post_command)
      end

      def create_org(curl_post_command)
        puts "creating org now..."
        `#{curl_post_command} -d '{ "name": "#{config[:org_name]}" }' #{config[:server_url]}/account/organizations`
      end

      def create_assembly(curl_post_command)
        puts "creating assembly now..."
        `#{curl_post_command} -d '{ "cms_ci": { "ciName": "#{config[:assembly_name]}", "ciAttributes": { "owner": "#{config[:owner_email]}" } } }' #{config[:server_url]}/#{config[:org_name]}/assemblies`
      end

      def destroy(state)
        curl_delete_command="curl -s -X DELETE -H \"Content-Type: application/json\" -H \"Accept: application/json\" -u #{config[:auth_token]}:"
        delete_assembly(curl_delete_command)
        delete_org(curl_delete_command)
      end

      def delete_assembly(curl_delete_command)
        puts "deleting assembly now..."
        `#{curl_delete_command} #{config[:server_url]}/#{config[:org_name]}/assemblies/#{config[:assembly]}`
      end

      def delete_org(curl_delete_command)
        puts "deleting org now..."
        `#{curl_delete_command} #{config[:server_url]}/account/organizations/#{config[:org_name]}`
      end

    end
  end
end
