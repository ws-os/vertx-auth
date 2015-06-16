require 'vertx-jdbc/jdbc_client'
require 'vertx-auth-common/auth_provider'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.auth.jdbc.JDBCAuth
module VertxAuthJdbc
  #  Factory interface for creating {::VertxAuthCommon::AuthProvider} instances that use the Vert.x JDBC client
  class JDBCAuth < ::VertxAuthCommon::AuthProvider
    # @private
    # @param j_del [::VertxAuthJdbc::JDBCAuth] the java delegate
    def initialize(j_del)
      super(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxAuthJdbc::JDBCAuth] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a JDBC auth provider implementation
    # @param [::VertxJdbc::JDBCClient] client the JDBC client instance
    # @return [::VertxAuthJdbc::JDBCAuth] the auth provider
    def self.create(client=nil)
      if client.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxExtAuthJdbc::JDBCAuth.java_method(:create, [Java::IoVertxExtJdbc::JDBCClient.java_class]).call(client.j_del),::VertxAuthJdbc::JDBCAuth)
      end
      raise ArgumentError, "Invalid arguments when calling create(client)"
    end
    #  Set the authentication query to use. Use this if you want to override the default authentication query.
    # @param [String] authenticationQuery the authentication query
    # @return [::VertxAuthJdbc::JDBCAuth] a reference to this for fluency
    def set_authentication_query(authenticationQuery=nil)
      if authenticationQuery.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:setAuthenticationQuery, [Java::java.lang.String.java_class]).call(authenticationQuery),::VertxAuthJdbc::JDBCAuth)
      end
      raise ArgumentError, "Invalid arguments when calling set_authentication_query(authenticationQuery)"
    end
    #  Set the roles query to use. Use this if you want to override the default roles query.
    # @param [String] rolesQuery the roles query
    # @return [::VertxAuthJdbc::JDBCAuth] a reference to this for fluency
    def set_roles_query(rolesQuery=nil)
      if rolesQuery.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:setRolesQuery, [Java::java.lang.String.java_class]).call(rolesQuery),::VertxAuthJdbc::JDBCAuth)
      end
      raise ArgumentError, "Invalid arguments when calling set_roles_query(rolesQuery)"
    end
    #  Set the permissions query to use. Use this if you want to override the default permissions query.
    # @param [String] permissionsQuery the permissions query
    # @return [::VertxAuthJdbc::JDBCAuth] a reference to this for fluency
    def set_permissions_query(permissionsQuery=nil)
      if permissionsQuery.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:setPermissionsQuery, [Java::java.lang.String.java_class]).call(permissionsQuery),::VertxAuthJdbc::JDBCAuth)
      end
      raise ArgumentError, "Invalid arguments when calling set_permissions_query(permissionsQuery)"
    end
    #  Set the role prefix to distinguish from permissions when checking for isPermitted requests.
    # @param [String] rolePrefix a Prefix e.g.: "role:"
    # @return [::VertxAuthJdbc::JDBCAuth] a reference to this for fluency
    def set_role_prefix(rolePrefix=nil)
      if rolePrefix.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:setRolePrefix, [Java::java.lang.String.java_class]).call(rolePrefix),::VertxAuthJdbc::JDBCAuth)
      end
      raise ArgumentError, "Invalid arguments when calling set_role_prefix(rolePrefix)"
    end
  end
end
