import Mathlib.Data.Rat.Cast.Order
import Mathlib.Analysis.SpecialFunctions.Complex.Arg
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-! Exact closed rational subdivision, including a unit-complex phase frontend.
No computational acceptance is a constructor. The point and its predicate stay
fixed through the tree, so a physical instantiation retains its actual matrix.
This module asserts no global MUB exclusion and no complete numerical forest. -/
set_option autoImplicit false
namespace Mub6.GlobalBoxCover20261006

structure Box (n : ℕ) where
  lower : Fin n → ℚ
  upper : Fin n → ℚ

namespace Box
variable {n : ℕ}
def Contains (b : Box n) (x : Fin n → ℝ) : Prop :=
  ∀ i, (b.lower i : ℝ) ≤ x i ∧ x i ≤ (b.upper i : ℝ)

def Includes (outer inner : Box n) : Prop :=
  ∀ i, outer.lower i ≤ inner.lower i ∧ inner.upper i ≤ outer.upper i

def left (b : Box n) (k : Fin n) (q : ℚ) : Box n :=
  ⟨b.lower, Function.update b.upper k q⟩

def right (b : Box n) (k : Fin n) (q : ℚ) : Box n :=
  ⟨Function.update b.lower k q, b.upper⟩

theorem contains_of_includes {outer inner : Box n} (h : outer.Includes inner)
    {x : Fin n → ℝ} (hx : inner.Contains x) : outer.Contains x := by
  intro i
  have hl : (outer.lower i : ℝ) ≤ (inner.lower i : ℝ) := by exact_mod_cast (h i).1
  have hu : (inner.upper i : ℝ) ≤ (outer.upper i : ℝ) := by exact_mod_cast (h i).2
  exact ⟨hl.trans (hx i).1, (hx i).2.trans hu⟩

theorem contains_left {b : Box n} {k : Fin n} {q : ℚ} {x : Fin n → ℝ}
    (hx : b.Contains x) (hcut : x k ≤ (q : ℝ)) : (b.left k q).Contains x := by
  intro i
  by_cases hi : i = k
  · subst i
    simpa [Contains, left] using And.intro (hx k).1 hcut
  · simpa [left, Function.update_of_ne hi] using hx i

theorem contains_right {b : Box n} {k : Fin n} {q : ℚ} {x : Fin n → ℝ}
    (hx : b.Contains x) (hcut : (q : ℝ) ≤ x k) : (b.right k q).Contains x := by
  intro i
  by_cases hi : i = k
  · subst i
    simpa [Contains, right] using And.intro hcut (hx k).2
  · simpa [right, Function.update_of_ne hi] using hx i

theorem split_covers (b : Box n) (k : Fin n) (q : ℚ) {x : Fin n → ℝ}
    (hx : b.Contains x) : (b.left k q).Contains x ∨ (b.right k q).Contains x := by
  rcases le_total (x k) (q : ℝ) with hl | hr
  · exact Or.inl (contains_left hx hl)
  · exact Or.inr (contains_right hx hr)

theorem left_includes (b : Box n) (k : Fin n) (q : ℚ) (hq : q ≤ b.upper k) :
    b.Includes (b.left k q) := by
  intro i
  by_cases hi : i = k
  · subst i
    simpa [Includes, left] using And.intro (le_refl (b.lower k)) hq
  · simp [left, Function.update_of_ne hi]

theorem right_includes (b : Box n) (k : Fin n) (q : ℚ) (hq : b.lower k ≤ q) :
    b.Includes (b.right k q) := by
  intro i
  by_cases hi : i = k
  · subst i
    simpa [Includes, right] using And.intro hq (le_refl (b.upper k))
  · simp [right, Function.update_of_ne hi]

/-- Both closed children retain the splitting face, including endpoint cuts. -/
theorem split_face {b : Box n} {k : Fin n} {q : ℚ} {x : Fin n → ℝ}
    (hx : b.Contains x) (heq : x k = (q : ℝ)) :
    (b.left k q).Contains x ∧ (b.right k q).Contains x :=
  ⟨contains_left hx heq.le, contains_right hx heq.ge⟩

/-- A guarded split represents exactly its parent, not only a dense interior. -/
theorem split_exact (b : Box n) (k : Fin n) (q : ℚ)
    (hl : b.lower k ≤ q) (hu : q ≤ b.upper k) (x : Fin n → ℝ) :
    b.Contains x ↔ (b.left k q).Contains x ∨ (b.right k q).Contains x := by
  constructor
  · exact split_covers b k q
  · rintro (hx | hx)
    · exact contains_of_includes (left_includes b k q hu) hx
    · exact contains_of_includes (right_includes b k q hl) hx
end Box

variable {n : ℕ}
def Live (P : (Fin n → ℝ) → Prop) (b : Box n) : Prop :=
  ∃ x, P x ∧ b.Contains x

/-- A finite proof tree. Every discarded region has a literal proof; signed or
matrix-dependent conditions belong to the fixed P and are never changed. -/
inductive CertifiedTree (P : (Fin n → ℝ) → Prop) : Box n → Type
  | pending (b : Box n) : CertifiedTree P b
  | closed (b : Box n) (excluded : ¬ Live P b) : CertifiedTree P b
  | split (b : Box n) (k : Fin n) (q : ℚ)
      (hl : b.lower k ≤ q) (hu : q ≤ b.upper k)
      (leftTree : CertifiedTree P (b.left k q))
      (rightTree : CertifiedTree P (b.right k q)) : CertifiedTree P b
  | reuse (b outer : Box n) (includes : outer.Includes b)
      (tree : CertifiedTree P outer) : CertifiedTree P b

