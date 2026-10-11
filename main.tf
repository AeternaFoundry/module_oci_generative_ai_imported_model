resource "oci_generative_ai_imported_model" "generative_ai_imported_models" {
  for_each = var.generative_ai_imported_models

  compartment_id = each.value.compartment_id
  capabilities   = each.value.capabilities
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  vendor         = each.value.vendor
  version        = each.value.version

  data_source {
    access_token = each.value.data_source.access_token
    branch       = each.value.data_source.branch
    bucket       = each.value.data_source.bucket
    commit       = each.value.data_source.commit
    model_id     = each.value.data_source.model_id
    namespace    = each.value.data_source.namespace
    prefix_name  = each.value.data_source.prefix_name
    region       = each.value.data_source.region
    source_type  = each.value.data_source.source_type
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

