resource "google_cloud_run_v2_service" "cloud_run_v2_services" {
  for_each = var.cloud_run_v2_services

  location             = each.value.location
  name                 = each.value.name
  annotations          = each.value.annotations
  client               = each.value.client
  client_version       = each.value.client_version
  custom_audiences     = each.value.custom_audiences
  default_uri_disabled = each.value.default_uri_disabled
  deletion_policy      = each.value.deletion_policy
  deletion_protection  = each.value.deletion_protection
  description          = each.value.description
  iap_enabled          = each.value.iap_enabled
  ingress              = each.value.ingress
  invoker_iam_disabled = each.value.invoker_iam_disabled
  labels               = each.value.labels
  launch_stage         = each.value.launch_stage
  project              = each.value.project
  ssh_enabled          = each.value.ssh_enabled
  tags                 = each.value.tags

  template {
    annotations = each.value.template.annotations
    dynamic "containers" {
      for_each = each.value.template.containers != null ? each.value.template.containers : []
      content {
        args           = containers.value.args
        base_image_uri = containers.value.base_image_uri
        command        = containers.value.command
        depends_on     = containers.value.depends_on
        dynamic "env" {
          for_each = containers.value.env != null ? containers.value.env : []
          content {
            name  = env.value.name
            value = env.value.value
            dynamic "value_source" {
              for_each = env.value.value_source != null ? [env.value.value_source] : []
              content {
                dynamic "secret_key_ref" {
                  for_each = value_source.value.secret_key_ref != null ? [value_source.value.secret_key_ref] : []
                  content {
                    secret  = secret_key_ref.value.secret
                    version = secret_key_ref.value.version
                  }
                }
              }
            }
          }
        }
        image = containers.value.image
        dynamic "liveness_probe" {
          for_each = containers.value.liveness_probe != null ? [containers.value.liveness_probe] : []
          content {
            failure_threshold = liveness_probe.value.failure_threshold
            dynamic "grpc" {
              for_each = liveness_probe.value.grpc != null ? [liveness_probe.value.grpc] : []
              content {
                port    = grpc.value.port
                service = grpc.value.service
              }
            }
            dynamic "http_get" {
              for_each = liveness_probe.value.http_get != null ? [liveness_probe.value.http_get] : []
              content {
                dynamic "http_headers" {
                  for_each = http_get.value.http_headers != null ? http_get.value.http_headers : []
                  content {
                    name  = http_headers.value.name
                    value = http_headers.value.value
                  }
                }
                path = http_get.value.path
                port = http_get.value.port
              }
            }
            initial_delay_seconds = liveness_probe.value.initial_delay_seconds
            period_seconds        = liveness_probe.value.period_seconds
            dynamic "tcp_socket" {
              for_each = liveness_probe.value.tcp_socket != null ? [liveness_probe.value.tcp_socket] : []
              content {
                port = tcp_socket.value.port
              }
            }
            timeout_seconds = liveness_probe.value.timeout_seconds
          }
        }
        name = containers.value.name
        dynamic "ports" {
          for_each = containers.value.ports != null ? [containers.value.ports] : []
          content {
            container_port = ports.value.container_port
            name           = ports.value.name
          }
        }
        dynamic "readiness_probe" {
          for_each = containers.value.readiness_probe != null ? [containers.value.readiness_probe] : []
          content {
            failure_threshold = readiness_probe.value.failure_threshold
            dynamic "grpc" {
              for_each = readiness_probe.value.grpc != null ? [readiness_probe.value.grpc] : []
              content {
                port    = grpc.value.port
                service = grpc.value.service
              }
            }
            dynamic "http_get" {
              for_each = readiness_probe.value.http_get != null ? [readiness_probe.value.http_get] : []
              content {
                path = http_get.value.path
                port = http_get.value.port
              }
            }
            period_seconds    = readiness_probe.value.period_seconds
            success_threshold = readiness_probe.value.success_threshold
            timeout_seconds   = readiness_probe.value.timeout_seconds
          }
        }
        dynamic "resources" {
          for_each = containers.value.resources != null ? [containers.value.resources] : []
          content {
            cpu_idle          = resources.value.cpu_idle
            limits            = resources.value.limits
            startup_cpu_boost = resources.value.startup_cpu_boost
          }
        }
        sandbox_launcher = containers.value.sandbox_launcher
        dynamic "startup_probe" {
          for_each = containers.value.startup_probe != null ? [containers.value.startup_probe] : []
          content {
            failure_threshold = startup_probe.value.failure_threshold
            dynamic "grpc" {
              for_each = startup_probe.value.grpc != null ? [startup_probe.value.grpc] : []
              content {
                port    = grpc.value.port
                service = grpc.value.service
              }
            }
            dynamic "http_get" {
              for_each = startup_probe.value.http_get != null ? [startup_probe.value.http_get] : []
              content {
                dynamic "http_headers" {
                  for_each = http_get.value.http_headers != null ? http_get.value.http_headers : []
                  content {
                    name  = http_headers.value.name
                    value = http_headers.value.value
                  }
                }
                path = http_get.value.path
                port = http_get.value.port
              }
            }
            initial_delay_seconds = startup_probe.value.initial_delay_seconds
            period_seconds        = startup_probe.value.period_seconds
            dynamic "tcp_socket" {
              for_each = startup_probe.value.tcp_socket != null ? [startup_probe.value.tcp_socket] : []
              content {
                port = tcp_socket.value.port
              }
            }
            timeout_seconds = startup_probe.value.timeout_seconds
          }
        }
        dynamic "volume_mounts" {
          for_each = containers.value.volume_mounts != null ? containers.value.volume_mounts : []
          content {
            mount_path = volume_mounts.value.mount_path
            name       = volume_mounts.value.name
            sub_path   = volume_mounts.value.sub_path
          }
        }
        working_dir = containers.value.working_dir
      }
    }
    encryption_key                   = each.value.template.encryption_key
    execution_environment            = each.value.template.execution_environment
    gpu_zonal_redundancy_disabled    = each.value.template.gpu_zonal_redundancy_disabled
    health_check_disabled            = each.value.template.health_check_disabled
    labels                           = each.value.template.labels
    max_instance_request_concurrency = each.value.template.max_instance_request_concurrency
    dynamic "node_selector" {
      for_each = each.value.template.node_selector != null ? [each.value.template.node_selector] : []
      content {
        accelerator = node_selector.value.accelerator
      }
    }
    revision = each.value.template.revision
    dynamic "sandboxes" {
      for_each = each.value.template.sandboxes != null ? [each.value.template.sandboxes] : []
      content {
        dynamic "templates" {
          for_each = sandboxes.value.templates != null ? sandboxes.value.templates : []
          content {
            args    = templates.value.args
            command = templates.value.command
            dynamic "env" {
              for_each = templates.value.env != null ? templates.value.env : []
              content {
                name  = env.value.name
                value = env.value.value
              }
            }
            image = templates.value.image
            name  = templates.value.name
            dynamic "volume_mounts" {
              for_each = templates.value.volume_mounts != null ? templates.value.volume_mounts : []
              content {
                mount_path = volume_mounts.value.mount_path
                name       = volume_mounts.value.name
                sub_path   = volume_mounts.value.sub_path
              }
            }
            working_dir = templates.value.working_dir
          }
        }
      }
    }
    dynamic "scaling" {
      for_each = each.value.template.scaling != null ? [each.value.template.scaling] : []
      content {
        concurrency_utilization = scaling.value.concurrency_utilization
        cpu_utilization         = scaling.value.cpu_utilization
        max_instance_count      = scaling.value.max_instance_count
        min_instance_count      = scaling.value.min_instance_count
      }
    }
    service_account  = each.value.template.service_account
    session_affinity = each.value.template.session_affinity
    timeout          = each.value.template.timeout
    dynamic "volumes" {
      for_each = each.value.template.volumes != null ? each.value.template.volumes : []
      content {
        dynamic "cloud_sql_instance" {
          for_each = volumes.value.cloud_sql_instance != null ? [volumes.value.cloud_sql_instance] : []
          content {
            instances = cloud_sql_instance.value.instances
          }
        }
        dynamic "empty_dir" {
          for_each = volumes.value.empty_dir != null ? [volumes.value.empty_dir] : []
          content {
            medium     = empty_dir.value.medium
            size_limit = empty_dir.value.size_limit
          }
        }
        dynamic "gcs" {
          for_each = volumes.value.gcs != null ? [volumes.value.gcs] : []
          content {
            bucket        = gcs.value.bucket
            mount_options = gcs.value.mount_options
            read_only     = gcs.value.read_only
          }
        }
        name = volumes.value.name
        dynamic "nfs" {
          for_each = volumes.value.nfs != null ? [volumes.value.nfs] : []
          content {
            path      = nfs.value.path
            read_only = nfs.value.read_only
            server    = nfs.value.server
          }
        }
        dynamic "secret" {
          for_each = volumes.value.secret != null ? [volumes.value.secret] : []
          content {
            default_mode = secret.value.default_mode
            dynamic "items" {
              for_each = secret.value.items != null ? secret.value.items : []
              content {
                mode    = items.value.mode
                path    = items.value.path
                version = items.value.version
              }
            }
            secret = secret.value.secret
          }
        }
      }
    }
    dynamic "vpc_access" {
      for_each = each.value.template.vpc_access != null ? [each.value.template.vpc_access] : []
      content {
        connector = vpc_access.value.connector
        egress    = vpc_access.value.egress
        dynamic "network_interfaces" {
          for_each = vpc_access.value.network_interfaces != null ? vpc_access.value.network_interfaces : []
          content {
            network    = network_interfaces.value.network
            subnetwork = network_interfaces.value.subnetwork
            tags       = network_interfaces.value.tags
          }
        }
      }
    }
    dynamic "workload_identity_config" {
      for_each = each.value.template.workload_identity_config != null ? [each.value.template.workload_identity_config] : []
      content {
        identity                     = workload_identity_config.value.identity
        identity_certificate_enabled = workload_identity_config.value.identity_certificate_enabled
        identity_type                = workload_identity_config.value.identity_type
      }
    }
  }

  dynamic "binary_authorization" {
    for_each = each.value.binary_authorization != null ? [each.value.binary_authorization] : []
    content {
      breakglass_justification = binary_authorization.value.breakglass_justification
      policy                   = binary_authorization.value.policy
      use_default              = binary_authorization.value.use_default
    }
  }

  dynamic "build_config" {
    for_each = each.value.build_config != null ? [each.value.build_config] : []
    content {
      base_image               = build_config.value.base_image
      enable_automatic_updates = build_config.value.enable_automatic_updates
      environment_variables    = build_config.value.environment_variables
      function_target          = build_config.value.function_target
      image_uri                = build_config.value.image_uri
      service_account          = build_config.value.service_account
      source_location          = build_config.value.source_location
      worker_pool              = build_config.value.worker_pool
    }
  }

  dynamic "multi_region_settings" {
    for_each = each.value.multi_region_settings != null ? [each.value.multi_region_settings] : []
    content {
      regions = multi_region_settings.value.regions
    }
  }

  dynamic "scaling" {
    for_each = each.value.scaling != null ? [each.value.scaling] : []
    content {
      manual_instance_count = scaling.value.manual_instance_count
      max_instance_count    = scaling.value.max_instance_count
      min_instance_count    = scaling.value.min_instance_count
      scaling_mode          = scaling.value.scaling_mode
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "traffic" {
    for_each = each.value.traffic != null ? each.value.traffic : []
    content {
      percent  = traffic.value.percent
      revision = traffic.value.revision
      tag      = traffic.value.tag
      type     = traffic.value.type
    }
  }
}

