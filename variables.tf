variable "cloud_run_v2_services" {
  description = <<EOT
Map of cloud_run_v2_services, attributes below
Required:
    - location
    - name
    - template (block):
        - annotations (optional)
        - containers (optional, block):
            - args (optional)
            - base_image_uri (optional)
            - command (optional)
            - depends_on (optional)
            - env (optional, block):
                - name (required)
                - value (optional)
                - value_source (optional, block):
                    - secret_key_ref (optional, block):
                        - secret (required)
                        - version (optional)
            - image (required)
            - liveness_probe (optional, block):
                - failure_threshold (optional)
                - grpc (optional, block):
                    - port (optional)
                    - service (optional)
                - http_get (optional, block):
                    - http_headers (optional, block):
                        - name (required)
                        - value (optional)
                    - path (optional)
                    - port (optional)
                - initial_delay_seconds (optional)
                - period_seconds (optional)
                - tcp_socket (optional, block):
                    - port (required)
                - timeout_seconds (optional)
            - name (optional)
            - ports (optional, block):
                - container_port (optional)
                - name (optional)
            - readiness_probe (optional, block):
                - failure_threshold (optional)
                - grpc (optional, block):
                    - port (optional)
                    - service (optional)
                - http_get (optional, block):
                    - path (optional)
                    - port (optional)
                - period_seconds (optional)
                - success_threshold (optional)
                - timeout_seconds (optional)
            - resources (optional, block):
                - cpu_idle (optional)
                - limits (optional)
                - startup_cpu_boost (optional)
            - sandbox_launcher (optional)
            - startup_probe (optional, block):
                - failure_threshold (optional)
                - grpc (optional, block):
                    - port (optional)
                    - service (optional)
                - http_get (optional, block):
                    - http_headers (optional, block):
                        - name (required)
                        - value (optional)
                    - path (optional)
                    - port (optional)
                - initial_delay_seconds (optional)
                - period_seconds (optional)
                - tcp_socket (optional, block):
                    - port (optional)
                - timeout_seconds (optional)
            - volume_mounts (optional, block):
                - mount_path (required)
                - name (required)
                - sub_path (optional)
            - working_dir (optional)
        - encryption_key (optional)
        - execution_environment (optional)
        - gpu_zonal_redundancy_disabled (optional)
        - health_check_disabled (optional)
        - labels (optional)
        - max_instance_request_concurrency (optional)
        - node_selector (optional, block):
            - accelerator (required)
        - revision (optional)
        - sandboxes (optional, block):
            - templates (optional, block):
                - args (optional)
                - command (optional)
                - env (optional, block):
                    - name (required)
                    - value (optional)
                - image (required)
                - name (required)
                - volume_mounts (optional, block):
                    - mount_path (required)
                    - name (required)
                    - sub_path (optional)
                - working_dir (optional)
        - scaling (optional, block):
            - concurrency_utilization (optional)
            - cpu_utilization (optional)
            - max_instance_count (optional)
            - min_instance_count (optional)
        - service_account (optional)
        - session_affinity (optional)
        - timeout (optional)
        - volumes (optional, block):
            - cloud_sql_instance (optional, block):
                - instances (optional)
            - empty_dir (optional, block):
                - medium (optional)
                - size_limit (optional)
            - gcs (optional, block):
                - bucket (required)
                - mount_options (optional)
                - read_only (optional)
            - name (required)
            - nfs (optional, block):
                - path (required)
                - read_only (optional)
                - server (required)
            - secret (optional, block):
                - default_mode (optional)
                - items (optional, block):
                    - mode (optional)
                    - path (required)
                    - version (optional)
                - secret (required)
        - vpc_access (optional, block):
            - connector (optional)
            - egress (optional)
            - network_interfaces (optional, block):
                - network (optional)
                - subnetwork (optional)
                - tags (optional)
        - workload_identity_config (optional, block):
            - identity (optional)
            - identity_certificate_enabled (optional)
            - identity_type (optional)
Optional:
    - annotations
    - client
    - client_version
    - custom_audiences
    - default_uri_disabled
    - deletion_policy
    - deletion_protection
    - description
    - iap_enabled
    - ingress
    - invoker_iam_disabled
    - labels
    - launch_stage
    - project
    - ssh_enabled
    - tags
    - binary_authorization (block):
        - breakglass_justification (optional)
        - policy (optional)
        - use_default (optional)
    - build_config (block):
        - base_image (optional)
        - enable_automatic_updates (optional)
        - environment_variables (optional)
        - function_target (optional)
        - image_uri (optional)
        - service_account (optional)
        - source_location (optional)
        - worker_pool (optional)
    - multi_region_settings (block):
        - regions (optional)
    - scaling (block):
        - manual_instance_count (optional)
        - max_instance_count (optional)
        - min_instance_count (optional)
        - scaling_mode (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - traffic (block):
        - percent (optional)
        - revision (optional)
        - tag (optional)
        - type (optional)
EOT

  type = map(object({
    location             = string
    name                 = string
    annotations          = optional(map(string))
    client               = optional(string)
    client_version       = optional(string)
    custom_audiences     = optional(list(string))
    default_uri_disabled = optional(bool)
    deletion_policy      = optional(string)
    deletion_protection  = optional(bool)
    description          = optional(string)
    iap_enabled          = optional(bool)
    ingress              = optional(string)
    invoker_iam_disabled = optional(bool)
    labels               = optional(map(string))
    launch_stage         = optional(string)
    project              = optional(string)
    ssh_enabled          = optional(bool)
    tags                 = optional(map(string))
    template = object({
      annotations = optional(map(string))
      containers = optional(list(object({
        args           = optional(list(string))
        base_image_uri = optional(string)
        command        = optional(list(string))
        depends_on     = optional(list(string))
        env = optional(list(object({
          name  = string
          value = optional(string)
          value_source = optional(object({
            secret_key_ref = optional(object({
              secret  = string
              version = optional(string)
            }))
          }))
        })))
        image = string
        liveness_probe = optional(object({
          failure_threshold = optional(number)
          grpc = optional(object({
            port    = optional(number)
            service = optional(string)
          }))
          http_get = optional(object({
            http_headers = optional(list(object({
              name  = string
              value = optional(string)
            })))
            path = optional(string)
            port = optional(number)
          }))
          initial_delay_seconds = optional(number)
          period_seconds        = optional(number)
          tcp_socket = optional(object({
            port = number
          }))
          timeout_seconds = optional(number)
        }))
        name = optional(string)
        ports = optional(object({
          container_port = optional(number)
          name           = optional(string)
        }))
        readiness_probe = optional(object({
          failure_threshold = optional(number)
          grpc = optional(object({
            port    = optional(number)
            service = optional(string)
          }))
          http_get = optional(object({
            path = optional(string)
            port = optional(number)
          }))
          period_seconds    = optional(number)
          success_threshold = optional(number)
          timeout_seconds   = optional(number)
        }))
        resources = optional(object({
          cpu_idle          = optional(bool)
          limits            = optional(map(string))
          startup_cpu_boost = optional(bool)
        }))
        sandbox_launcher = optional(bool)
        startup_probe = optional(object({
          failure_threshold = optional(number)
          grpc = optional(object({
            port    = optional(number)
            service = optional(string)
          }))
          http_get = optional(object({
            http_headers = optional(list(object({
              name  = string
              value = optional(string)
            })))
            path = optional(string)
            port = optional(number)
          }))
          initial_delay_seconds = optional(number)
          period_seconds        = optional(number)
          tcp_socket = optional(object({
            port = optional(number)
          }))
          timeout_seconds = optional(number)
        }))
        volume_mounts = optional(list(object({
          mount_path = string
          name       = string
          sub_path   = optional(string)
        })))
        working_dir = optional(string)
      })))
      encryption_key                   = optional(string)
      execution_environment            = optional(string)
      gpu_zonal_redundancy_disabled    = optional(bool)
      health_check_disabled            = optional(bool)
      labels                           = optional(map(string))
      max_instance_request_concurrency = optional(number)
      node_selector = optional(object({
        accelerator = string
      }))
      revision = optional(string)
      sandboxes = optional(object({
        templates = optional(list(object({
          args    = optional(list(string))
          command = optional(list(string))
          env = optional(list(object({
            name  = string
            value = optional(string)
          })))
          image = string
          name  = string
          volume_mounts = optional(list(object({
            mount_path = string
            name       = string
            sub_path   = optional(string)
          })))
          working_dir = optional(string)
        })))
      }))
      scaling = optional(object({
        concurrency_utilization = optional(number)
        cpu_utilization         = optional(number)
        max_instance_count      = optional(number)
        min_instance_count      = optional(number)
      }))
      service_account  = optional(string)
      session_affinity = optional(bool)
      timeout          = optional(string)
      volumes = optional(list(object({
        cloud_sql_instance = optional(object({
          instances = optional(set(string))
        }))
        empty_dir = optional(object({
          medium     = optional(string)
          size_limit = optional(string)
        }))
        gcs = optional(object({
          bucket        = string
          mount_options = optional(list(string))
          read_only     = optional(bool)
        }))
        name = string
        nfs = optional(object({
          path      = string
          read_only = optional(bool)
          server    = string
        }))
        secret = optional(object({
          default_mode = optional(number)
          items = optional(list(object({
            mode    = optional(number)
            path    = string
            version = optional(string)
          })))
          secret = string
        }))
      })))
      vpc_access = optional(object({
        connector = optional(string)
        egress    = optional(string)
        network_interfaces = optional(list(object({
          network    = optional(string)
          subnetwork = optional(string)
          tags       = optional(list(string))
        })))
      }))
      workload_identity_config = optional(object({
        identity                     = optional(string)
        identity_certificate_enabled = optional(bool)
        identity_type                = optional(string)
      }))
    })
    binary_authorization = optional(object({
      breakglass_justification = optional(string)
      policy                   = optional(string)
      use_default              = optional(bool)
    }))
    build_config = optional(object({
      base_image               = optional(string)
      enable_automatic_updates = optional(bool)
      environment_variables    = optional(map(string))
      function_target          = optional(string)
      image_uri                = optional(string)
      service_account          = optional(string)
      source_location          = optional(string)
      worker_pool              = optional(string)
    }))
    multi_region_settings = optional(object({
      regions = optional(list(string))
    }))
    scaling = optional(object({
      manual_instance_count = optional(number)
      max_instance_count    = optional(number)
      min_instance_count    = optional(number)
      scaling_mode          = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    traffic = optional(list(object({
      percent  = optional(number)
      revision = optional(string)
      tag      = optional(string)
      type     = optional(string)
    })))
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

