import KernelAtlas.Joint2S
import KernelAtlas.CliqueB

/-!
# Stage C with the bitset clique search (`CliqueB.lean`)

`stageCK2B` is `stageCK2` with the clique step taken as the statement `NoTwoCliques` itself, so that it can come
from the chunked bitset search: `noTwo_of_pairs` splits the search by the two smallest elements `j < j₂` of the
first clique, flattened to `p = j·n + j₂` so that consecutive ranges of `p` are separate kernel decisions
(`allNat_of_ranges`).
-/

open Hadamard6 NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-- The pair `(p / n, p % n)` is not an increasing pair, or the search below it fails. -/
def pairOK (rowT : ℕ → ℕ × ℕ) (n p : ℕ) : Bool :=
  !(decide (p / n < p % n)) || !(br2T rowT n (p / n) (p % n))

theorem noTwo_of_pairs (rowT : ℕ → ℕ × ℕ) (n : ℕ) (h : allNat (n * n) (pairOK rowT n) = true) :
    NoTwoCliques (fun b c : Fin n => OT rowT b c) (fun b c : Fin n => UT rowT b c) := by
  refine noTwo_of_chunks rowT n fun j hj => Or.inr fun j₂ hj₂ hjj => ?_
  have hp : j * n + j₂ < n * n := by nlinarith
  have := (allNat_iff.mp h) (j * n + j₂) hp
  have hd : (j * n + j₂) / n = j := by
    rw [Nat.add_comm, Nat.add_mul_div_right _ _ (by omega), Nat.div_eq_of_lt hj₂, Nat.zero_add]
  have hm : (j * n + j₂) % n = j₂ := by rw [Nat.add_comm, Nat.add_mul_mod_self_right, Nat.mod_eq_of_lt hj₂]
  simp only [pairOK, hd, hm, Bool.or_eq_true, Bool.not_eq_true', decide_eq_false_iff_not, not_lt] at this
  rcases this with h1 | h1
  · omega
  · exact h1

/-- **Stage C from the kernel checks**, with the v2 bin cover, the joint edge test and any proof of the clique
step. -/
noncomputable def stageCK2B {tb : Tab} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} {L1 L2 L3 L4 L5 : List CT}
    {rH n r rF : ℝ} {labs : List Lab} {oR uR : ℕ → ℕ} {HO HU : List (List ℕ)}
    (hcov : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tb.pq) (Tmat t.tc tq) rH n r rF c.W0 (leafL labs) β)
    (hp : ParOK c pq) (ht : T2ParOK c pq t tq) (htab : tabB tb c pq L1 L2 L3 L4 L5 = true)
    (hok : labsOK labs = true) (hsm : labsSmall labs = true) (hed : edgesOK2 tb c pq t tq labs oR uR HO HU = true)
    (hgr : NoTwoCliques (fun b d : Fin labs.length => (oR b).testBit d = true)
      (fun b d : Fin labs.length => (uR b).testBit d = true))
    {K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (Tmat t.tc tq) rH n r rF :=
  have hEU : euB tb = true := tabB_euB htab
  { ι := {l : (I6 → ℝ) × ℝ // l.1 j0 = 0 ∧ 0 ≤ l.2 ∧
      ((∀ δ, Admissible (Tmat t.tc tq) rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • Pmat tb.pq) δ l.1 l.2) ∨
        ∃ L ∈ labs, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * l.2 ^ 2 →
          InLabel L.v L.s (fun j => e (l.1 j + x j)))}
    α := Fin labs.length
    u := fun l => l.1.1
    a := fun l => l.1.2
    v := fun b => (labs.get b).v
    s := fun b => (labs.get b).s
    O := fun b d => (oR b).testBit d = true
    U := fun b d => (uR b).testBit d = true
    hu0 := fun l => l.2.1
    htree := fun β hβ0 hβ => by
      obtain ⟨u, a, hu0, ha0, hin, hcase⟩ := hcov β hβ0 hβ
      refine ⟨⟨(u, a), hu0, ha0, ?_⟩, ha0, hin⟩
      rcases hcase with hrej | ⟨t1, t2, t3, t4, t5, rfl, rfl, hl⟩
      · exact .inl hrej
      · obtain ⟨L, hL, hx⟩ := leafL_sound hok hl
        exact .inr ⟨L, hL, fun x hx0 hx2 => hx x hx0 hx2⟩
    hleaf := fun l => by
      rcases l.2.2.2 with hrej | ⟨L, hL, hx⟩
      · exact .inl hrej
      · obtain ⟨i, rfl⟩ := List.get_of_mem hL
        exact .inr ⟨i, hx⟩
    hsmall := fun b => labsSmall_spec hsm (List.get_mem _ _)
    hO := fun b d hbd δ hδ => by
      rcases (edgesOK2_spec hed b d).1 with h | h | h
      · exact absurd h hbd
      · exact edgeOB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) h _ δ
      · exact jointOB_sound hp ht htab (labsOK_spec hok (List.get_mem _ _)) h hK0 hK hKb hr hrF hrH hn δ hδ
    hU := fun b d hbd δ hδ => by
      rcases (edgesOK2_spec hed b d).2 with h | h | h
      · exact absurd h hbd
      · exact edgeUB_sound hp hEU (labsOK_spec hok (List.get_mem _ _)) h _ δ
      · exact jointUB_sound hp ht htab (labsOK_spec hok (List.get_mem _ _)) h hK0 hK hKb hr hrF hrH hn δ hδ
    hgraph := hgr }

end NoFourMUBs.KernelAtlas
