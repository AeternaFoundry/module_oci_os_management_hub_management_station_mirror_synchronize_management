resource "oci_os_management_hub_management_station_mirror_synchronize_management" "os_management_hub_management_station_mirror_synchronize_managements" {
  for_each = var.os_management_hub_management_station_mirror_synchronize_managements

  management_station_id = each.value.management_station_id
  mirror_id             = each.value.mirror_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

