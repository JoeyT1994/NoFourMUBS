import KernelAtlas.Edge.ChartSlope
import KernelAtlas.Edge.GlobalChart

/-! Local checked slope bounds give the openness field of a glued edge chart. -/

open Hadamard6 NoFourMUBs.SeedAtlas Filter Topology Metric Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

lemma localOf_ewOf (D : EBoxD) (u : Fin 4 → ℝ) : localOf D (ewOf D u) = u := by
  ext i
  simp [localOf, ewOf]

@[fun_prop] lemma continuous_ewOf (D : EBoxD) : Continuous (ewOf D) := by
  unfold ewOf
  fun_prop

/-- One checked local chart suffices at each point of an open parameter region. -/
theorem open_of_local_chart {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (F : QFrame) (q : FrameQ) (hf : frameOK F q = true)
    (PF : RMat6) {H V : RootDiffD} (P : List Seed.CT)
    (hh : rootDiffOK B D false D.phH D.eH D.YH H = true)
    (hv : rootDiffOK B D true D.phV D.eV D.YV V = true)
    {Y : List ℤ} {s : ℕ} (hs : slopeOK D.hb Y (etaJacT B D F q H V P) s = true)
    (Q : (Fin 4 → ℝ) → RMat6) {S : Set (Fin 4 → ℝ)} (hS : IsOpen S)
    (hQ : ∀ w ∈ S, ∀ hw : w ∈ boxRegion D,
      Q w = C.Q ⟨localOf D w, hw⟩)
    {w : Fin 4 → ℝ} (hw : w ∈ S)
    (hi : {u | Seed.InBox D.hb u} ∈ 𝓝 (localOf D w)) :
    (fun w => frameEta F q (hor (Q w-PF))) '' S ∈ 𝓝 (frameEta F q (hor (Q w-PF))) := by
  let u := localOf D w
  have hu : u ∈ interior {u | Seed.InBox D.hb u} := mem_interior_iff_mem_nhds.mpr hi
  have hpre : {u | ewOf D u ∈ S} ∈ 𝓝 u := by
    apply (continuous_ewOf D).continuousAt.preimage_mem_nhds
    simpa only [u, ewOf_localOf] using hS.mem_nhds hw
  obtain ⟨r, hr, hb⟩ := Metric.nhds_basis_closedBall.mem_iff.mp
    (inter_mem (isOpen_interior.mem_nhds hu) hpre)
  have hop := C.etaChart_open hok F q PF P hh hv hs hr (fun v hv => (hb hv).1)
  have he : C.etaChart F q PF u = frameEta F q (hor (Q w-PF)) := by
    have hwb : w ∈ boxRegion D := show Seed.InBox D.hb u from interior_subset hu
    rw [frameEta_hor hf]
    unfold BoxChart.etaChart
    rw [C.extendQ_eq ⟨u, interior_subset hu⟩, hQ w hw hwb]
  rw [he] at hop
  apply Filter.mem_of_superset hop
  rintro _ ⟨v, hv, rfl⟩
  have hvi := interior_subset (hb hv).1
  have hvS := (hb hv).2
  refine ⟨ewOf D v, hvS, ?_⟩
  change frameEta F q (hor (Q (ewOf D v)-PF)) = C.etaChart F q PF v
  rw [frameEta_hor hf]
  have hvb : ewOf D v ∈ boxRegion D := by
    change Seed.InBox D.hb (localOf D (ewOf D v))
    rwa [localOf_ewOf]
  rw [hQ _ hvS hvb]
  unfold BoxChart.etaChart
  rw [C.extendQ_eq ⟨v, hvi⟩]
  congr 3
  apply Subtype.ext
  exact localOf_ewOf D v

end NoFourMUBs.KernelAtlas.Edge
