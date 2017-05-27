angular.module('constantModule', [])
	// 登录页
    .constant('LOGIN_PAGE','http://{{ groups['portalnd'][0] }}:{{ portalnd_port }}/{{ app_name }}/portal/login.html')
    // 主页
    .constant('INDEX_PAGE','http://{{ groups['portalnd'][0] }}:{{ portalnd_port }}/{{ app_name }}/portal/index.html')
    // 登录认证
    .constant('LOGIN_VALIDATE_URL','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/login/AuthCenter/v1/')
	// ncloud-base接口
    .constant('BASE_API_URL','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/250/ncloud')
    // ncloud-base接口V2.0
    .constant('BASE_API_URL_V2','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/250/ncloud/v2/')
    // 认证中心接口
    .constant('AUTH_API_URL','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/auth/AuthCenter/v1/')
    // 认证中心接口V2.0
    .constant('AUTH_API_URL_V2','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/auth/AuthCenter/v2/')
    // 登出
    .constant('LOGOUT_URL','http://{{ groups['nginx'][0] }}:{{ nginx_port }}/logout/AuthCenter/v1/logout')
    // Base应用名
    .constant('BASE_APP_NAME','/ncloud')
    // 认证中心应用名
    .constant('AUTH_APP_NAME','/AuthCenter')
   	// S3对象存储
    .constant('S3_URL','http://{{ s3_ip }}/')
