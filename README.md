# Wearable Lymphatic Drainage Massage Device – Design and Simulation

## Overview

This repository contains the research and simulation work from my Master's thesis at the University College of Southeast Norway (2017). The goal was to design a **portable, wearable device** capable of performing **lymphatic drainage massage** to enhance blood circulation, with a focus on the legs — a common site for varicose veins, reticular veins, and spider veins.

Unlike bulky pneumatic systems or high‑frequency vibration motors, this device aims to mimic the **slow, superficial pressure** of a human massage (effleurage) using **piezoelectric actuators**.

---

## Key Contributions

-  Identified **effleurage** as the most suitable massage technique for portable lymphatic drainage  
-  Defined device parameters:  
  - Frequency: **1–2 strokes/second**  
  - Pressure range: **1.86–6.53 kPa** (based on compression hosiery standards)  
  - Target tissue displacement: **3–4 mm**  
-  Selected **piezoelectric materials** (PZT and PVDF) for dry, safe operation  
-  Performed **FEM simulations (COMSOL Multiphysics 5.3)** to evaluate actuator performance  
-  Compared **contraction/expansion** vs. **bending** actuator modes  
-  **Developed MATLAB scripts** to analytically optimize unimorph bender geometry — solving for the non-piezoelectric layer thickness that maximizes deflection (see Appendix A of thesis)  
-  Optimized **unimorph** and **bimorph** bender structures for maximum deflection under **60V DC** (medical device safety limit)

---

## Main Results

| Actuator Type | Max Displacement |
|---------------|------------------|
| Longitudinal (d₃₁, PVDF) | ~9.6 × 10⁻⁹ m |
| Longitudinal (d₃₁, PZT) | ~4.9 × 10⁻⁷ m |
| Stack actuator (2 layers) | ~1.1 × 10⁻⁵ m |
| Unimorph bender (4 sections) | ~0.9 mm |
| Unimorph bender (2 sections) | ~3 mm |
| **Bimorph bender (2 sections)** | **~3.8 mm** (up to 16 mm with thinner PZT) |

Bending actuators **significantly outperform** longitudinal contraction, with **bimorph** designs achieving displacements closest to the target range.

---

## Technologies & Methods

- **Simulation**: COMSOL Multiphysics 5.3 (FEM, Structural Mechanics + Electrostatics modules)  
- **Analytical Optimization**: MATLAB (curvature differentiation, root finding, parametric sweeps)  
- **Materials**:
  - Piezoelectric: PZT(5H), PVDF
  - Non‑piezoelectric: Glass fiber composite (GFC), Carbon fiber composite (CFC), steel, aluminum, PDMS  
- **Standards**: Medical Devices Directive 93/42/EEC (Class 1), IEC 60601‑1 (60V DC limit)

---

## MATLAB Contribution in Detail

The MATLAB code solves for the **optimal thickness of the non-piezoelectric layer** in a unimorph bender. Starting from the piezoelectric curvature formula, the script:

1. Differentiates the curvature equation with respect to non-piezoelectric thickness  
2. Finds the real, positive root — the thickness value that maximizes deflection  
3. Plots the relationship between piezoelectric and non-piezoelectric thicknesses  
4. Computes the resulting tip deflection using the curvature formula  

This analytical approach **reduces trial-and-error** in material selection and was validated against COMSOL simulations.

---

## Repository Contents

📁 /docs – Full thesis PDF (HSN-Master thesis-Mirzaee.pdf)
📁 /simulations – COMSOL model files (.mph)
📁 /matlab – MATLAB scripts for curvature optimization (Appendix A)
📁 /data – Material property tables (Appendix B)
📄 README.md 


---

## How to Use This Work

1. **Review the thesis** for full theoretical background and literature review.  
2. **Open COMSOL models** to replicate or modify actuator simulations.  
3. **Run MATLAB scripts** to find optimal non‑piezoelectric layer thickness for unimorph benders.  
4. **Adapt the design** for other body parts (e.g., insole version proposed in Chapter 7).

---

## Future Work Recommendations

- Fabricate and test a **prototype** using bimorph PZT benders  
- Explore **ionic electroactive polymers (IPMC)** for lower voltage and higher deflection  
- Integrate **smart feedback** (e.g., sense tissue stiffness and adapt massage pressure)  

---

## Citation

If you use this work, please cite:

> Mirzaee, E. (2017). *Wearable Lymphatic Drainage Massage – Design and Simulation*. Master's thesis, University College of Southeast Norway.

---


## Contact

For questions or collaboration, please reach out via https://www.linkedin.com/in/elahemirzaee/ .
