# Barrel-Shifter-Verilog
A parameterized 8-bit Barrel Shifter designed in Verilog, supporting both left and right shift operations. Simulated using Xilinx Vivado with a comprehensive testbench. Ideal for learning and understanding logical shift operations in digital design.
# 🌀 Barrel Shifter in Verilog (8-bit, Parameterized)

This project implements a **parameterized barrel shifter** in Verilog (default width: 8 bits). It supports both **left and right logical shifts**, and includes a testbench for validation using **Xilinx Vivado**.

---

## 📐 Overview

The `barrel_shifter` module performs logical shifts on `N`-bit input data (`data_in`) based on a shift amount (`shift_amt`) and direction (`shift_dir`).

- `shift_dir = 0` → Left shift  
- `shift_dir = 1` → Right shift

The design is parameterized for easy scaling to different bit widths.

---

## 🧪 Testbench

The testbench `barrel_shifter_tb.v` verifies the module by applying different shift amounts and directions on a fixed 8-bit input and prints the output using `$monitor`.

Example:
Time=0 | data_in=10101010 | shift_amt=1 | shift_dir=0 | data_out=01010100
Time=10 | data_in=10101010 | shift_amt=3 | shift_dir=1 | data_out=00010101

---

## 📁 Project Structure

barrel-shifter-vivado/
├── barrel_shifter.v # Main Verilog module
├── barrel_shifter_tb.v # Testbench for simulation
├── Images/
│   ├── schematic.png
│   └── simulation.png
├── README.md # Project documentation
├── .gitignore # Ignores Vivado-generated files
└── LICENSE # MIT License

---

## 🧰 Requirements

- Xilinx Vivado (any version supporting Verilog simulation)
- Basic understanding of Verilog and logic design

---

## 🚀 Run in Vivado

1. Open Vivado and create a new RTL project.
2. Add `barrel_shifter.v` and `barrel_shifter_tb.v` to the project.
3. Set `barrel_shifter_tb.v` as the top module for simulation.
4. Run the behavioral simulation.
5. View the waveform or use the console for result analysis.

---


## 🧾 RTL Schematic

![RTL Schematic](schematic/rtl_schematic.png)
<img width="1499" height="652" alt="schematics" src="https://github.com/user-attachments/assets/fced6c06-09d1-46a5-9bd9-c63e89253152" />

## 📷 Simulation Output

![Simulation Waveform](simulation/simulation_waveform.png)
<img width="1489" height="578" alt="simulation" src="https://github.com/user-attachments/assets/570a9a9f-aac2-4dd9-a9b0-7eeff954ea32" />

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Author

Isha Rani
