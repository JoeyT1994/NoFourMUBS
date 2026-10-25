import KernelAtlas.Edge.FullBox
import KernelAtlas.Edge.Baseline.EnclosureCheck
import KernelAtlas.Edge.Baseline.RootDiffCheck
import KernelAtlas.Edge.Baseline.SlopeCheck

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge Filter Topology Metric Set

def full0 : FullBoxD := ⟨box0, diffH0, diffV0, derivativeP0, slopeY0, slopeQ0⟩

theorem full0_checked : fullBox ball enclosure0 Fourier.frame Fourier.fq full0 = true := by
  simp only [fullBox, full0, Bool.and_eq_true]
  exact ⟨⟨⟨⟨box0_chart, box0_enclosure⟩, box0_diffH⟩, box0_diffV⟩, box0_slope⟩

/-- The numerical baseline checks prove openness for its actual matched completion chart. -/
theorem box0_open {w : Fin 4 → ℝ} {r : ℝ} (hr : 0 < r)
    (hb : closedBall w r ⊆ interior {u | Seed.InBox box0.hb u}) :
    (box0_chartData.etaChart Fourier.frame Fourier.fq NoFourMUBs.SeedAtlas.F6phase) '' closedBall w r ∈
      𝓝 (box0_chartData.etaChart Fourier.frame Fourier.fq NoFourMUBs.SeedAtlas.F6phase w) := by
  exact box0_chartData.etaChart_open (fullBox_sound full0_checked).core
    Fourier.frame Fourier.fq _ derivativeP0 box0_diffH box0_diffV box0_slope hr hb

end NoFourMUBs.KernelAtlas.Edge.Baseline
