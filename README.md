# Switch-and-Gate-Structures
Basic Switch and Gate Structures in System Verilog

<h2>Problem One</h2>

In this problem, I generated a 2-input CMOS NAND gate and verified its timing and functionality. 

The SystemVerilog description of this structure using NMOS and PMOS transistors is attached. I used #(3, 4, 5) delay for the NMOS transistors and #(5, 6, 7) for the PMOS transistors. I generated a testbench for this circuit in SystemVerilog and examined it for various input changes, and also tested the circuit for the worst-case delay of its output making To1 and To0 transitions. 

<h2>Problem Two</h2>

In this problem, I generated a CMOS Tri-State Buffer (functionality like NOTIF1 of SystemVerilog) using four transistors for the buffer and two for its inverter. I also generated a testbench for this circuit in SystemVerilog and examined it for various input changes. I also tested the circuit for the worst-case delay of its output making To1, To0, and ToZ transitions.

<h2>Problem Three</h2>

In this probelm, I used NAND gates and generated a 4-to-1 MUX with two select inputs, s1 and s0, and four data inputs a, b, c, and d. Generate a testbench for this circuit in SystemVerilog and examine it for various input changes. 

<h2>Problem Four</h2>

Using the Tri-State Buffer of Problem 2, I generated a 4-to-1 MUX with two select inputs, s1 and s0, and four data inputs a, b, c, and d. Generate a testbench for this circuit in SystemVerilog and examine it for various input changes. Among the various input changes, make sure you test the circuit for the worst-case delay of its output making To1 and To0 transitions. Make sure the time distance between your input changes is much larger than the gate delay values.


