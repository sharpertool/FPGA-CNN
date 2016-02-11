`ifndef CONV_FORWARD_TEST_H
`define CONV_FORWARD_TEST_H
reg [31:0] test_input [32];
reg [31:0] test_weights [32];
reg [31:0] test_bias [4];
reg [31:0] test_output [4];
initial begin
test_input[0:7] = '{32'h42bc08ea, 32'hc117d9b4, 32'h41b9931d, 32'hc1886216, 32'hc0d38e20, 32'hc2748491, 32'hc29456ce, 32'h42a2e80b};
test_weights[0:7] = '{32'h42bbbbd4, 32'hc1604072, 32'hc1e94116, 32'h4110a30e, 32'h4199d5f3, 32'hc2611d3f, 32'hc2bcf717, 32'hc189631a};
test_bias[0] = '{32'h0};
test_output[0] = '{32'h46853379};
//############ DEBUG ############
test_input[0:7] = '{94.0174124811, -9.49065005165, 23.1968330208, -17.0478926324, -6.61109945078, -61.1294587287, -74.1695440714, 81.4532101768};
test_weights[0:7] = '{93.8668524259, -14.0157333755, -29.1567797918, 9.03980820688, 19.2294671809, -56.2785608678, -94.4825997535, -17.1733901347};
test_bias[0] = '{0.0};
test_output[0] = '{17049.7360058};
//############ END DEBUG ############
test_input[8:15] = '{32'hc2812d3c, 32'h4248ab14, 32'h4287b60f, 32'h42053bfe, 32'hc25a4d21, 32'hc23dac43, 32'h419b2dfc, 32'h42c30b8b};
test_weights[8:15] = '{32'hc24d4752, 32'h425111f5, 32'hc2a32d2d, 32'hc243ad16, 32'hc1735280, 32'hc2b74b8c, 32'h42835b05, 32'h4282b900};
test_bias[1] = '{32'h0};
test_output[1] = '{32'h46352c1e};
//############ DEBUG ############
test_input[8:15] = '{-64.5883517249, 50.1670680507, 67.8555869929, 33.3085858814, -54.575322727, -47.4182231762, 19.397452866, 97.5225424387};
test_weights[8:15] = '{-51.3196491627, 52.2675374961, -81.5882372957, -48.9190284052, -15.207641163, -91.6475518584, 65.6777703801, 65.3613256634};
test_bias[1] = '{0.0};
test_output[1] = '{11595.0293717};
//############ END DEBUG ############
test_input[16:23] = '{32'hc0e8ecc7, 32'h42664a10, 32'hc2c52a2b, 32'hc29d3fbf, 32'hc2a2503f, 32'h42c2c832, 32'hc218c9aa, 32'h428d4aa3};
test_weights[16:23] = '{32'hc0f5c548, 32'h4245be1e, 32'h4103835c, 32'h42098843, 32'hc26ceb7f, 32'h4276513a, 32'h4266d120, 32'h41c61ac9};
test_bias[2] = '{32'h0};
test_output[2] = '{32'h4618275c};
//############ DEBUG ############
test_input[16:23] = '{-7.27890362498, 57.5723264911, -98.5823580466, -78.6245021919, -81.1567284225, 97.3910073749, -38.1969391865, 70.6457752013};
test_weights[16:23] = '{-7.68033224523, 49.4356624217, 8.2195705589, 34.3830689655, -59.2299758205, 61.5793238354, 57.7042235141, 24.7630794138};
test_bias[2] = '{0.0};
test_output[2] = '{9737.83983551};
//############ END DEBUG ############
test_input[24:31] = '{32'hc21d66c4, 32'hc2317e2d, 32'hc206d358, 32'hc1f4ab06, 32'hc18d7196, 32'hc11ffcd2, 32'h42c45820, 32'h428f2f66};
test_weights[24:31] = '{32'hc2b3e184, 32'h4247d843, 32'hbf822cbf, 32'hc0707ae9, 32'hc20b6e83, 32'hc26d7efb, 32'hc29f8eb9, 32'hbe1d2426};
test_bias[3] = '{32'h0};
test_output[3] = '{32'hc5a14cba};
//############ DEBUG ############
test_input[24:31] = '{-39.3503559747, -44.3732171388, -33.7063907339, -30.5835075952, -17.6804617581, -9.99922335906, 98.1721182364, 71.5925777894};
test_weights[24:31] = '{-89.9404582018, 49.9611935336, -1.01699051301, -3.75750175305, -34.8579221107, -59.3740053475, -79.7787523708, -0.153458207479};
test_bias[3] = '{0.0};
test_output[3] = '{-5161.59065852};
//############ END DEBUG ############
end
`endif