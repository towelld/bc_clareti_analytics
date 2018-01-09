view: v_bluecrest_ca_ageing {
  sql_table_name: dbo.v_Bluecrest_CA_Ageing ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension_group: date_time_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_time_created ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.rec_name ;;
  }

  dimension: rec_owner {
    type: string
    sql: ${TABLE}.rec_owner ;;
  }

  dimension: unmatch_count {
    type: number
    sql: ${TABLE}.unmatch_count ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }
}
