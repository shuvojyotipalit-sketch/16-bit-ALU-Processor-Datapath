#  Parameterized 16-bit ALU-Based Processor Datapath (Verilog)

##  Description

This project implements a simple processor datapath using Verilog. It consists of a parameterized Arithmetic Logic Unit (ALU), a register file, and a control unit. The design supports multiple arithmetic and logical operations and demonstrates the complete RTL design flow including simulation and synthesis.

---

## Features

* 16-bit parameterized ALU
* Supported operations:

  * ADD
  * SUB
  * AND
  * OR
  * XOR
  * SHIFT operations
* Register file with 4 general-purpose registers
* Control unit for opcode decoding
* Status flags:

  * Carry
  * Zero
  * Overflow
* Behavioral simulation using testbench
* RTL synthesis and resource utilization analysis

---

## Architecture

```
           +------------------+
opcode --->|   Control Unit   |
           +--------+---------+
                    |
                    v
        +-----------------------+
        |     Register File     |
        +----------+------------+
                   |
                   v
               +-------+
               |  ALU  |
               +-------+
                   |
                   v
             Write Back to Registers
```

---

##  Working

The processor executes operations based on the opcode.

Example:

```
opcode = 010
rs1 = 00  (R0)
rs2 = 11  (R3)
rd  = 01  (R1)
```

Operation performed:

```
R1 = R0 AND R3
```

---

## Simulation Result

![Waveform](results/waveform.png)

The waveform verifies correct operation of:

* ALU computation
* Register selection
* Data flow through datapath

---

##  Synthesis Result

![Utilization](results/utilization.png)

Example resource usage:

* LUTs: ~96
* Flip-Flops: ~1
* IO: ~61

---

##  RTL Schematic

![Datapath](results/datapath.png)

The schematic shows the integration of:

* Control Unit
* Register File
* ALU

---

##  Tools Used

* Verilog HDL
* Xilinx Vivado

---

##  Learning Outcomes

* RTL design and modular Verilog coding
* Testbench-based functional verification
* FPGA synthesis and hardware resource analysis
* Understanding of processor datapath design

---
## Future Improvements

* Add flag/status register
* Implement program counter (PC)
* Add instruction memory
* Extend to a mini 16-bit processor

---

##  Author

Shuvojyoti Palit
