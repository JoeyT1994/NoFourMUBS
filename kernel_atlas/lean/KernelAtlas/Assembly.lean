import KernelAtlas.BoundaryK
import KernelAtlas.RecordK0

/-!
# Assembly support: cross-Record links through the atlas table

Every Record's centre and radius live in the shared table (`Table/`, `cen t`, `rad t` for the atlas index `t`); a
Record's `tab.PqL` and `bars.R` are the table entries, and its boundary data name each target's centre and radius by
the same table entries. `linkOK` checks (by `decide`) that target `j` of the boundary data is atlas Record
`tgIdx[j] < N` with the table's centre and radius; `boundary_of_links` turns the per-Record `boundary` theorem, whose
hypotheses are about the data's targets, into one whose hypotheses are about the table:
`∀ t < N, (A (idx t)).P = Pmat (pqL (cen t))` and `rad t ≤ (A (idx t)).R`.

`boundary_zero`: a Record with a zero frame and `n < R` has an empty boundary shell (Tao's Record).
-/

open Matrix Hadamard6 NoFourMUBs

namespace NoFourMUBs.KernelAtlas

/-- A centre given as rows of rationals, in the layout of `Tab.PqL` and `BTgt.Pt`. -/
def pqL (L : List (List ℚ)) (j i : I6) : ℚ := (L.getD (idx j) []).getD (idx i) 0

lemma tab_pq_eq (tb : Tab) : tb.pq = pqL tb.PqL := rfl
lemma tgt_pt_eq (t : BTgt) : t.pt = pqL t.Pt := rfl

/-- Target `j` of `D` is atlas Record `tgIdx[j] < N`, with the table's centre and radius. -/
def linkOK (D : BData) (cen : ℕ → List (List ℚ)) (rad : ℕ → ℚ) (N : ℕ) (tgIdx : List ℕ) : Bool :=
  (List.range D.tg.length).all fun j =>
    match D.tg[j]? with
    | none => false
    | some t => decide (tgIdx.getD j 0 < N) && decide (t.Pt = cen (tgIdx.getD j 0)) &&
        decide (t.Rt = rad (tgIdx.getD j 0))

theorem boundary_of_links {D : BData} {cen : ℕ → List (List ℚ)} {rad : ℕ → ℚ} {N : ℕ} {tgIdx : List ℕ}
    (h : linkOK D cen rad N tgIdx = true) {ι : Type*} {A : ι → RecordCert} (idx : ℕ → ι)
    (hP : ∀ t < N, (A (idx t)).P = Pmat (pqL (cen t))) (hR : ∀ t < N, (rad t : ℝ) ≤ (A (idx t)).R) {X : Prop}
    (hb : ∀ tg : ℕ → ι, (∀ j t, D.tg[j]? = some t → (A (tg j)).P = Pmat t.pt) →
      (∀ j t, D.tg[j]? = some t → (t.Rt : ℝ) ≤ (A (tg j)).R) → X) : X := by
  have hj : ∀ j t, D.tg[j]? = some t →
      tgIdx.getD j 0 < N ∧ t.Pt = cen (tgIdx.getD j 0) ∧ t.Rt = rad (tgIdx.getD j 0) := by
    intro j t ht
    have hl : j < D.tg.length := (List.getElem?_eq_some_iff.mp ht).1
    have := range_all h hl
    rw [ht] at this
    simp only [Bool.and_eq_true, decide_eq_true_eq] at this
    exact ⟨this.1.1, this.1.2, this.2⟩
  refine hb (fun j => idx (tgIdx.getD j 0)) (fun j t ht => ?_) (fun j t ht => ?_)
  · obtain ⟨hN, hc, -⟩ := hj j t ht
    rw [hP _ hN, tgt_pt_eq, hc]
  · obtain ⟨hN, -, hr⟩ := hj j t ht
    rw [hr]; exact hR _ hN

/-- **An empty boundary**: if the frame is zero and `n < R`, no `η` lies in the shell `‖Tη‖² ≥ R² − n²`. -/
theorem boundary_zero {ι : Type*} (A : ι → RecordCert) (l : ι) (hT : ∀ k, (A l).T k = 0)
    (hn0 : 0 ≤ (A l).n) (hnR : (A l).n < (A l).R) : Nonempty (BoundaryCover A l) := by
  refine ⟨BoundaryCover.mk Empty Empty.elim Empty.elim Empty.elim Empty.elim (fun η _ h2 => ?_)
    (fun b => b.elim)⟩
  exfalso
  have h0 : sumsq (∑ k, η k • (A l).T k) = 0 := by simp [hT, sumsq]
  rw [h0] at h2
  nlinarith

end NoFourMUBs.KernelAtlas
