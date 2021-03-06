#include <insider_itc.h>

#include "app_gzip.cpp"

void interconnects() {
  app_gzip(dbg_peek_req, dbg_peek_resp, app_dram_read_req, app_dram_read_resp,
           app_dram_write_req_data, app_dram_write_req_apply, app_input_data,
           app_output_data, app_input_params);
}
