view: bb_hof {
  sql_table_name: "LOOKER"."BB_HOF";;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year_id} || ${voted_by} ;;
  }

  dimension: ballots {
    type: number
    sql: ${TABLE}."BALLOTS" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: inducted {
    type: string
    sql: ${TABLE}."INDUCTED" ;;
  }

  dimension: needed {
    type: number
    sql: ${TABLE}."NEEDED" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."NOTE" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: voted_by {
    type: string
    sql: ${TABLE}."VOTED_BY" ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}."VOTES" ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}."YEAR_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
