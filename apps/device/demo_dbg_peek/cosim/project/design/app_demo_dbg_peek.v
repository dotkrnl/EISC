// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="app_demo_dbg_peek,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.916000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=104,HLS_SYN_LUT=358}" *)

module app_demo_dbg_peek (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        reset_app_demo_dbg_peek_V_dout,
        reset_app_demo_dbg_peek_V_empty_n,
        reset_app_demo_dbg_peek_V_read,
        dbg_peek_req_V_dout,
        dbg_peek_req_V_empty_n,
        dbg_peek_req_V_read,
        dbg_peek_resp_V_din,
        dbg_peek_resp_V_full_n,
        dbg_peek_resp_V_write,
        app_dram_read_req_V_num_din,
        app_dram_read_req_V_num_full_n,
        app_dram_read_req_V_num_write,
        app_dram_read_req_V_addr_din,
        app_dram_read_req_V_addr_full_n,
        app_dram_read_req_V_addr_write,
        app_dram_read_resp_V_last_dout,
        app_dram_read_resp_V_last_empty_n,
        app_dram_read_resp_V_last_read,
        app_dram_read_resp_V_data_V_dout,
        app_dram_read_resp_V_data_V_empty_n,
        app_dram_read_resp_V_data_V_read,
        app_dram_write_req_data_V_last_din,
        app_dram_write_req_data_V_last_full_n,
        app_dram_write_req_data_V_last_write,
        app_dram_write_req_data_V_data_V_din,
        app_dram_write_req_data_V_data_V_full_n,
        app_dram_write_req_data_V_data_V_write,
        app_dram_write_req_apply_V_num_din,
        app_dram_write_req_apply_V_num_full_n,
        app_dram_write_req_apply_V_num_write,
        app_dram_write_req_apply_V_addr_din,
        app_dram_write_req_apply_V_addr_full_n,
        app_dram_write_req_apply_V_addr_write,
        app_input_data_V_data_V_dout,
        app_input_data_V_data_V_empty_n,
        app_input_data_V_data_V_read,
        app_input_data_V_len_dout,
        app_input_data_V_len_empty_n,
        app_input_data_V_len_read,
        app_input_data_V_eop_dout,
        app_input_data_V_eop_empty_n,
        app_input_data_V_eop_read,
        app_output_data_V_data_V_din,
        app_output_data_V_data_V_full_n,
        app_output_data_V_data_V_write,
        app_output_data_V_len_din,
        app_output_data_V_len_full_n,
        app_output_data_V_len_write,
        app_output_data_V_eop_din,
        app_output_data_V_eop_full_n,
        app_output_data_V_eop_write,
        app_input_params_V_dout,
        app_input_params_V_empty_n,
        app_input_params_V_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input   reset_app_demo_dbg_peek_V_dout;
input   reset_app_demo_dbg_peek_V_empty_n;
output   reset_app_demo_dbg_peek_V_read;
input  [31:0] dbg_peek_req_V_dout;
input   dbg_peek_req_V_empty_n;
output   dbg_peek_req_V_read;
output  [31:0] dbg_peek_resp_V_din;
input   dbg_peek_resp_V_full_n;
output   dbg_peek_resp_V_write;
output  [7:0] app_dram_read_req_V_num_din;
input   app_dram_read_req_V_num_full_n;
output   app_dram_read_req_V_num_write;
output  [63:0] app_dram_read_req_V_addr_din;
input   app_dram_read_req_V_addr_full_n;
output   app_dram_read_req_V_addr_write;
input   app_dram_read_resp_V_last_dout;
input   app_dram_read_resp_V_last_empty_n;
output   app_dram_read_resp_V_last_read;
input  [511:0] app_dram_read_resp_V_data_V_dout;
input   app_dram_read_resp_V_data_V_empty_n;
output   app_dram_read_resp_V_data_V_read;
output   app_dram_write_req_data_V_last_din;
input   app_dram_write_req_data_V_last_full_n;
output   app_dram_write_req_data_V_last_write;
output  [511:0] app_dram_write_req_data_V_data_V_din;
input   app_dram_write_req_data_V_data_V_full_n;
output   app_dram_write_req_data_V_data_V_write;
output  [7:0] app_dram_write_req_apply_V_num_din;
input   app_dram_write_req_apply_V_num_full_n;
output   app_dram_write_req_apply_V_num_write;
output  [63:0] app_dram_write_req_apply_V_addr_din;
input   app_dram_write_req_apply_V_addr_full_n;
output   app_dram_write_req_apply_V_addr_write;
input  [511:0] app_input_data_V_data_V_dout;
input   app_input_data_V_data_V_empty_n;
output   app_input_data_V_data_V_read;
input  [15:0] app_input_data_V_len_dout;
input   app_input_data_V_len_empty_n;
output   app_input_data_V_len_read;
input   app_input_data_V_eop_dout;
input   app_input_data_V_eop_empty_n;
output   app_input_data_V_eop_read;
output  [511:0] app_output_data_V_data_V_din;
input   app_output_data_V_data_V_full_n;
output   app_output_data_V_data_V_write;
output  [15:0] app_output_data_V_len_din;
input   app_output_data_V_len_full_n;
output   app_output_data_V_len_write;
output   app_output_data_V_eop_din;
input   app_output_data_V_eop_full_n;
output   app_output_data_V_eop_write;
input  [31:0] app_input_params_V_dout;
input   app_input_params_V_empty_n;
output   app_input_params_V_read;

reg ap_idle;
reg reset_app_demo_dbg_peek_V_read;
reg dbg_peek_req_V_read;
reg dbg_peek_resp_V_write;
reg app_input_params_V_read;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    dbg_peek_resp_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] reset_reg_408;
reg   [0:0] empty_n_7_reg_571;
reg   [0:0] empty_n_6_reg_576;
reg   [31:0] p_1_reg_420;
wire   [0:0] empty_n_7_fu_481_p1;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_predicate_op74_write_state3;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_phi_mux_reset_phi_fu_412_p4;
reg   [31:0] tmp_1_reg_580;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_reset_be_phi_fu_468_p4;
reg   [31:0] ap_phi_mux_p_1_be_phi_fu_455_p4;
reg   [31:0] ap_phi_mux_p_025_1_phi_fu_434_p4;
wire   [31:0] sum_fu_516_p2;
wire   [31:0] ap_phi_reg_pp0_iter1_p_025_1_reg_431;
wire   [0:0] ap_phi_reg_pp0_iter0_reset_1_reg_441;
reg   [0:0] ap_phi_reg_pp0_iter1_reset_1_reg_441;
wire   [31:0] ap_phi_reg_pp0_iter1_p_1_be_reg_451;
wire   [0:0] p_reset_1_fu_544_p2;
wire   [0:0] ap_phi_reg_pp0_iter1_reset_be_reg_464;
reg    app_input_data_V_len0_update;
wire   [0:0] grp_nbread_fu_328_p4_0;
reg    app_output_data_V_len1_update;
wire   [0:0] empty_n_4_fu_493_p1;
reg    ap_block_pp0_stage0_01001;
reg    app_dram_read_resp_V_last0_update;
wire   [0:0] grp_nbread_fu_357_p3_0;
reg    app_dram_read_req_V_num1_update;
wire   [0:0] empty_n_5_fu_512_p1;
reg    app_dram_write_req_data_V_last1_update;
reg    app_dram_write_req_apply_V_num1_update;
reg   [31:0] reset_cnt_fu_312;
wire   [31:0] p_s_fu_551_p3;
wire   [31:0] reset_cnt_1_fu_526_p2;
wire   [0:0] tmp_6_fu_532_p2;
wire   [0:0] not_s_fu_538_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_188;
reg    ap_condition_107;
reg    ap_condition_175;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if (((empty_n_7_fu_481_p1 == 1'd1) & (ap_phi_mux_reset_phi_fu_412_p4 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_441 <= reset_app_demo_dbg_peek_V_empty_n;
        end else if ((ap_phi_mux_reset_phi_fu_412_p4 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_441 <= ap_phi_mux_reset_phi_fu_412_p4;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_441 <= ap_phi_reg_pp0_iter0_reset_1_reg_441;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_1_reg_420 <= ap_phi_mux_p_1_be_phi_fu_455_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_1_reg_420 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1)))) begin
        reset_cnt_fu_312 <= p_s_fu_551_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_cnt_fu_312 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        reset_reg_408 <= ap_phi_mux_reset_be_phi_fu_468_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_reg_408 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_reset_phi_fu_412_p4 == 1'd0) & (empty_n_7_fu_481_p1 == 1'd0))) begin
        empty_n_6_reg_576 <= dbg_peek_req_V_empty_n;
        tmp_1_reg_580 <= dbg_peek_req_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_reset_phi_fu_412_p4 == 1'd0))) begin
        empty_n_7_reg_571 <= reset_app_demo_dbg_peek_V_empty_n;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_188)) begin
        if ((empty_n_6_reg_576 == 1'd0)) begin
            ap_phi_mux_p_025_1_phi_fu_434_p4 = p_1_reg_420;
        end else if ((empty_n_6_reg_576 == 1'd1)) begin
            ap_phi_mux_p_025_1_phi_fu_434_p4 = sum_fu_516_p2;
        end else begin
            ap_phi_mux_p_025_1_phi_fu_434_p4 = ap_phi_reg_pp0_iter1_p_025_1_reg_431;
        end
    end else begin
        ap_phi_mux_p_025_1_phi_fu_434_p4 = ap_phi_reg_pp0_iter1_p_025_1_reg_431;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_107)) begin
        if (((empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
            ap_phi_mux_p_1_be_phi_fu_455_p4 = ap_phi_mux_p_025_1_phi_fu_434_p4;
        end else if (((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1))) begin
            ap_phi_mux_p_1_be_phi_fu_455_p4 = 32'd0;
        end else begin
            ap_phi_mux_p_1_be_phi_fu_455_p4 = ap_phi_reg_pp0_iter1_p_1_be_reg_451;
        end
    end else begin
        ap_phi_mux_p_1_be_phi_fu_455_p4 = ap_phi_reg_pp0_iter1_p_1_be_reg_451;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_107)) begin
        if (((empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
            ap_phi_mux_reset_be_phi_fu_468_p4 = 1'd0;
        end else if (((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1))) begin
            ap_phi_mux_reset_be_phi_fu_468_p4 = p_reset_1_fu_544_p2;
        end else begin
            ap_phi_mux_reset_be_phi_fu_468_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_464;
        end
    end else begin
        ap_phi_mux_reset_be_phi_fu_468_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_464;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_reset_phi_fu_412_p4 = ap_phi_mux_reset_be_phi_fu_468_p4;
    end else begin
        ap_phi_mux_reset_phi_fu_412_p4 = reset_reg_408;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ((app_dram_read_req_V_num_full_n & app_dram_read_req_V_addr_full_n) == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_5_fu_512_p1 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
        app_dram_read_req_V_num1_update = 1'b1;
    end else begin
        app_dram_read_req_V_num1_update = 1'b0;
    end
end

always @ (*) begin
    if ((((app_dram_read_resp_V_last_empty_n & app_dram_read_resp_V_data_V_empty_n) == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))))) begin
        app_dram_read_resp_V_last0_update = 1'b1;
    end else begin
        app_dram_read_resp_V_last0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ((app_dram_write_req_apply_V_num_full_n & app_dram_write_req_apply_V_addr_full_n) == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_5_fu_512_p1 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
        app_dram_write_req_apply_V_num1_update = 1'b1;
    end else begin
        app_dram_write_req_apply_V_num1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ((app_dram_write_req_data_V_last_full_n & app_dram_write_req_data_V_data_V_full_n) == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_5_fu_512_p1 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
        app_dram_write_req_data_V_last1_update = 1'b1;
    end else begin
        app_dram_write_req_data_V_last1_update = 1'b0;
    end
end

always @ (*) begin
    if ((((app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n & app_input_data_V_data_V_empty_n) == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))))) begin
        app_input_data_V_len0_update = 1'b1;
    end else begin
        app_input_data_V_len0_update = 1'b0;
    end
end

always @ (*) begin
    if (((app_input_params_V_empty_n == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_7_reg_571 == 1'd1) | (reset_reg_408 == 1'd1))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (app_input_params_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))))) begin
        app_input_params_V_read = 1'b1;
    end else begin
        app_input_params_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ((app_output_data_V_len_full_n & app_output_data_V_eop_full_n & app_output_data_V_data_V_full_n) == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_4_fu_493_p1 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0))) begin
        app_output_data_V_len1_update = 1'b1;
    end else begin
        app_output_data_V_len1_update = 1'b0;
    end
