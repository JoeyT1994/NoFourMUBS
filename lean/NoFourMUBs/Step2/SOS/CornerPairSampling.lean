import NoFourMUBs.Step2.SOS.CornerPairPatterns
import Mathlib.Data.Fintype.CardEmbedding
import OAI.Analysis.MutuallyUnbiased.Moments.AverageAlgebra

/-! Apply the existing equality-pattern machinery to two injective triples.
Mathlib's factorization theorem provides each assignment to the distinct
labels; OAI supplies uniqueness. No sampling measure is postulated. -/

noncomputable section
open scoped BigOperators
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS.CornerPairs

def pairFlatten {B : Type*} (s : Σ p : Fin 34, Fin (blocks p) ↪ B) :
    (Fin 3 ↪ B) × (Fin 3 ↪ B) :=
  (⟨fun i => s.2 (family.label s.1 (Fin.castAdd 3 i)),
      s.2.injective.comp (first_injective s.1)⟩,
    ⟨fun i => s.2 (family.label s.1 (Fin.natAdd 3 i)),
      s.2.injective.comp (second_injective s.1)⟩)

theorem pairFlatten_injective {B : Type*} :
    Function.Injective (pairFlatten (B := B)) := by
  intro s t h
  apply family.flatten_injective
  funext i
  refine Fin.addCases (m := 3) (n := 3) ?_ ?_ i
  · intro j
    exact congrArg (fun x : (Fin 3 ↪ B) × (Fin 3 ↪ B) => x.1 j) h
  · intro j
    exact congrArg (fun x : (Fin 3 ↪ B) × (Fin 3 ↪ B) => x.2 j) h

theorem pairFlatten_surjective {B : Type*} :
    Function.Surjective (pairFlatten (B := B)) := by
  intro s
  letI : Nonempty B := ⟨s.1 0⟩
  let f : Fin 6 → B := fun i =>
    Fin.addCases (m := 3) (n := 3) (fun j => s.1 j) (fun j => s.2 j) i
  obtain ⟨p, hp⟩ := covers_injective_halves f
    (by simpa only [f, Fin.addCases_left] using s.1.injective)
    (by simpa only [f, Fin.addCases_right] using s.2.injective)
  have hf : Function.FactorsThrough f (family.label p) := fun i j h => (hp i j).mp h
  obtain ⟨g, hg⟩ := (Function.factorsThrough_iff f).mp hf
  have hi : Function.Injective g := by
    intro x y h
    obtain ⟨i, rfl⟩ := family.onto p x
    obtain ⟨j, rfl⟩ := family.onto p y
    apply (hp i j).mpr
    simpa only [hg, Function.comp_apply] using h
  refine ⟨⟨p, ⟨g, hi⟩⟩, ?_⟩
  apply Prod.ext
  · apply Function.Embedding.ext
    intro i
    change g (family.label p (Fin.castAdd 3 i)) = s.1 i
    simpa only [Function.comp_apply, f, Fin.addCases_left] using
      (congrFun hg (Fin.castAdd 3 i)).symm
  · apply Function.Embedding.ext
    intro i
    change g (family.label p (Fin.natAdd 3 i)) = s.2 i
    simpa only [Function.comp_apply, f, Fin.addCases_right] using
      (congrFun hg (Fin.natAdd 3 i)).symm

def pairAssignmentsEquiv (B : Type*) :
    (Σ p : Fin 34, Fin (blocks p) ↪ B) ≃ ((Fin 3 ↪ B) × (Fin 3 ↪ B)) :=
  Equiv.ofBijective pairFlatten ⟨pairFlatten_injective, pairFlatten_surjective⟩

theorem sum_pair_injections {B V : Type*} [Fintype B] [AddCommMonoid V]
    (value : ((Fin 3 ↪ B) × (Fin 3 ↪ B)) → V) :
    (∑ s, value s) =
      ∑ p : Fin 34, ∑ e : Fin (blocks p) ↪ B, value (pairFlatten ⟨p, e⟩) := by
  classical
  have h := (pairAssignmentsEquiv B).sum_comp value
  change (∑ s : Σ p : Fin 34, Fin (blocks p) ↪ B, value (pairFlatten s)) = _ at h
  rw [Fintype.sum_sigma] at h
  exact h.symm

/-- The original target uses (3)_new / (6)_3 for each overlap pattern. -/
def weight (p : Fin 34) : ℝ :=
  (Nat.descFactorial 3 (blocks p - 3) : ℝ) / 120

theorem weight_eq_card (p : Fin 34) :
    weight p = (Fintype.card (Fin (blocks p) ↪ Fin 6) : ℝ) / 14400 := by
  have hb : blocks p = 3 ∨ blocks p = 4 ∨ blocks p = 5 ∨ blocks p = 6 := by
    revert p
    decide +kernel
  rcases hb with h | h | h | h <;>
    norm_num [weight, h, Fintype.card_embedding_eq, Nat.descFactorial]

theorem average_pair_injections
    (value : ((Fin 3 ↪ Fin 6) × (Fin 3 ↪ Fin 6)) → ℝ) :
    average value = ∑ p : Fin 34, weight p *
      average (fun e : Fin (blocks p) ↪ Fin 6 => value (pairFlatten ⟨p, e⟩)) := by
  have hc : (Fintype.card ((Fin 3 ↪ Fin 6) × (Fin 3 ↪ Fin 6)) : ℝ) = 14400 := by
    norm_num [Fintype.card_prod, Fintype.card_embedding_eq, Nat.descFactorial]
  change (Fintype.card ((Fin 3 ↪ Fin 6) × (Fin 3 ↪ Fin 6)) : ℝ)⁻¹ *
    (∑ s, value s) = _
  rw [hc, sum_pair_injections, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  rw [sum_eq_card_mul_average, weight_eq_card]
  ring

end NoFourMUBs.Step2.SOS.CornerPairs
