view: bb_batting {
  sql_table_name: "LOOKER"."BB_BATTING" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} || ${stint} ;;
  }

  dimension: ab {
    type: number
    sql: ${TABLE}."AB" ;;
  }

  measure: at_bats {
    type: sum
    sql: ${ab}  ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}."BB" ;;
  }

  measure: walks {
    type: sum
    sql: ${bb} ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}."CS" ;;
  }

  measure: caught_stealing {
    type: sum
    sql: ${cs} ;;
  }

  dimension: double {
    type: number
    sql: ${TABLE}."DOUBLE" ;;
  }

  measure: doubles {
    type: sum
    sql: ${double} ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  measure: games {
    type: sum
    sql: ${g} ;;
  }

  dimension: g_idp {
    type: number
    value_format_name: id
    sql: ${TABLE}."G_IDP" ;;
  }

  measure: g_idps {
    type: sum
    sql: ${g_idp} ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}."H" ;;
  }

  measure: hits {
    type: sum
    sql: ${h} ;;
  }

  dimension: hpb {
    type: number
    hidden: yes
    sql: ${TABLE}."HPB" ;;
  }

  measure: hit_by_pitch {
    type: sum
    sql: ${hpb} ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}."HR" ;;
  }

  measure: hrs {
    type: sum
    sql: ${hr} ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}."IBB" ;;
  }

  measure: intentional_walks {
    type: sum
    sql: ${ibb} ;;
  }

  dimension: league_id {
    type: string
    hidden: yes
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

  measure: runs {
    type: sum
    sql: ${r} ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}."RBI" ;;
  }

  measure: rbis {
    type: sum
    sql: ${rbi} ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  measure: stolen_bases {
    type: sum
    sql: ${sb} ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}."SF" ;;
  }

  measure: sac_flys {
    type: sum
    sql: ${sf} ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}."SH" ;;
  }

  measure: sac_hits {
    type: sum
    sql: ${sh} ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}."SO" ;;
  }

  measure: strike_outs {
    type: sum
    sql: ${so} ;;
  }

  dimension: stint {
    type: number
    hidden: yes
    sql: ${TABLE}."STINT" ;;
  }

  dimension: team_id {
    type: string
    hidden: yes
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

  measure: batting_average {
    type: number
    value_format_name: decimal_3
    sql: ${hits} /  nullif(${at_bats},0) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
