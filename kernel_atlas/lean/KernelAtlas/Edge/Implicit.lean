import KernelAtlas.Edge.Chart
import Mathlib.Analysis.Calculus.ImplicitContDiff

/-! Differentiability of continuous selected roots from the implicit-function theorem. -/

open Set Filter Topology

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- A continuous choice of zeros agrees locally with the implicit function. This avoids
introducing a different chart when applying the differential enclosures. -/
theorem hasStrictFDerivAt_selected_root
    {E X : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    [NormedAddCommGroup X] [NormedSpace ℝ X] [CompleteSpace X]
    {F : E × X → X} {F' : E × X →L[ℝ] X} {f : E → X} {x : E}
    (hF : HasStrictFDerivAt F F' (x, f x))
    (hinv : (F' ∘L ContinuousLinearMap.inr ℝ E X).IsInvertible)
    (hf : ContinuousAt f x) (hz : ∀ᶠ y in 𝓝 x, F (y, f y) = F (x, f x)) :
    HasStrictFDerivAt f
      (-(F' ∘L ContinuousLinearMap.inr ℝ E X).inverse ∘L
        (F' ∘L ContinuousLinearMap.inl ℝ E X)) x := by
  have hφ := hF.hasStrictFDerivAt_implicitFunctionOfProdDomain hinv
  have he := (continuousAt_id.prodMk hf).tendsto.eventually
    (hF.eventually_apply_eq_iff_implicitFunctionOfProdDomain hinv)
  apply hφ.congr_of_eventuallyEq
  filter_upwards [he, hz] with y hy hz
  exact hy.mp hz

end NoFourMUBs.KernelAtlas.Edge
