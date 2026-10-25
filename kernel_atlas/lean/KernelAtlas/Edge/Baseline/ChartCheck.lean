import KernelAtlas.Edge.Baseline.C1eCheck
import KernelAtlas.Edge.Chart

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

theorem box0_label : labelOK ball box0 = true := by decide +kernel

theorem box0_chart : chartOK ball box0 = true :=
  by simp only [chartOK, box0_ok, box0_label, Bool.and_self]

noncomputable def box0_chartData : BoxChart ball box0 :=
  boxChart (by have h := box0_ok; rw [c1eBox_eq, Bool.and_eq_true] at h; exact h.1) box0_label

end NoFourMUBs.KernelAtlas.Edge.Baseline
