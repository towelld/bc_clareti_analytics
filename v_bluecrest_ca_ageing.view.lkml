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
    sql: DATEDIFF(DAY, ${TABLE}.date_time_created, GETDATE()) ;;
  }

  dimension_group: date_time_created {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.date_time_created ;;
    label: "Date Created"
  }

  dimension: control_name {
    type: string
    sql: ${TABLE}.control_name ;;
  }

  dimension: control_owner {
    type: string
    sql: ${TABLE}.control_owner ;;
  }

  dimension: unmatch_count {
    type: number
    sql: coalesce(${TABLE}.unmatch_count,0) ;;
  }

  measure: sum_unmatched {
    type: sum
    sql: ${unmatch_count} ;;
    value_format: "#,##0"
  }
}
