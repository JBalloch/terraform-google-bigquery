project_id                  = "d40tm4-test-terraform"
default_table_expiration_ms = 3600000
dataset_labels = {
  env      = "dev"
  billable = "true"
  owner    = "JBalloch"
}
tables = [
  {
    table_id = "foo",
    schema   = "sample_bq_schema.json",
    time_partitioning = {
      type                     = "DAY",
      field                    = null,
      require_partition_filter = false,
      expiration_ms            = null,
        },
    expiration_time = null,
    clustering      = ["fullVisitorId", "visitId"],
    labels = {
      env      = "dev"
      billable = "true"
      owner    = "JBalloch"
    },
  },
  {
    table_id          = "bar",
    schema            = "sample_bq_schema.json",
    time_partitioning = null,
    expiration_time   = 2524604400000, # 2050/01/01
    clustering        = [],
    labels = {
      env      = "devops"
      billable = "true"
      owner    = "JBalloch"
    },
  }
]
