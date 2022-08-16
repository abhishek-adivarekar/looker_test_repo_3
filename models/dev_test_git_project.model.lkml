connection: "tiaa_dev"

# include all the views
include: "/views/**/*.view"

datagroup: dev_test_git_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# persist_with: dev_test_git_project_default_datagroup

explore: session_level {}

explore: query_level {}
