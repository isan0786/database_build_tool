select
  city,
  {{ dbt_utils.pivot(
      "customer_data.state_code",
      dbt_utils.get_column_values(ref('customer_data'), "state_code")
  ) }}
from {{ ref('customer_data') }}
group by city