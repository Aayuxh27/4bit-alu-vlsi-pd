# 4-Bit ALU — Open Source VLSI PD Flow

A full RTL-to-GDS implementation of a 4-bit ALU using entirely open-source EDA tools on Ubuntu 24.04.

## Tools Used
- **Icarus Verilog + GTKWave** — Functional simulation
- **Yosys** — Logic synthesis → sky130 standard cells
- **OpenSTA 3.0.0** — Static timing analysis
- **OpenROAD** — Floorplan, placement, CTS, routing (in progress)
- **Magic VLSI** — Layout, DRC, parasitic extraction
- **Netgen** — LVS
- **KLayout** — GDS viewing and DRC

## PDK
SkyWater 130nm (sky130A) via volare — version 0fe599b2

## Key Results So Far
| Stage | Result |
|-------|--------|
| Synthesis | 62 cells, 394 µm² (sky130_fd_sc_hd) |
| Critical path | 6.98ns (a[1] → zero flag via nor4) |
| Max frequency | ~111 MHz |
| WNS | +1.02 ns (no violations) |
| TNS | 0.00 ns (no violations) |

## Project Structure
- `rtl/` — Verilog source (alu4bit.v)
- `sim/` — Testbench and simulation outputs
- `synth/` — Yosys synthesis scripts and gate-level netlist
- `sta/` — OpenSTA scripts and constraints
- `floorplan/` — OpenROAD floorplan scripts
- `reports/` — All tool reports
- `outputs/` — Final GDS and deliverables

## Current Status
- [x] RTL design and functional simulation
- [x] Logic synthesis (Yosys → sky130, 62 cells, 394 µm²)
- [x] Static timing analysis (WNS=+1.02ns, critical path=6.98ns)
- [ ] Floorplan & Placement (OpenROAD)
- [ ] CTS & Routing (OpenROAD)
- [ ] DRC/LVS (Magic + Netgen)
- [ ] GDS export