end

always @ (*) begin
    if (((dbg_peek_req_V_empty_n == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & ((ap_phi_mux_reset_phi_fu_412_p4 == 1'd1) | (empty_n_7_fu_481_p1 == 1'd1))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (dbg_peek_req_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_reset_phi_fu_412_p4 == 1'd0) & (empty_n_7_fu_481_p1 == 1'd0))))) begin
        dbg_peek_req_V_read = 1'b1;
    end else begin
        dbg_peek_req_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_n_6_reg_576 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        dbg_peek_resp_V_blk_n = dbg_peek_resp_V_full_n;
    end else begin
        dbg_peek_resp_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op74_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dbg_peek_resp_V_write = 1'b1;
    end else begin
        dbg_peek_resp_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (reset_app_demo_dbg_peek_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_reset_phi_fu_412_p4 == 1'd0))) begin
        reset_app_demo_dbg_peek_V_read = 1'b1;
    end else begin
        reset_app_demo_dbg_peek_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((dbg_peek_resp_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op74_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((dbg_peek_resp_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op74_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((dbg_peek_resp_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op74_write_state3 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((dbg_peek_resp_V_full_n == 1'b0) & (ap_predicate_op74_write_state3 == 1'b1));
end

always @ (*) begin
    ap_condition_107 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_condition_175 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_188 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0) & (1'b0 == ap_block_pp0_stage0));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_reset_1_reg_441 = 'bx;

assign ap_phi_reg_pp0_iter1_p_025_1_reg_431 = 'bx;

assign ap_phi_reg_pp0_iter1_p_1_be_reg_451 = 'bx;

assign ap_phi_reg_pp0_iter1_reset_be_reg_464 = 'bx;

always @ (*) begin
    ap_predicate_op74_write_state3 = ((empty_n_6_reg_576 == 1'd1) & (empty_n_7_reg_571 == 1'd0) & (reset_reg_408 == 1'd0));
end

assign ap_ready = 1'b0;

assign app_dram_read_req_V_addr_din = 64'd0;

assign app_dram_read_req_V_addr_write = app_dram_read_req_V_num1_update;

assign app_dram_read_req_V_num_din = 8'd0;

assign app_dram_read_req_V_num_write = app_dram_read_req_V_num1_update;

assign app_dram_read_resp_V_data_V_read = app_dram_read_resp_V_last0_update;

assign app_dram_read_resp_V_last_read = app_dram_read_resp_V_last0_update;

assign app_dram_write_req_apply_V_addr_din = 64'd0;

assign app_dram_write_req_apply_V_addr_write = app_dram_write_req_apply_V_num1_update;

assign app_dram_write_req_apply_V_num_din = 8'd0;

assign app_dram_write_req_apply_V_num_write = app_dram_write_req_apply_V_num1_update;

assign app_dram_write_req_data_V_data_V_din = 512'd0;

assign app_dram_write_req_data_V_data_V_write = app_dram_write_req_data_V_last1_update;

assign app_dram_write_req_data_V_last_din = 1'd0;

assign app_dram_write_req_data_V_last_write = app_dram_write_req_data_V_last1_update;

assign app_input_data_V_data_V_read = app_input_data_V_len0_update;

assign app_input_data_V_eop_read = app_input_data_V_len0_update;

assign app_input_data_V_len_read = app_input_data_V_len0_update;

assign app_output_data_V_data_V_din = app_input_data_V_data_V_dout;

assign app_output_data_V_data_V_write = app_output_data_V_len1_update;

assign app_output_data_V_eop_din = app_input_data_V_eop_dout;

assign app_output_data_V_eop_write = app_output_data_V_len1_update;

assign app_output_data_V_len_din = app_input_data_V_len_dout;

assign app_output_data_V_len_write = app_output_data_V_len1_update;

assign dbg_peek_resp_V_din = (tmp_1_reg_580 + p_1_reg_420);

assign empty_n_4_fu_493_p1 = grp_nbread_fu_328_p4_0;

assign empty_n_5_fu_512_p1 = grp_nbread_fu_357_p3_0;

assign empty_n_7_fu_481_p1 = reset_app_demo_dbg_peek_V_empty_n;

assign grp_nbread_fu_328_p4_0 = (app_input_data_V_len_empty_n & app_input_data_V_eop_empty_n & app_input_data_V_data_V_empty_n);

assign grp_nbread_fu_357_p3_0 = (app_dram_read_resp_V_last_empty_n & app_dram_read_resp_V_data_V_empty_n);

assign not_s_fu_538_p2 = (tmp_6_fu_532_p2 ^ 1'd1);

assign p_reset_1_fu_544_p2 = (not_s_fu_538_p2 & ap_phi_reg_pp0_iter1_reset_1_reg_441);

assign p_s_fu_551_p3 = ((tmp_6_fu_532_p2[0:0] === 1'b1) ? 32'd0 : reset_cnt_1_fu_526_p2);

assign reset_cnt_1_fu_526_p2 = (reset_cnt_fu_312 + 32'd1);

assign sum_fu_516_p2 = (tmp_1_reg_580 + p_1_reg_420);

assign tmp_6_fu_532_p2 = ((reset_cnt_1_fu_526_p2 == 32'd2048) ? 1'b1 : 1'b0);

endmodule //app_demo_dbg_peek