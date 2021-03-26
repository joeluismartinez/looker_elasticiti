view: bb_fielding_outfield {
  sql_table_name: "LOOKER"."BB_FIELDING_OUTFIELD" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${stint} || ${year} ;;
  }

  dimension: gcf {
    type: number
    sql: ${TABLE}."GCF" ;;
  }

  dimension: glf {
    type: number
    sql: ${TABLE}."GLF" ;;
  }

  dimension: grf {
    type: number
    sql: ${TABLE}."GRF" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}."STINT" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
