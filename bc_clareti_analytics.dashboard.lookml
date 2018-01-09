- dashboard: bc_clareti_analytics
  title: Clareti Analytics
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: control_name
    type: field_filter
    model: bc_clareti_analytics
    explore: v_bluecrest_ca_ageing
    field: v_bluecrest_ca_ageing.control_name
  - name: control_owner
    type: field_filter
    model: bc_clareti_analytics
    explore: v_bluecrest_ca_ageing
    field: v_bluecrest_ca_ageing.control_owner
  - name: account
    type: field_filter
    model: bc_clareti_analytics
    explore: v_bluecrest_ca_ageing
    field: v_bluecrest_ca_ageing.account

  elements:

    - name: break_count_by_age_chart
      title: Break Count by Control and Account by Age
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_column
      left: 0
      top: 0
      height: 3
      width: 11
      fields: [v_bluecrest_ca_ageing.sum_unmatched, v_bluecrest_ca_ageing.age]
      pivots: [v_bluecrest_ca_ageing.age]
      fill_fields: [v_bluecrest_ca_ageing.age]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age]
      limit: 500
      column_limit: 50
      total: true
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      enable_conditional_formatting: true
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        v_bluecrest_ca_ageing.sum_unmatched: Value (USD)
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB
      series_colors:
        Below 4 - 0 - v_bluecrest_ca_ageing.sum_unmatched: "#92c26e"
        4 to 7 - 1 - v_bluecrest_ca_ageing.sum_unmatched: "#eaa153"
        8 to 15 - 2 - v_bluecrest_ca_ageing.sum_unmatched: "#df5555"
        16 or Above - 3 - v_bluecrest_ca_ageing.sum_unmatched: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
      showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
      type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
          4, name: Below 4, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: 4
          to 7, name: 4 to 7, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: 8
          to 15, name: 8 to 15, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {
          id: 16 or Above, name: 16 or Above, axisId: v_bluecrest_ca_ageing.sum_unmatched}]}]

    - name: break_count_by_age_table
      title: Detail
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: table
      left: 0
      top: 3
      height: 6
      width: 11
      fields: [v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner,
        v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.age, v_bluecrest_ca_ageing.sum_unmatched]
      pivots: [v_bluecrest_ca_ageing.age]
      fill_fields: [v_bluecrest_ca_ageing.age]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age, v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner, v_bluecrest_ca_ageing.account]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        v_bluecrest_ca_ageing.sum_unmatched: Count
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB

    - name: break_value_by_age_chart
      title: Break Value (USD) by Control and Account by Age
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_column
      left: 12
      top: 0
      height: 3
      width: 11
      fields: [v_bluecrest_ca_ageing.sum_settle_amount_usd, v_bluecrest_ca_ageing.age]
      pivots: [v_bluecrest_ca_ageing.age]
      fill_fields: [v_bluecrest_ca_ageing.age]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age]
      limit: 500
      column_limit: 50
      total: true
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      enable_conditional_formatting: true
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        v_bluecrest_ca_ageing.sum_settle_amount_usd: Count
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB
      series_colors:
        Below 4 - 0 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#92c26e"
        4 to 7 - 1 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#eaa153"
        8 to 15 - 2 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#df5555"
        16 or Above - 3 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
      showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
      type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
          4, name: Below 4, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: 4
          to 7, name: 4 to 7, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: 8
          to 15, name: 8 to 15, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {
          id: 16 or Above, name: 16 or Above, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}]}]
