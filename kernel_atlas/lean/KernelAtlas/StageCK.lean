import KernelAtlas.Edges
import KernelAtlas.Clique

/-!
# A Stage C certificate from kernel checks

`stageCK` builds `StageCCert ((1/2π) • P) T rH n r rF` from
* the bin cover `Covered … (leafL labs)` (direct and tangent tests, label membership; `Tangent.lean`, `Labels.lean`);
* `labsOK`, `labsSmall` (label centres and radii);
* `edgesOK`: every pair whose O (U) bit is clear is excluded by the direct O (U) test (`Edges.lean`);
* `noTwo`: no two disjoint O-6-cliques with all cross pairs in U (`Clique.lean`).

The leaves are all `(u, a)` that the cover produces, as a subtype; the labels are `Fin labs.length`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

def labD : Lab := ⟨0, 0, 0, 0, 0, 0⟩

/-- Every clear O (U) bit is backed by an exclusion test. -/
def edgesOK (tb : Tab) (pq : ParQ) (labs : List Lab) (oR uR : ℕ → ℕ) : Bool :=
  allNat labs.length fun i => allNat labs.length fun j =>
    ((oR i).testBit j || edgeOB tb pq (labs.getD i labD) (labs.getD j labD)) &&
    ((uR i).testBit j || edgeUB tb pq (labs.getD i labD) (labs.getD j labD))

lemma getD_fin (labs : List Lab) (b : Fin labs.length) : labs.getD b labD = labs.get b := by
  rw [List.getD_eq_getElem _ _ b.isLt]; rfl

lemma edgesOK_spec {tb : Tab} {pq : ParQ} {labs : List Lab} {oR uR : ℕ → ℕ} (h : edgesOK tb pq labs oR uR = true)
    (b d : Fin labs.length) :
    ((oR b).testBit d = true ∨ edgeOB tb pq (labs.get b) (labs.get d) = true) ∧
    ((uR b).testBit d = true ∨ edgeUB tb pq (labs.get b) (labs.get d) = true) := by
  have h1 := allNat_spec (allNat_spec h b b.isLt) d d.isLt
  simp only [Bool.and_eq_true, Bool.or_eq_true, getD_fin] at h1
  exact h1

lemma tabB_euB {tb : Tab} {c : Cfg} {pq : ParQ} {L1 L2 L3 L4 L5 : List CT} (h : tabB tb c pq L1 L2 L3 L4 L5 = true) :
    euB tb = true := by
  simp only [tabB, Bool.and_eq_true] at h
  exact h.1.1.1.1.1.1.1.2

/-- **Stage C from the kernel checks.** -/
noncomputable def stageCK {P : RMat6} {T : Fin 4 → RMat6} {rH n r rF : ℝ} {W0 : V12} {tb : Tab} {c : Cfg}
    {pq : ParQ} {labs : List Lab} {oR uR : ℕ → ℕ}
    (hcov : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P T rH n r rF W0 (leafL labs) β)
    (hp : ParOK c pq) (hEU : euB tb = true) (hok : labsOK labs = true) (hsm : labsSmall labs = true)
    (hed : edgesOK tb pq labs oR uR = true) (hcl : noTwo labs.length oR uR = true) :
    StageCCert ((1 / (2 * Real.pi)) • P) T rH n r rF where
  ι := {l : (I6 → ℝ) × ℝ // l.1 j0 = 0 ∧ 0 ≤ l.2 ∧
    ((∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ l.1 l.2) ∨
      ∃ L ∈ labs, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * l.2 ^ 2 →
        InLabel L.v L.s (fun j => e (l.1 j + x j)))}
  α := Fin labs.length
  u l := l.1.1
  a l := l.1.2
  v b := (labs.get b).v
  s b := (labs.get b).s
  O b d := (oR b).testBit d = true
  U b d := (uR b).testBit d = true
  hu0 l := l.2.1
  htree β hβ0 hβ := by
    obtain ⟨u, a, hu0, ha0, hin, hcase⟩ := hcov β hβ0 hβ
    refine ⟨⟨(u, a), hu0, ha0, ?_⟩, ha0, hin⟩
    rcases hcase with hrej | ⟨t1, t2, t3, t4, t5, rfl, rfl, hl⟩
    · exact .inl hrej
    · obtain ⟨L, hL, hx⟩ := leafL_sound hok hl
      exact .inr ⟨L, hL, fun x hx0 hx2 => hx x hx0 hx2⟩
  hleaf l := by
    rcases l.2.2.2 with hrej | ⟨L, hL, hx⟩
    · exact .inl hrej
    · obtain ⟨i, rfl⟩ := List.get_of_mem hL
      exact .inr ⟨i, hx⟩
  hsmall b := labsSmall_spec hsm (List.get_mem _ _)
  hO b d hbd δ _ := by
    have := (edgesOK_spec hed b d).1.resolve_left hbd
    exact edgeOB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) this _ δ
  hU b d hbd δ _ := by
    have := (edgesOK_spec hed b d).2.resolve_left hbd
    exact edgeUB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) this _ δ
  hgraph := noTwo_sound hcl

end NoFourMUBs.KernelAtlas
