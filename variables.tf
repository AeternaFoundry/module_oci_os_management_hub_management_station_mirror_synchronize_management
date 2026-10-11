variable "os_management_hub_management_station_mirror_synchronize_managements" {
  description = <<EOT
Map of os_management_hub_management_station_mirror_synchronize_managements, attributes below
Required:
    - management_station_id
    - mirror_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    management_station_id = string
    mirror_id             = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

