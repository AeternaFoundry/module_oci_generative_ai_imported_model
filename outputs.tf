output "generative_ai_imported_models_id" {
  description = "Map of id values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no id are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generative_ai_imported_models_capabilities" {
  description = "Map of capabilities values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no capabilities are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.capabilities if v.capabilities != null && length(v.capabilities) > 0 }
}
output "generative_ai_imported_models_compartment_id" {
  description = "Map of compartment_id values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no compartment_id are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "generative_ai_imported_models_data_source" {
  description = "Map of data_source values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no data_source are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => one(v.data_source) if v.data_source != null && length(v.data_source) > 0 }
}
output "generative_ai_imported_models_defined_tags" {
  description = "Map of defined_tags values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no defined_tags are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "generative_ai_imported_models_description" {
  description = "Map of description values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no description are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.description if v.description != null && length(v.description) > 0 }
}
output "generative_ai_imported_models_display_name" {
  description = "Map of display_name values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no display_name are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "generative_ai_imported_models_freeform_tags" {
  description = "Map of freeform_tags values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "generative_ai_imported_models_lifecycle_details" {
  description = "Map of lifecycle_details values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "generative_ai_imported_models_previous_state" {
  description = "Map of previous_state values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no previous_state are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.previous_state if v.previous_state != null && length(v.previous_state) > 0 }
}
output "generative_ai_imported_models_state" {
  description = "Map of state values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no state are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.state if v.state != null && length(v.state) > 0 }
}
output "generative_ai_imported_models_system_tags" {
  description = "Map of system_tags values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no system_tags are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "generative_ai_imported_models_time_created" {
  description = "Map of time_created values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no time_created are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "generative_ai_imported_models_time_updated" {
  description = "Map of time_updated values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no time_updated are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "generative_ai_imported_models_vendor" {
  description = "Map of vendor values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no vendor are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.vendor if v.vendor != null && length(v.vendor) > 0 }
}
output "generative_ai_imported_models_version" {
  description = "Map of version values across all generative_ai_imported_models, keyed the same as var.generative_ai_imported_models except keys with no version are omitted"
  value       = { for k, v in oci_generative_ai_imported_model.generative_ai_imported_models : k => v.version if v.version != null && length(v.version) > 0 }
}

