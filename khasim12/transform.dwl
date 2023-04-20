%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload distinctBy($.department)map(item,index)->{
    "department": item.department,
    "count":payload countBy ($.department==item.department )
}


/*in this by using distinctBy and map functions i have Filter department and count as the desired output*/
