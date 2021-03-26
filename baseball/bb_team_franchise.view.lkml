view: bb_team_franchise {
  sql_table_name: "LOOKER"."BB_TEAM_FRANCHISE" ;;

  dimension: active {
    type: string
    sql: ${TABLE}."ACTIVE" ;;
  }

  dimension: franchise_id {
    type: string
    primary_key: yes
    sql: ${TABLE}."FRANCHISE_ID" ;;
  }

  dimension: franchise_name {
    type: string
    sql: ${TABLE}."FRANCHISE_NAME" ;;
  }

  dimension: na_assoc {
    type: string
    sql: ${TABLE}."NA_ASSOC" ;;
  }

  measure: count {
    type: count
    drill_fields: [franchise_name]
  }
}
