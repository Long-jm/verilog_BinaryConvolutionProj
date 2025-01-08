# verilog_BinaryConvolutionProj

Verilog project that implements a binary convolution theoretically as part of a neural network.
Project was simulated with Modelsim2019.2 and synthesized with Synopsys2019.

Abstract:
Researchers discovered that neural networks can be trained so that weights and inputs
can be rounded to just their sign, -1 and 1. That allows multiply and add to be replaced by
XNORs and bit counting during the convolution stage. The project's goal is to implement a
single stage of an all binary convolution neural network. All the weight and input data is binary.
They take on values of -1 and 1, which are represented by 0 and 1 respectively. The inputs come
from an input SRAM, the weights from a weight SRAM and the outputs are written to an output
SRAM memory. This project only accepts a 3x3 weight matrix, a 4x4 input matrix, and a 2x2
output matrix.
Through a multi-stage development and verification process, this project's solution was
to continuously compute the convolution since power would only be expended when new inputs
were presented which would cause new computations and new values stored in flip-flops. This
project achieved a total power of 6.2646e-02 mW, a total cell area of 296.32um^2, a clock
period of 3, and it presents the output 2 cycles from when the signal is sent to compute the
solution.
