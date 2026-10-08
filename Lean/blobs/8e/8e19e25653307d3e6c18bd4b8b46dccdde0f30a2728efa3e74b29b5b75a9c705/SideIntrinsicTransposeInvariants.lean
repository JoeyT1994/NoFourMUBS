import SideIntrinsicTransposeBindings
import SideIntrinsicActualNorms
import SideIntrinsicActualChi
import Mathlib.Tactic.LinearCombination

/-! Transpose invariance of the intrinsic scalar triple follows from checked
determinant/permanent/product identities. No expanded Gram polynomial is regenerated. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem dephased_transpose_scalar_triple (X : Hadamard6.Mat3)
    (hX : Hadamard6.EntrywiseUnit X)
    (hrow : ∀ j, X 0 j=1) (hcol : ∀ i, X i 0=1) :
    gramG (rowS (rowsOfSide (Matrix.transpose X))) (rowT (rowsOfSide (Matrix.transpose X)))
      (rowR (rowsOfSide (Matrix.transpose X))) =
      gramG (rowS (rowsOfSide X)) (rowT (rowsOfSide X)) (rowR (rowsOfSide X)) ∧
    gramEta (rowS (rowsOfSide (Matrix.transpose X))) (rowT (rowsOfSide (Matrix.transpose X)))
      (rowR (rowsOfSide (Matrix.transpose X))) =
      gramEta (rowS (rowsOfSide X)) (rowT (rowsOfSide X)) (rowR (rowsOfSide X)) ∧
    gramChi (rowS (rowsOfSide (Matrix.transpose X))) (rowT (rowsOfSide (Matrix.transpose X)))
      (rowR (rowsOfSide (Matrix.transpose X))) =
      gramChi (rowS (rowsOfSide X)) (rowT (rowsOfSide X)) (rowR (rowsOfSide X)) := by
  have hXt : Hadamard6.EntrywiseUnit (Matrix.transpose X) := fun i j => hX j i
  have ha := rowsOfSide_unit X hX
  have hb := rowsOfSide_unit (Matrix.transpose X) hXt
  obtain ⟨hd,hp,hprod⟩ := dephased_transpose_intrinsic_bindings X hrow hcol
  refine ⟨?_,?_,?_⟩
  · rw [actual_gramG_norm_det _ hb,actual_gramG_norm_det _ ha,hd]
  · rw [actual_gramEta_norm_perm _ hb,actual_gramEta_norm_perm _ ha,hp]
  · have hterm : intrinsicTerm (rowsOfSide (Matrix.transpose X))=intrinsicTerm (rowsOfSide X) := by
      unfold intrinsicTerm
      rw [hd,hp,hprod]
    have hc := actual_chi_identity (rowsOfSide X) ha
    have hct := actual_chi_identity (rowsOfSide (Matrix.transpose X)) hb
    rw [hterm] at hct
    apply Complex.ofReal_injective
    linear_combination hct-hc

theorem gram_triple_of_intrinsic_scalars (s t r s' t' r' : ℂ)
    (hg : gramG s t r=gramG s' t' r')
    (he : gramEta s t r=gramEta s' t' r')
    (hc : gramChi s t r=gramChi s' t' r') :
    gramP s t r=gramP s' t' r' ∧
    gramJ s t r=gramJ s' t' r' ∧ gramW s t r=gramW s' t' r' := by
  have hp : gramP s t r=gramP s' t' r' := by
    unfold gramG at hg
    unfold gramEta at he
    linarith
  have hj : gramJ s t r=gramJ s' t' r' := by
    unfold gramEta at he
    rw [hp] at he
    linarith
  refine ⟨hp,hj,?_⟩
  unfold gramChi at hc
  rw [hp,hj] at hc
  linarith

theorem gramInvariant_all_neg (s t r : ℂ) :
    gramInvariant (-s) (-t) (-r)=invariant (gramP s t r) (-gramJ s t r) (gramW s t r) := by
  have hp : gramP (-s) (-t) (-r)=gramP s t r := by simp [gramP]
  have hj : gramJ (-s) (-t) (-r)= -gramJ s t r := by simp [gramJ] <;> ring
  have hw : gramW (-s) (-t) (-r)=gramW s t r := by simp [gramW]
  unfold gramInvariant
  rw [hp,hj,hw]

theorem dephased_negative_gramInvariant_transpose (X : Hadamard6.Mat3)
    (hX : Hadamard6.EntrywiseUnit X)
    (hrow : ∀ j, X 0 j=1) (hcol : ∀ i, X i 0=1) :
    gramInvariant (-((Matrix.transpose X * Matrix.conjTranspose (Matrix.transpose X)) 1 0))
      (-((Matrix.transpose X * Matrix.conjTranspose (Matrix.transpose X)) 2 0))
      (-((Matrix.transpose X * Matrix.conjTranspose (Matrix.transpose X)) 2 1)) =
    gramInvariant (-((X * Matrix.conjTranspose X) 1 0))
      (-((X * Matrix.conjTranspose X) 2 0)) (-((X * Matrix.conjTranspose X) 2 1)) := by
  obtain ⟨hg,he,hc⟩ := dephased_transpose_scalar_triple X hX hrow hcol
  obtain ⟨hp,hj,hw⟩ := gram_triple_of_intrinsic_scalars _ _ _ _ _ _ hg he hc
  have hXt : Hadamard6.EntrywiseUnit (Matrix.transpose X) := fun i j => hX j i
  obtain ⟨_,_,_,_,hs,ht,hr⟩ := arbitrary_side_intrinsic_interface X hX hrow
  obtain ⟨_,_,_,_,hst,htt,hrt⟩ :=
    arbitrary_side_intrinsic_interface (Matrix.transpose X) hXt hcol
  rw [hs,ht,hr,hst,htt,hrt] at hp hj hw
  rw [gramInvariant_all_neg,gramInvariant_all_neg,hp,hj,hw]

#print axioms dephased_transpose_scalar_triple
#print axioms gram_triple_of_intrinsic_scalars
#print axioms gramInvariant_all_neg
#print axioms dephased_negative_gramInvariant_transpose
end
end StrictReconstruction20261007.SideIntrinsic
