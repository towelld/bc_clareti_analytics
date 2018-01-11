connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: v_bluecrest_ca_ageing {
  persist_for: "5 minutes"
}
