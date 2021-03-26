view: bb_fielding_postseason {
  sql_table_name: "LOOKER"."BB_FIELDING_POSTSEASON" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${round} || ${year} || ${pos} ;;
  }

  dimension: a {
    type: number
    sql: ${TABLE}."A" ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}."CS" ;;
  }

  dimension: dp {
    type: number
    sql: ${TABLE}."DP" ;;
  }

  dimension: e {
    type: number
    sql: ${TABLE}."E" ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: gs {
    type: number
    sql: ${TABLE}."GS" ;;
  }

  dimension: inn_outs {
    type: number
    sql: ${TABLE}."INN_OUTS" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: pb {
    type: number
    sql: ${TABLE}."PB" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: po {
    type: number
    sql: ${TABLE}."PO" ;;
  }

  dimension: pos {
    type: string
    sql: ${TABLE}."POS" ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}."ROUND" ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: tp {
    type: number
    sql: ${TABLE}."TP" ;;
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
