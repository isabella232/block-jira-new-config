datagroup: fivetran_datagroup {
  sql_trigger: SELECT max(date_trunc('minute', done)) FROM @{SCHEMA_NAME}.fivetran_audit ;;
  max_cache_age: "24 hours"
}

persist_with: fivetran_datagroup

explore: sprint_config {
  extends: [sprint_core]
  extension: required
}

explore: issue_config {
  extends: [issue_core]
  extension: required
}

explore: project_config {
  extends: [project_core]
  extension: required
}

explore: epic_config {
  extends: [epic_core]
  extension: required
}
