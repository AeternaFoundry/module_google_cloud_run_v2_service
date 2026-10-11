output "cloud_run_v2_services_id" {
  description = "Map of id values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no id are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_run_v2_services_annotations" {
  description = "Map of annotations values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no annotations are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "cloud_run_v2_services_binary_authorization" {
  description = "Map of binary_authorization values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no binary_authorization are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => one(v.binary_authorization) if v.binary_authorization != null && length(v.binary_authorization) > 0 }
}
output "cloud_run_v2_services_build_config" {
  description = "Map of build_config values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no build_config are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => one(v.build_config) if v.build_config != null && length(v.build_config) > 0 }
}
output "cloud_run_v2_services_client" {
  description = "Map of client values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no client are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.client if v.client != null && length(v.client) > 0 }
}
output "cloud_run_v2_services_client_version" {
  description = "Map of client_version values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no client_version are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.client_version if v.client_version != null && length(v.client_version) > 0 }
}
output "cloud_run_v2_services_conditions" {
  description = "Map of conditions values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no conditions are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "cloud_run_v2_services_create_time" {
  description = "Map of create_time values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no create_time are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "cloud_run_v2_services_creator" {
  description = "Map of creator values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no creator are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.creator if v.creator != null && length(v.creator) > 0 }
}
output "cloud_run_v2_services_custom_audiences" {
  description = "Map of custom_audiences values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no custom_audiences are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.custom_audiences if v.custom_audiences != null && length(v.custom_audiences) > 0 }
}
output "cloud_run_v2_services_default_uri_disabled" {
  description = "Map of default_uri_disabled values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no default_uri_disabled are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.default_uri_disabled if v.default_uri_disabled != null }
}
output "cloud_run_v2_services_delete_time" {
  description = "Map of delete_time values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no delete_time are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "cloud_run_v2_services_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_run_v2_services_deletion_protection" {
  description = "Map of deletion_protection values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no deletion_protection are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.deletion_protection if v.deletion_protection != null }
}
output "cloud_run_v2_services_description" {
  description = "Map of description values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no description are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_run_v2_services_effective_annotations" {
  description = "Map of effective_annotations values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no effective_annotations are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "cloud_run_v2_services_effective_labels" {
  description = "Map of effective_labels values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no effective_labels are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "cloud_run_v2_services_etag" {
  description = "Map of etag values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no etag are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloud_run_v2_services_expire_time" {
  description = "Map of expire_time values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no expire_time are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "cloud_run_v2_services_generation" {
  description = "Map of generation values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no generation are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.generation if v.generation != null && length(v.generation) > 0 }
}
output "cloud_run_v2_services_iap_enabled" {
  description = "Map of iap_enabled values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no iap_enabled are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.iap_enabled if v.iap_enabled != null }
}
output "cloud_run_v2_services_ingress" {
  description = "Map of ingress values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no ingress are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.ingress if v.ingress != null && length(v.ingress) > 0 }
}
output "cloud_run_v2_services_invoker_iam_disabled" {
  description = "Map of invoker_iam_disabled values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no invoker_iam_disabled are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.invoker_iam_disabled if v.invoker_iam_disabled != null }
}
output "cloud_run_v2_services_labels" {
  description = "Map of labels values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no labels are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "cloud_run_v2_services_last_modifier" {
  description = "Map of last_modifier values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no last_modifier are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.last_modifier if v.last_modifier != null && length(v.last_modifier) > 0 }
}
output "cloud_run_v2_services_latest_created_revision" {
  description = "Map of latest_created_revision values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no latest_created_revision are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.latest_created_revision if v.latest_created_revision != null && length(v.latest_created_revision) > 0 }
}
output "cloud_run_v2_services_latest_ready_revision" {
  description = "Map of latest_ready_revision values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no latest_ready_revision are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.latest_ready_revision if v.latest_ready_revision != null && length(v.latest_ready_revision) > 0 }
}
output "cloud_run_v2_services_launch_stage" {
  description = "Map of launch_stage values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no launch_stage are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.launch_stage if v.launch_stage != null && length(v.launch_stage) > 0 }
}
output "cloud_run_v2_services_location" {
  description = "Map of location values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no location are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cloud_run_v2_services_multi_region_settings" {
  description = "Map of multi_region_settings values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no multi_region_settings are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => one(v.multi_region_settings) if v.multi_region_settings != null && length(v.multi_region_settings) > 0 }
}
output "cloud_run_v2_services_name" {
  description = "Map of name values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no name are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_run_v2_services_observed_generation" {
  description = "Map of observed_generation values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no observed_generation are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.observed_generation if v.observed_generation != null && length(v.observed_generation) > 0 }
}
output "cloud_run_v2_services_project" {
  description = "Map of project values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no project are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloud_run_v2_services_reconciling" {
  description = "Map of reconciling values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no reconciling are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.reconciling if v.reconciling != null }
}
output "cloud_run_v2_services_scaling" {
  description = "Map of scaling values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no scaling are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => one(v.scaling) if v.scaling != null && length(v.scaling) > 0 }
}
output "cloud_run_v2_services_ssh_enabled" {
  description = "Map of ssh_enabled values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no ssh_enabled are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.ssh_enabled if v.ssh_enabled != null }
}
output "cloud_run_v2_services_tags" {
  description = "Map of tags values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no tags are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloud_run_v2_services_template" {
  description = "Map of template values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no template are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => one(v.template) if v.template != null && length(v.template) > 0 }
}
output "cloud_run_v2_services_terminal_condition" {
  description = "Map of terminal_condition values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no terminal_condition are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.terminal_condition if v.terminal_condition != null && length(v.terminal_condition) > 0 }
}
output "cloud_run_v2_services_terraform_labels" {
  description = "Map of terraform_labels values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no terraform_labels are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "cloud_run_v2_services_traffic" {
  description = "Map of traffic values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no traffic are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.traffic if v.traffic != null && length(v.traffic) > 0 }
}
output "cloud_run_v2_services_traffic_statuses" {
  description = "Map of traffic_statuses values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no traffic_statuses are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.traffic_statuses if v.traffic_statuses != null && length(v.traffic_statuses) > 0 }
}
output "cloud_run_v2_services_uid" {
  description = "Map of uid values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no uid are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "cloud_run_v2_services_update_time" {
  description = "Map of update_time values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no update_time are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "cloud_run_v2_services_uri" {
  description = "Map of uri values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no uri are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.uri if v.uri != null && length(v.uri) > 0 }
}
output "cloud_run_v2_services_urls" {
  description = "Map of urls values across all cloud_run_v2_services, keyed the same as var.cloud_run_v2_services except keys with no urls are omitted"
  value       = { for k, v in google_cloud_run_v2_service.cloud_run_v2_services : k => v.urls if v.urls != null && length(v.urls) > 0 }
}

