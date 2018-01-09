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
      enable_conditional_formatting: true
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
      conditional_formatting: [{type: high to low, value: !!null '',
                                background_color: !!null '',
                                font_color: {name: Custom, colors: ["#df5555", "#eaa153", "#92c26e"]},
                                palette: !!null '',
                                bold: false,
                                italic: false,
                                strikethrough: false
                              }]
