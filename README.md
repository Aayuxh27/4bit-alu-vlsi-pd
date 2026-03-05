# 4-Bit ALU — Open Source VLSI PD Flow

A full RTL-to-GDS implementation of a 4-bit ALU using entirely open-source EDA tools on Ubuntu 24.04.

## Tools Used
- **Icarus Verilog + GTKWave** — Functional simulation
- **Yosys** — Logic synthesis → sky130 standard cells
- **OpenSTA** — Static timing analysis
- **OpenROAD** — Floorplan, placement, CTS, routing
- **Magic VLSI** — Layout, DRC, parasitic extraction
- **Netgen** — LVS
- **KLayout** — GDS viewing and DRC

## PDK
SkyWater 130nm (sky130A) via volare

## Project Structure
- `rtl/` — Verilog source
- `sim/` — Testbench and simulation outputs
- `synth/` — Synthesis scripts and gate-level netlist
- `sta/` — Static timing analysis scripts
- `floorplan/` — OpenROAD floorplan scripts
- `reports/` — All tool reports
- `outputs/` — Final GDS and deliverables

## Current Status
- [x] RTL design and functional simulation
- [x] Logic synthesis (Yosys → sky130, 62 cells, 394 µm²)
- [ ] Static timing analysis
- [ ] Floorplan & Placement
- [ ] CTS & Routing
- [ ] DRC/LVS
- [ ] GDS