namespace CertifiedTree
variable {P : (Fin n → ℝ) → Prop} {b : Box n}
def frontier : {b : Box n} → CertifiedTree P b → List (Box n)
  | _, .pending c => [c]
  | _, .closed _ _ => []
  | _, .split _ _ _ _ _ l r => l.frontier ++ r.frontier
  | _, .reuse _ _ _ t => t.frontier

/-- Coverage preserves the original point. Closed leaves cannot absorb one
satisfying P; no completeness premise is supplied by the caller. -/
theorem covers_point (t : CertifiedTree P b) {x : Fin n → ℝ}
    (hp : P x) (hx : b.Contains x) :
    ∃ c ∈ t.frontier, c.Contains x := by
  induction t with
  | pending c => exact ⟨c, by simp [frontier], hx⟩
  | closed c excluded => exact False.elim (excluded ⟨x,hp,hx⟩)
  | split c k q hl hu l r ihl ihr =>
      rcases Box.split_covers c k q hx with hleft | hright
      · obtain ⟨d,hd,hmem⟩ := ihl hleft
        exact ⟨d, by simp [frontier, hd], hmem⟩
      · obtain ⟨d,hd,hmem⟩ := ihr hright
        exact ⟨d, by simp [frontier, hd], hmem⟩
  | reuse c outer includes tree ih =>
      exact ih (Box.contains_of_includes includes hx)

theorem covers_live (t : CertifiedTree P b) (h : Live P b) :
    ∃ c ∈ t.frontier, Live P c := by
  obtain ⟨x,hp,hx⟩ := h
  obtain ⟨c,hc,hm⟩ := t.covers_point hp hx
  exact ⟨c,hc,x,hp,hm⟩

theorem empty_excludes (t : CertifiedTree P b) (he : t.frontier = []) : ¬ Live P b := by
  intro h
  obtain ⟨c,hc,_⟩ := t.covers_live h
  simpa [he] using hc
end CertifiedTree

/-- A rational radian root containing [-pi,pi]. It is an exact physical
cover, not an assertion that any external worklist covers this root. -/
def radianRoot (n : ℕ) : Box n := ⟨fun _ => -4, fun _ => 4⟩

def PhaseCoordinates (a : Fin n → ℂ) (x : Fin n → ℝ) : Prop :=
  ∀ i, Complex.exp ((x i : ℂ) * Complex.I) = a i

/-- Every unit phase has an exact principal-angle representative inside the
closed rational root. No floating-point pi approximation or omitted seam. -/
theorem unit_phases_in_root (a : Fin n → ℂ) (ha : ∀ i, ‖a i‖ = 1) :
    ∃ x, (radianRoot n).Contains x ∧ PhaseCoordinates a x := by
  refine ⟨fun i => Complex.arg (a i), ?_, ?_⟩
  · intro i
    have hlo := Complex.neg_pi_lt_arg (a i)
    have hhi := Complex.arg_le_pi (a i)
    have hpi := Real.pi_le_four
    constructor <;> change (_ : ℝ) ≤ _ <;> norm_num [radianRoot] <;> linarith
  · intro i
    have h := Complex.norm_mul_exp_arg_mul_I (a i)
    simpa [ha i] using h

/-- Physical frontend for the four actual NW entries of a six-by-six unit-entry
carrier. It does not choose a different corner or infer maximality. -/
def seedEntries (H : Fin 6 → Fin 6 → ℂ) : Fin 4 → ℂ :=
  ![H 1 1, H 1 2, H 2 1, H 2 2]

theorem unit_carrier_seed_in_root (H : Fin 6 → Fin 6 → ℂ)
    (hunit : ∀ i j, ‖H i j‖ = 1) :
    ∃ x, (radianRoot 4).Contains x ∧ PhaseCoordinates (seedEntries H) x := by
  apply unit_phases_in_root
  intro i
  fin_cases i <;> simp [seedEntries, hunit]

/-- A conditional physical population is retained pointwise by a certified
radian tree. The predicate may quantify an actual globally maximal carrier;
there is no assumption that the forest already covers that population. -/
theorem phase_population_reaches_frontier {P : (Fin n → ℝ) → Prop}
    (t : CertifiedTree P (radianRoot n)) (a : Fin n → ℂ)
    (ha : ∀ i, ‖a i‖ = 1)
    (hP : ∀ x, PhaseCoordinates a x → P x) :
    ∃ x c, c ∈ t.frontier ∧ c.Contains x ∧ PhaseCoordinates a x ∧ P x := by
  obtain ⟨x,hx,hphase⟩ := unit_phases_in_root a ha
  obtain ⟨c,hc,hm⟩ := t.covers_point (hP x hphase) hx
  exact ⟨x,c,hc,hm,hphase,hP x hphase⟩

#print axioms Box.contains_of_includes
#print axioms Box.contains_left
#print axioms Box.contains_right
#print axioms Box.split_covers
#print axioms Box.left_includes
#print axioms Box.right_includes
#print axioms Box.split_face
#print axioms Box.split_exact
#print axioms CertifiedTree.covers_point
#print axioms CertifiedTree.covers_live
#print axioms CertifiedTree.empty_excludes
#print axioms unit_phases_in_root
#print axioms unit_carrier_seed_in_root
#print axioms phase_population_reaches_frontier
end Mub6.GlobalBoxCover20261006
