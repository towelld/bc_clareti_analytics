view: v_bluecrest_ca_ageing {
  sql_table_name: dbo.v_Bluecrest_CA_Ageing ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: age {
    type: tier
    tiers: [4,8,16]
    style: integer
    sql: DATEDIFF(DAY, ${TABLE}.DateTimeCreated, GETDATE()) ;;
  }

  dimension_group: date_time_created {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.DateTimeCreated ;;
    label: "Date Created"
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
