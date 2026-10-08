import KarlssonConditionedCompiler

import KarlssonCell9218880916c75f25

import KarlssonCell93e8bf756b48dd8c

import KarlssonCell94b3328b40448a8e

import KarlssonCelle3157b4f71baa481

import KarlssonCell01ff82bd13920046

import KarlssonCell48bd1b0d7cd71d72

import KarlssonCellbcb593dfdf71c9ac

import KarlssonCelle086ac16a10de966

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace Mub6.Classification.KarlssonConditioning.Metrics

open Mub6.Numerical Mub6.Classification.KarlssonCompiler

noncomputable section

def width (b : RationalRectangle) : ℚ := max (b.reHi-b.reLo) (b.imHi-b.imLo)

theorem singularAInput_gain : 5 * width (directBox KarlssonCell9218880916c75f25.input) ≤ width (KarlssonCell93e8bf756b48dd8c.input.phases 0) := by decide +kernel

#print axioms singularAInput_gain

theorem singularAOutput_gain : (19/5) * width (directBox KarlssonCell94b3328b40448a8e.input) ≤ width (KarlssonCelle3157b4f71baa481.input.phases 2) := by decide +kernel

#print axioms singularAOutput_gain

theorem singularBInput_gain : 5 * width (directBox KarlssonCell01ff82bd13920046.input) ≤ width (KarlssonCell48bd1b0d7cd71d72.input.phases 0) := by decide +kernel

#print axioms singularBInput_gain

theorem singularBOutput_gain : (19/5) * width (directBox KarlssonCellbcb593dfdf71c9ac.input) ≤ width (KarlssonCelle086ac16a10de966.input.phases 3) := by decide +kernel

#print axioms singularBOutput_gain

end

end Mub6.Classification.KarlssonConditioning.Metrics
