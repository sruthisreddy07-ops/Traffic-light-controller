Traffic Light Controller Using Verilog HDL
Project Title
Design and Simulation of a Traffic Light Controller Using Verilog HDL

1. Introduction
A Traffic Light Controller is a digital control system used to manage the flow of vehicles at road intersections.

This project implements a simple traffic light controller using Verilog HDL. The controller uses a Finite State Machine (FSM) to control the Red, Yellow, and Green lights.

2. Objective
The main objectives of this project are:

To design a traffic light controller using Verilog HDL.
To implement a Finite State Machine.
To verify the controller using a testbench.
To observe the output using simulation waveforms.
3. Traffic Light States
The controller has three basic states:

State	Red	Yellow	Green
RED	1	0	0
GREEN	0	0	1
YELLOW	0	1	0

The controller follows this sequence:

RED → GREEN → YELLOW → RED

4. Block Diagram
              ┌──────────────────────┐
              │                      │
              │  Traffic Light FSM   │
              │                      │
 Clock ──────►│                      ├──► Red
 Reset ──────►│                      ├──► Yellow
              │                      ├──► Green
              │                      │
              └──────────────────────┘

5. Working Principle
The traffic light controller changes its state according to the clock signal.

After reset, the controller starts in the RED state.
It then changes to GREEN.
After the green period, it changes to YELLOW.
After the yellow period, it returns to RED.
This sequence continues continuously.
