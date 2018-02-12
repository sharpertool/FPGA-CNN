// Code generated by afu_csr_gen


`include "spl.vh"
`include "afu.vh"
`include "afu_csr.vh"

module afu_csr
   (
    input logic clk,
    input logic resetb,
    spl_bus_t spl_bus,
    afu_bus_t afu_bus
    );

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_DSM_BASEL) begin
         afu_bus.csr.afu_dsm_base[31:0] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (~resetb) begin
         afu_bus.csr.afu_dsm_base_valid <= 0;
      end else if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_DSM_BASEL) begin
         afu_bus.csr.afu_dsm_base_valid <= 1;
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_DSM_BASEH) begin
         afu_bus.csr.afu_dsm_base[63:32] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_CNTXT_BASEL) begin
         afu_bus.csr.afu_cntxt_base[31:0] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (~resetb) begin
         afu_bus.csr.afu_cntxt_base_valid <= 0;
      end else if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_CNTXT_BASEL) begin
         afu_bus.csr.afu_cntxt_base_valid <= 1;
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_CNTXT_BASEH) begin
         afu_bus.csr.afu_cntxt_base[63:32] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_AFU_EN) begin
         afu_bus.csr.afu_en <= spl_bus.rw_rsp.data[0];
      end
   end

   always_ff @(posedge clk) begin
      if (afu_bus.csr.reset_doorbell) begin
         afu_bus.csr.doorbell <= 0;
      end else if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_DOORBELL) begin
         afu_bus.csr.doorbell <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_READ_BUFFER_LINES) begin
         afu_bus.csr.read_buffer_lines <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_READ_BUFFER_BASEL) begin
         afu_bus.csr.read_buffer_base[31:0] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_READ_BUFFER_BASEH) begin
         afu_bus.csr.read_buffer_base[63:32] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_WRITE_BUFFER_BASEL) begin
         afu_bus.csr.write_buffer_base[31:0] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_WRITE_BUFFER_BASEH) begin
         afu_bus.csr.write_buffer_base[63:32] <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (afu_bus.csr.reset_update_dsm) begin
         afu_bus.csr.update_dsm <= 0;
      end else if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_UPDATE_DSM) begin
         afu_bus.csr.update_dsm <= spl_bus.rw_rsp.data[31:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_PLL_RESET) begin
         afu_bus.csr.pll_reset <= spl_bus.rw_rsp.data[0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_LOAD_WEIGHTS) begin
         afu_bus.csr.load_weights <= spl_bus.rw_rsp.data[0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_NUM_CL_PER_FILTER) begin
         afu_bus.csr.num_cl_per_filter <= spl_bus.rw_rsp.data[7:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_NUM_FILTERS) begin
         afu_bus.csr.num_filters <= spl_bus.rw_rsp.data[15:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_MAX_WEIGHT_BUFFER_ADDR) begin
         afu_bus.csr.max_weight_buffer_addr <= spl_bus.rw_rsp.data[15:0];
      end
   end

   always_ff @(posedge clk) begin
      if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_LOAD_IMAGES) begin
         afu_bus.csr.load_images <= spl_bus.rw_rsp.data[0];
      end
   end

   always_ff @(posedge clk) begin
      if (~resetb) begin
         afu_bus.csr.write_fence <= 0;
      end else if (spl_bus.rw_rsp.cfg_valid && {spl_bus.rw_rsp.header[13:0], 2'b0} == ADDR_WRITE_FENCE) begin
         afu_bus.csr.write_fence <= spl_bus.rw_rsp.data[0];
      end
   end

endmodule