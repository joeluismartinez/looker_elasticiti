view: bb_batting_postseason {
  sql_table_name: "LOOKER"."BB_BATTING_POSTSEASON" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} || ${round} ;;
  }

  dimension: ab {
    type: number
    sql: ${TABLE}."AB" ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}."BB" ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}."CS" ;;
  }

  dimension: double {
    type: number
    sql: ${TABLE}."DOUBLE" ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: g_idp {
    type: number
    value_format_name: id
    sql: ${TABLE}."G_IDP" ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}."H" ;;
  }

  dimension: hbp {
    type: number
    sql: ${TABLE}."HBP" ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}."HR" ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}."IBB" ;;
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

  dimension: r {
    type: number
    sql: ${TABLE}."R" ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}."RBI" ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}."ROUND" ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}."SF" ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}."SH" ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}."SO" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: triple {
    type: number
    sql: ${TABLE}."TRIPLE" ;;
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

view: bb_batting_test {}
