view: bb_fielding {
  sql_table_name: "LOOKER"."BB_FIELDING" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} || ${stint} || ${pos} ;;
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

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}."STINT" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: wp {
    type: number
    sql: ${TABLE}."WP" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  dimension: zr {
    type: number
    sql: ${TABLE}."ZR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
