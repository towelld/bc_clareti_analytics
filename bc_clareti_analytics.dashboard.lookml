- dashboard: bc_clareti_analytics
  title: Clareti Analytics
  layout: static
  width: 2040
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

    - name: unmatched_count_bar
      title: Unmatched Count
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_bar
      left: 0
      top: 0
      height: 4
      width: 9
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      fields: [v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.sum_unmatched]
      pivots: [v_bluecrest_ca_ageing.account]
      sorts: [v_bluecrest_ca_ageing.account]
      limit: 500
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: BCAPLN,
              name: BCAPLN, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: BNPPNY,
              name: BNPPNY, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: CITILN,
              name: CITILN, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: CSFBEU,
              name: CSFBEU, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: JPYENNY,
              name: JPYENNY, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: MLILLN,
              name: MLILLN, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: MSILLN,
              name: MSILLN, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: SOCGLN,
              name: SOCGLN, axisId: v_bluecrest_ca_ageing.sum_unmatched}]}]

    - name: unmatched_count_pie
      title: Percentage
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_pie
      left: 9
      top: 0
      height: 4
      width: 5
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      fields: [v_bluecrest_ca_ageing.percent_unmatched, v_bluecrest_ca_ageing.account]
      sorts: [v_bluecrest_ca_ageing.account]
      limit: 500
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: BCAPLN,
              name: BCAPLN, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: BNPPNY,
              name: BNPPNY, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: CITILN,
              name: CITILN, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: CSFBEU,
              name: CSFBEU, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: JPYENNY,
              name: JPYENNY, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: MLILLN,
              name: MLILLN, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: MSILLN,
              name: MSILLN, axisId: v_bluecrest_ca_ageing.percent_unmatched}, {id: SOCGLN,
              name: SOCGLN, axisId: v_bluecrest_ca_ageing.percent_unmatched}]}]

    - name: unmatched_value_bar
      title: Unmatched Value (USD)
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_bar
      left: 15
      top: 0
      height: 4
      width: 9
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      fields: [v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.sum_settle_amount_usd]
      pivots: [v_bluecrest_ca_ageing.account]
      sorts: [v_bluecrest_ca_ageing.account]
      limit: 500
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: BCAPLN,
              name: BCAPLN, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: BNPPNY,
              name: BNPPNY, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: CITILN,
              name: CITILN, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: CSFBEU,
              name: CSFBEU, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: JPYENNY,
              name: JPYENNY, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: MLILLN,
              name: MLILLN, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: MSILLN,
              name: MSILLN, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: SOCGLN,
              name: SOCGLN, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}]}]

    - name: unmatched_value_pie
      title: Percentage
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_pie
      left: 24
      top: 0
      height: 4
      width: 5
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      fields: [v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.percent_settle_amount_usd]
      sorts: [v_bluecrest_ca_ageing.account]
      limit: 500
      value_labels: none
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: BCAPLN,
              name: BCAPLN, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: BNPPNY,
              name: BNPPNY, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: CITILN,
              name: CITILN, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: CSFBEU,
              name: CSFBEU, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: JPYENNY,
              name: JPYENNY, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: MLILLN,
              name: MLILLN, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: MSILLN,
              name: MSILLN, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}, {id: SOCGLN,
              name: SOCGLN, axisId: v_bluecrest_ca_ageing.percent_settle_amount_usd}]}]

    - name: break_count_by_age_chart
      title: Break Count by Control and Account by Age
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_column
      left: 0
      top: 4
      height: 3
      width: 14
      fields: [v_bluecrest_ca_ageing.sum_unmatched, v_bluecrest_ca_ageing.age_created]
      pivots: [v_bluecrest_ca_ageing.age_created]
      fill_fields: [v_bluecrest_ca_ageing.age_created]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_created]
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
      top: 7
      height: 6
      width: 14
      fields: [v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner,
        v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.age_created, v_bluecrest_ca_ageing.sum_unmatched]
      pivots: [v_bluecrest_ca_ageing.age_created]
      fill_fields: [v_bluecrest_ca_ageing.age_created]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_created, v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner, v_bluecrest_ca_ageing.account]
      limit: 500
      total: true
      row_total: right
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
      left: 15
      top: 4
      height: 3
      width: 14
      fields: [v_bluecrest_ca_ageing.sum_settle_amount_usd, v_bluecrest_ca_ageing.age_created]
      pivots: [v_bluecrest_ca_ageing.age_created]
      fill_fields: [v_bluecrest_ca_ageing.age_created]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_created]
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

    - name: break_value_by_age_table
      title: Detail
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: table
      left: 15
      top: 7
      height: 6
      width: 14
      fields: [v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner,
        v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.age_created, v_bluecrest_ca_ageing.sum_settle_amount_usd]
      pivots: [v_bluecrest_ca_ageing.age_created]
      fill_fields: [v_bluecrest_ca_ageing.age_created]
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_created, v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner, v_bluecrest_ca_ageing.account]
      limit: 500
      total: true
      row_total: right
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
        v_bluecrest_ca_ageing.sum_settle_amount_usd: Value (USD)
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB

    - name: break_count_by_settle_chart
      title: Break Count by Control and Account by Settlement Date
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_column
      left: 0
      top: 13
      height: 3
      width: 14
      fields: [v_bluecrest_ca_ageing.sum_unmatched, v_bluecrest_ca_ageing.age_settle]
      pivots: [v_bluecrest_ca_ageing.age_settle]
      fill_fields: [v_bluecrest_ca_ageing.age_settle]
      filters:
        v_bluecrest_ca_ageing.control_type: Transactions
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_settle]
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
        Below 0 - 0 - v_bluecrest_ca_ageing.sum_unmatched: "#ff0000"
        0 to 3 - 1 - v_bluecrest_ca_ageing.sum_unmatched: "#df5555"
        4 to 7 - 2 - v_bluecrest_ca_ageing.sum_unmatched: "#eaa153"
        8 to 15 - 3 - v_bluecrest_ca_ageing.sum_unmatched: "#92c26e"
        16 or Above - 4 - v_bluecrest_ca_ageing.sum_unmatched: "#646569"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
      showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
      type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
          4, name: Below 4, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: 4
          to 7, name: 4 to 7, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {id: 8
          to 15, name: 8 to 15, axisId: v_bluecrest_ca_ageing.sum_unmatched}, {
          id: 16 or Above, name: 16 or Above, axisId: v_bluecrest_ca_ageing.sum_unmatched}]}]

    - name: break_count_by_settle_table
      title: Detail
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: table
      left: 0
      top: 16
      height: 6
      width: 14
      fields: [v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner,
        v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.age_settle, v_bluecrest_ca_ageing.sum_unmatched]
      pivots: [v_bluecrest_ca_ageing.age_settle]
      fill_fields: [v_bluecrest_ca_ageing.age_settle]
      filters:
        v_bluecrest_ca_ageing.control_type: Transactions
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_settle, v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner, v_bluecrest_ca_ageing.account]
      limit: 500
      total: true
      row_total: right
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

    - name: break_value_by_settle_chart
      title: Break Value (USD) by Control and Account by Settlement Date
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: looker_column
      left: 15
      top: 13
      height: 3
      width: 14
      fields: [v_bluecrest_ca_ageing.sum_settle_amount_usd, v_bluecrest_ca_ageing.age_settle]
      pivots: [v_bluecrest_ca_ageing.age_settle]
      fill_fields: [v_bluecrest_ca_ageing.age_settle]
      filters:
        v_bluecrest_ca_ageing.control_type: Transactions
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_settle]
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
        v_bluecrest_ca_ageing.sum_settle_amount_usd: Value (USD)
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB
      series_colors:
        Below 0 - 0 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#ff0000"
        0 to 3 - 1 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#df5555"
        4 to 7 - 2 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#eaa153"
        8 to 15 - 3 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#92c26e"
        16 or Above - 4 - v_bluecrest_ca_ageing.sum_settle_amount_usd: "#646569"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
      showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
      type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
          4, name: Below 4, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: 4
          to 7, name: 4 to 7, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {id: 8
          to 15, name: 8 to 15, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}, {
          id: 16 or Above, name: 16 or Above, axisId: v_bluecrest_ca_ageing.sum_settle_amount_usd}]}]

    - name: break_value_by_settle_table
      title: Detail
      model: bc_clareti_analytics
      explore: v_bluecrest_ca_ageing
      type: table
      left: 15
      top: 16
      height: 6
      width: 14
      fields: [v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner,
        v_bluecrest_ca_ageing.account, v_bluecrest_ca_ageing.age_settle, v_bluecrest_ca_ageing.sum_settle_amount_usd]
      pivots: [v_bluecrest_ca_ageing.age_settle]
      fill_fields: [v_bluecrest_ca_ageing.age_settle]
      filters:
        v_bluecrest_ca_ageing.control_type: Transactions
      listen:
        control_name: v_bluecrest_ca_ageing.control_name
        control_owner: v_bluecrest_ca_ageing.control_owner
        account: v_bluecrest_ca_ageing.account
      sorts: [v_bluecrest_ca_ageing.age_settle, v_bluecrest_ca_ageing.control_name, v_bluecrest_ca_ageing.control_owner, v_bluecrest_ca_ageing.account]
      limit: 500
      total: true
      row_total: right
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
        v_bluecrest_ca_ageing.sum_settle_amount_usd: Value (USD)
        v_bluecrest_ca_ageing.control_name: Name
        v_bluecrest_ca_ageing.control_owner: Owner
        v_bluecrest_ca_ageing.account: Account/PB
