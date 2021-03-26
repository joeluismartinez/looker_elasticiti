view: bb_pitching {
  sql_table_name: "LOOKER"."BB_PITCHING" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${player_id} ||${year} ||${team_id} ||${round} ;;
  }

  dimension: baopp {
    type: number
    sql: ${TABLE}."BAOPP" ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}."BB" ;;
  }

  dimension: bfp {
    type: number
    sql: ${TABLE}."BFP" ;;
  }

  dimension: bk {
    type: number
    sql: ${TABLE}."BK" ;;
  }

  dimension: cg {
    type: number
    sql: ${TABLE}."CG" ;;
  }

  dimension: er {
    type: number
    sql: ${TABLE}."ER" ;;
  }

  dimension: era {
    type: number
    sql: ${TABLE}."ERA" ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: g_dip {
    type: number
    sql: ${TABLE}."G_DIP" ;;
  }

  dimension: gf {
    type: number
    sql: ${TABLE}."GF" ;;
  }

  dimension: gs {
    type: number
    sql: ${TABLE}."GS" ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}."H" ;;
  }

  dimension: hpb {
    type: number
    sql: ${TABLE}."HPB" ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}."HR" ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}."IBB" ;;
  }

  dimension: ipouts {
    type: number
    sql: ${TABLE}."IPOUTS" ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}."L" ;;
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

  dimension: round {
    type: string
    sql: ${TABLE}."ROUND" ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}."SF" ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}."SH" ;;
  }

  dimension: sho {
    type: number
    sql: ${TABLE}."SHO" ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}."SO" ;;
  }

  dimension: sv {
    type: number
    sql: ${TABLE}."SV" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}."W" ;;
  }

  dimension: wp {
    type: number
    sql: ${TABLE}."WP" ;;
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
