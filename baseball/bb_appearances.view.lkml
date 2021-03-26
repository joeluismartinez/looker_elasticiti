view: bb_appearances {
  sql_table_name: "LOOKER"."BB_APPEARANCES" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} ;;
  }

  dimension: g_1_b {
    type: number
    sql: ${TABLE}."G_1B" ;;
  }

  dimension: g_2_b {
    type: number
    sql: ${TABLE}."G_2B" ;;
  }

  dimension: g_3_b {
    type: number
    sql: ${TABLE}."G_3B" ;;
  }

  dimension: g_all {
    type: number
    sql: ${TABLE}."G_ALL" ;;
  }

  dimension: g_batting {
    type: number
    sql: ${TABLE}."G_BATTING" ;;
  }

  dimension: g_c {
    type: number
    sql: ${TABLE}."G_C" ;;
  }

  dimension: g_cf {
    type: number
    sql: ${TABLE}."G_CF" ;;
  }

  dimension: g_defense {
    type: number
    sql: ${TABLE}."G_DEFENSE" ;;
  }

  dimension: g_dh {
    type: number
    sql: ${TABLE}."G_DH" ;;
  }

  dimension: g_lf {
    type: number
    sql: ${TABLE}."G_LF" ;;
  }

  dimension: g_of {
    type: number
    sql: ${TABLE}."G_OF" ;;
  }

  dimension: g_p {
    type: number
    sql: ${TABLE}."G_P" ;;
  }

  dimension: g_ph {
    type: number
    sql: ${TABLE}."G_PH" ;;
  }

  dimension: g_pr {
    type: number
    sql: ${TABLE}."G_PR" ;;
  }

  dimension: g_rf {
    type: number
    sql: ${TABLE}."G_RF" ;;
  }

  dimension: g_ss {
    type: number
    sql: ${TABLE}."G_SS" ;;
  }

  dimension: gs {
    type: number
    sql: ${TABLE}."GS" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
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
