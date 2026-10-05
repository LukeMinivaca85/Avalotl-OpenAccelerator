# Avalotl OpenAccelerator

An open-source experimental platform for building advanced AI accelerator architectures from RTL toward GDSII.

The goal is to connect multiple open hardware projects into one reproducible accelerator development stack.

---

## Stack

- **GT2N** — experimental open-source 2 nm nanosheet/GAAFET research PDK
- **GT2N-SI** — experimental silicon-integration layer
- **OpenROAD** — open-source RTL-to-GDS physical implementation
- **OpenHBM** — open HBM4 controller, PHY modeling, and memory architecture work
- **Avalotl OpenAccelerator** — accelerator architecture and integration layer

---

## Architecture

```text
                     ┌──────────────────────────────┐
                     │ Avalotl OpenAccelerator      │
                     │                              │
                     │ Tensor / Matrix Compute      │
                     │ Vector / Scalar Control      │
                     │ L0 / L1 / L2 SRAM            │
                     └──────────────┬───────────────┘
                                    │
                          Accelerator Fabric
                                    │
              ┌─────────────────────┴─────────────────────┐
              │                                           │
       ┌──────▼──────┐                            ┌───────▼───────┐
       │ System Cache │                            │ HBM4 Interface │
       │ / NoC / I/O  │                            │ OpenHBM        │
       └──────────────┘                            └───────────────┘
                                    │
                                    ▼
                              RTL / Netlist
                                    │
                                    ▼
                                OpenROAD
                                    │
                                    ▼
                             GT2N / GT2N-SI
                                    │
                                    ▼
                           Experimental GDSII
