variable "generative_ai_imported_models" {
  description = <<EOT
Map of generative_ai_imported_models, attributes below
Required:
    - compartment_id
    - data_source (block):
        - access_token (optional)
        - branch (optional)
        - bucket (optional)
        - commit (optional)
        - model_id (optional)
        - namespace (optional)
        - prefix_name (optional)
        - region (optional)
        - source_type (optional)
Optional:
    - capabilities
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - vendor
    - version
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    capabilities   = optional(list(string))
    defined_tags   = optional(map(string))
    description    = optional(string)
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    vendor         = optional(string)
    version        = optional(string)
    data_source = object({
      access_token = optional(string)
      branch       = optional(string)
      bucket       = optional(string)
      commit       = optional(string)
      model_id     = optional(string)
      namespace    = optional(string)
      prefix_name  = optional(string)
      region       = optional(string)
      source_type  = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_imported_models : (
        v.data_source.source_type == null || (contains([for v in ["HUGGING_FACE_MODEL", "OBJECT_STORAGE_OBJECT"] : lower(v)], lower(v.data_source.source_type)))
      )
    ])
    error_message = "must be one of: \"HUGGING_FACE_MODEL\", \"OBJECT_STORAGE_OBJECT\""
  }
}

