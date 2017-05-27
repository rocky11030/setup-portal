/*
Navicat MySQL Data Transfer

Source Server         : 192.168.250.3
Source Server Version : 50554
Source Host           : 192.168.250.3:3306
Source Database       : basev2

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-05-04 11:22:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alarm_email
-- ----------------------------
DROP TABLE IF EXISTS `alarm_email`;
CREATE TABLE `alarm_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `alarm_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ops_user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alarm_email
-- ----------------------------

-- ----------------------------
-- Table structure for auto_elastic
-- ----------------------------
DROP TABLE IF EXISTS `auto_elastic`;
CREATE TABLE `auto_elastic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `contract_id` varchar(255) DEFAULT NULL,
  `cores` int(11) NOT NULL,
  `extend_region` varchar(255) DEFAULT NULL,
  `invalid_date` datetime DEFAULT NULL,
  `rams` int(11) NOT NULL,
  `servers` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `valid_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_elastic
-- ----------------------------

-- ----------------------------
-- Table structure for az_resource
-- ----------------------------
DROP TABLE IF EXISTS `az_resource`;
CREATE TABLE `az_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `aggregate_id` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `az_name` varchar(255) DEFAULT NULL,
  `az_type` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tenant_email` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `visible_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of az_resource
-- ----------------------------

-- ----------------------------
-- Table structure for cache_config
-- ----------------------------
DROP TABLE IF EXISTS `cache_config`;
CREATE TABLE `cache_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cache_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `refresh_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cache_config
-- ----------------------------

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `tenant_email` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `auto_switch` tinyint(1) NOT NULL,
  `invalid_date` datetime DEFAULT NULL,
  `valid_date` datetime DEFAULT NULL,
  `extend_region` varchar(255) DEFAULT NULL,
  `renew_flag` varchar(10) DEFAULT NULL,
  `renew_cid` varchar(255) DEFAULT NULL,
  `renew_cname` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------

-- ----------------------------
-- Table structure for contract_region_quota_mapping
-- ----------------------------
DROP TABLE IF EXISTS `contract_region_quota_mapping`;
CREATE TABLE `contract_region_quota_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_region_quota_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for element_profile
-- ----------------------------
DROP TABLE IF EXISTS `element_profile`;
CREATE TABLE `element_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element_profile
-- ----------------------------

-- ----------------------------
-- Table structure for flavor
-- ----------------------------
DROP TABLE IF EXISTS `flavor`;
CREATE TABLE `flavor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `availability` tinyint(1) NOT NULL,
  `disk` int(11) NOT NULL,
  `ephemeral` int(11) DEFAULT NULL,
  `flavor_type` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `ram` int(11) NOT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `rxtx_factor` double DEFAULT NULL,
  `swap` varchar(255) DEFAULT NULL,
  `vcpus` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flavor
-- ----------------------------

-- ----------------------------
-- Table structure for flavor_type_tenant_mapping
-- ----------------------------
DROP TABLE IF EXISTS `flavor_type_tenant_mapping`;
CREATE TABLE `flavor_type_tenant_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `flavor_type_id` varchar(255) DEFAULT NULL,
  `in_used` int(11) NOT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flavor_type_tenant_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for group_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `group_role_mapping`;
CREATE TABLE `group_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_role_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for host
-- ----------------------------
DROP TABLE IF EXISTS `host`;
CREATE TABLE `host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `availability_zone` varchar(255) DEFAULT NULL,
  `bandwidth` double DEFAULT NULL,
  `cpu` double DEFAULT NULL,
  `disk` double DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ipmi` varchar(255) DEFAULT NULL,
  `memory` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `reservation_type_id` varchar(255) DEFAULT NULL,
  `reservation_type_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `power_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host
-- ----------------------------

-- ----------------------------
-- Table structure for host_az_mapping
-- ----------------------------
DROP TABLE IF EXISTS `host_az_mapping`;
CREATE TABLE `host_az_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `az_id` int(11) DEFAULT NULL,
  `host_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_az_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for host_type
-- ----------------------------
DROP TABLE IF EXISTS `host_type`;
CREATE TABLE `host_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `configuration` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_type
-- ----------------------------

-- ----------------------------
-- Table structure for log_item
-- ----------------------------
DROP TABLE IF EXISTS `log_item`;
CREATE TABLE `log_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL COMMENT '����',
  `result` text COMMENT 'ִ�н��',
  `tenant` varchar(255) DEFAULT NULL COMMENT '�⻧����',
  `time` varchar(255) DEFAULT NULL COMMENT 'ִ��ʱ��',
  `user` varchar(255) DEFAULT NULL COMMENT '�û�����',
  `resource_id` varchar(255) DEFAULT NULL COMMENT '��ԴID',
  `resource_name` varchar(255) DEFAULT NULL COMMENT '������Դ����',
  `region` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_item
-- ----------------------------

-- ----------------------------
-- Table structure for monitor
-- ----------------------------
DROP TABLE IF EXISTS `monitor`;
CREATE TABLE `monitor` (
  `id` int(11) NOT NULL,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monitor
-- ----------------------------

-- ----------------------------
-- Table structure for notice_admin_email
-- ----------------------------
DROP TABLE IF EXISTS `notice_admin_email`;
CREATE TABLE `notice_admin_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `early_days` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_admin_email
-- ----------------------------

-- ----------------------------
-- Table structure for notice_email_group_maping
-- ----------------------------
DROP TABLE IF EXISTS `notice_email_group_maping`;
CREATE TABLE `notice_email_group_maping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `notice_email_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_email_group_maping
-- ----------------------------

-- ----------------------------
-- Table structure for pool
-- ----------------------------
DROP TABLE IF EXISTS `pool`;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `credential` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `pool_admin` varchar(255) DEFAULT NULL,
  `pool_name` varchar(255) DEFAULT NULL,
  `pool_tenant` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool
-- ----------------------------
INSERT INTO `pool` VALUES ('1', '2015-08-31 00:00:00', null, '{{ openstack_endpoint_pass }}', 'http://{{ openstack_endpoint }}:{{ openstack_endpoint_port }}/v2.0/', 'admin', 'FirstOpenStack', 'admin', 'openstack-nova', '1');

-- ----------------------------
-- Table structure for quota
-- ----------------------------
DROP TABLE IF EXISTS `quota`;
CREATE TABLE `quota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `quota_cinder_id` int(11) DEFAULT NULL,
  `quota_designate_id` int(11) DEFAULT NULL,
  `quota_neutron_id` int(11) DEFAULT NULL,
  `quota_nova_id` int(11) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota
-- ----------------------------

-- ----------------------------
-- Table structure for quota_ceph
-- ----------------------------
DROP TABLE IF EXISTS `quota_ceph`;
CREATE TABLE `quota_ceph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `ceph_user_id` varchar(255) DEFAULT NULL,
  `max_keys` int(11) NOT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `key_in_use` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_ceph
-- ----------------------------

-- ----------------------------
-- Table structure for quota_cinder
-- ----------------------------
DROP TABLE IF EXISTS `quota_cinder`;
CREATE TABLE `quota_cinder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `gigabytes` int(11) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `snapshots` int(11) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `volumes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_cinder
-- ----------------------------

-- ----------------------------
-- Table structure for quota_designate
-- ----------------------------
DROP TABLE IF EXISTS `quota_designate`;
CREATE TABLE `quota_designate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `domain_records` int(11) DEFAULT NULL,
  `domain_recordsets` int(11) DEFAULT NULL,
  `domains` int(11) DEFAULT NULL,
  `recordset_records` int(11) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_designate
-- ----------------------------

-- ----------------------------
-- Table structure for quota_neutron
-- ----------------------------
DROP TABLE IF EXISTS `quota_neutron`;
CREATE TABLE `quota_neutron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `floatingip` int(11) DEFAULT NULL,
  `network` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `router` int(11) DEFAULT NULL,
  `security_group` int(11) DEFAULT NULL,
  `security_group_rule` int(11) DEFAULT NULL,
  `subnet` int(11) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `router_bandwidth` int(11) DEFAULT NULL,
  `total_bandwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_neutron
-- ----------------------------

-- ----------------------------
-- Table structure for quota_nova
-- ----------------------------
DROP TABLE IF EXISTS `quota_nova`;
CREATE TABLE `quota_nova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cores` int(11) DEFAULT NULL,
  `floating_ips` int(11) DEFAULT NULL,
  `gigabytes` int(11) DEFAULT NULL,
  `injected_file_content_bytes` int(11) DEFAULT NULL,
  `injected_files` int(11) DEFAULT NULL,
  `instances` int(11) DEFAULT NULL,
  `key_pairs` int(11) DEFAULT NULL,
  `metadata_items` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `security_group_rules` int(11) DEFAULT NULL,
  `security_groups` int(11) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `volumes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota_nova
-- ----------------------------

-- ----------------------------
-- Table structure for rbd_total_capacity
-- ----------------------------
DROP TABLE IF EXISTS `rbd_total_capacity`;
CREATE TABLE `rbd_total_capacity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `rdb_type` varchar(255) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `rdb_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbd_total_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for region_alias
-- ----------------------------
DROP TABLE IF EXISTS `region_alias`;
CREATE TABLE `region_alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region_alias
-- ----------------------------

-- ----------------------------
-- Table structure for reservation_type
-- ----------------------------
DROP TABLE IF EXISTS `reservation_type`;
CREATE TABLE `reservation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cpu` int(11) DEFAULT NULL,
  `disk` int(11) DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reservation_type
-- ----------------------------

-- ----------------------------
-- Table structure for resourceb
-- ----------------------------
DROP TABLE IF EXISTS `resourceb`;
CREATE TABLE `resourceb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL ,
  `name` varchar(255) DEFAULT NULL ,
  `priority` int(11) DEFAULT NULL ,
  `res_string` varchar(255) DEFAULT NULL ,
  `res_type` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL ,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resourceb
-- ----------------------------

-- ----------------------------
-- Table structure for role_resource_mapping
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_mapping`;
CREATE TABLE `role_resource_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL COMMENT '��ԴID',
  `role_id` int(11) DEFAULT NULL COMMENT '��ɫID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for rolea
-- ----------------------------
DROP TABLE IF EXISTS `rolea`;
CREATE TABLE `rolea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '��ɫ����',
  `name` varchar(255) DEFAULT NULL COMMENT '��ɫ����',
  `mid` int(11) DEFAULT NULL COMMENT '��Ӧmanager��role��id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolea
-- ----------------------------

-- ----------------------------
-- Table structure for service_catalog
-- ----------------------------
DROP TABLE IF EXISTS `service_catalog`;
CREATE TABLE `service_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_catalog
-- ----------------------------
INSERT INTO `service_catalog` VALUES ('1', '2015-09-01 00:00:00', null, 'http://{{ groups["ncloud"][0] }}:{{ ncloud_port }}/ncloud', 'base', 'base');

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `apply_status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_open_ceph` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `open_region` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `tenant_grade_id` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `tenant_status` int(11) DEFAULT NULL,
  `tenant_type` int(11) DEFAULT NULL,
  `creator_id` varchar(255) DEFAULT NULL,
  `creator_name` varchar(255) DEFAULT NULL,
  `show_public` tinyint(1) NOT NULL,
  `tenant_custom_type_id` int(11) DEFAULT NULL,
  `ops_del` tinyint(1) NOT NULL,
  `tenant_created_type` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `is_open_mistral` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_custom_type
-- ----------------------------
DROP TABLE IF EXISTS `tenant_custom_type`;
CREATE TABLE `tenant_custom_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant_custom_type
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_emails_pool
-- ----------------------------
DROP TABLE IF EXISTS `tenant_emails_pool`;
CREATE TABLE `tenant_emails_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pool_uuid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant_emails_pool
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_grade
-- ----------------------------
DROP TABLE IF EXISTS `tenant_grade`;
CREATE TABLE `tenant_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cores` int(11) DEFAULT NULL,
  `floating_ips` int(11) DEFAULT NULL,
  `floatingip` int(11) DEFAULT NULL,
  `gigabytes` int(11) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `injected_file_content_bytes` int(11) DEFAULT NULL,
  `injected_files` int(11) DEFAULT NULL,
  `instances` int(11) DEFAULT NULL,
  `key_pairs` int(11) DEFAULT NULL,
  `metadata_items` int(11) DEFAULT NULL,
  `network` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `router` int(11) DEFAULT NULL,
  `security_group` int(11) DEFAULT NULL,
  `security_group_rule` int(11) DEFAULT NULL,
  `security_group_rules` int(11) DEFAULT NULL,
  `security_groups` int(11) DEFAULT NULL,
  `snapshots` int(11) DEFAULT NULL,
  `subnet` int(11) DEFAULT NULL,
  `volumes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant_grade
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_grade_mapping
-- ----------------------------
DROP TABLE IF EXISTS `tenant_grade_mapping`;
CREATE TABLE `tenant_grade_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant_grade_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------

-- ----------------------------
-- Table structure for user_group_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_group_mapping`;
CREATE TABLE `user_group_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for user_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_role_mapping`;
CREATE TABLE `user_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for user_tenant_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_tenant_mapping`;
CREATE TABLE `user_tenant_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tenant_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for userb
-- ----------------------------
DROP TABLE IF EXISTS `userb`;
CREATE TABLE `userb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ops_user_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0=PortalUser;1=ManagerUser;',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userb
-- ----------------------------

-- ----------------------------
-- Table structure for vm_type
-- ----------------------------
DROP TABLE IF EXISTS `vm_type`;
CREATE TABLE `vm_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `availability` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ops_id` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vm_type
-- ----------------------------

-- ----------------------------
-- Table structure for volume_type
-- ----------------------------
DROP TABLE IF EXISTS `volume_type`;
CREATE TABLE `volume_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `availability` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ops_id` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL,
  `volume_type_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volume_type
-- ----------------------------

-- ----------------------------
-- Table structure for volume_type_tenant_mapping
-- ----------------------------
DROP TABLE IF EXISTS `volume_type_tenant_mapping`;
CREATE TABLE `volume_type_tenant_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `volume_type_id` varchar(255) DEFAULT NULL,
  `in_used` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `in_used_number` int(11) NOT NULL,
  `total_number` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volume_type_tenant_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for work_order
-- ----------------------------
DROP TABLE IF EXISTS `work_order`;
CREATE TABLE `work_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL ,
  `tenant_id` varchar(255) DEFAULT NULL ,
  `tenant_name` varchar(255) DEFAULT NULL ,
  `user_name` varchar(255) DEFAULT NULL ,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `handling_time` datetime DEFAULT NULL,
  `handling_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_order
-- ----------------------------
