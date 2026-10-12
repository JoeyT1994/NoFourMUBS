import NoFourMUBs.Step2.Reconstruction.RowProductRelations
import NoFourMUBs.Reuse.Archive.SideIntrinsicActualChi
import NoFourMUBs.Reuse.Archive.SideIntrinsicMatrixBindings
import NoFourMUBs.Step2.MatchedUnique

set_option autoImplicit false
set_option maxHeartbeats 1500000
open scoped ComplexConjugate
noncomputable section

namespace StrictReconstruction20261007.SideIntrinsic

/-- The signature is affine in the permanent, even at singular sides. -/
theorem intrinsic_signature_permanent (a : Rows ℂ) (ha : UnitRows a) :
    -intrinsicTerm a = rowPerm a * conj (sideP0 (rowS a) (rowT a) (rowR a)) -
      ((9 - Complex.normSq (rowR a) : ℝ) : ℂ) *
        (gramEta (rowS a) (rowT a) (rowR a) : ℂ) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have h0 := (actual_intrinsic_lambda_identities a ha).1
  have hp : rowPerm a * conj (rowPerm a) =
      (gramEta (rowS a) (rowT a) (rowR a) : ℂ) := by
    rw [Complex.mul_conj, ← actual_gramEta_norm_perm a ha]
  unfold intrinsicTerm
  calc
    _ = -(rowPerm a *
        (((9 - Complex.normSq (rowR a) : ℝ) : ℂ) * conj (rowPerm a) -
          conj (sideP0 (rowS a) (rowT a) (rowR a)))) := by
      rw [h0]
      field_simp [hu,hv]
    _ = _ := by
      linear_combination -((9 - Complex.normSq (rowR a) : ℝ) : ℂ) * hp

/-- The signature selects the actual row product by a linear equation.
No division by the correlation gap or determinant is used. -/
theorem row_product_signature_centered (a : Rows ℂ) (ha : UnitRows a) :
    let P0 := sideP0 (rowS a) (rowT a) (rowR a)
    let P1 := sideP1 (rowS a) (rowT a) (rowR a)
    let gap := Complex.normSq (rowT a) - Complex.normSq (rowR a)
    2 * conj P0 * P1 * rowU a =
      ((Complex.normSq P0 + Complex.normSq P1 -
        gramEta (rowS a) (rowT a) (rowR a) * gap^2 : ℝ) : ℂ) +
      (gap : ℂ) * (2 * intrinsicTerm a +
        (gramChi (rowS a) (rowT a) (rowR a) : ℂ)) := by
  let P0 := sideP0 (rowS a) (rowT a) (rowR a)
  let P1 := sideP1 (rowS a) (rowT a) (rowR a)
  let gap := Complex.normSq (rowT a) - Complex.normSq (rowR a)
  have hp := row_permanent_product_relation a ha
  have ht := intrinsic_signature_permanent a ha
  have hP0 := Complex.mul_conj P0
  have hn : ((Complex.normSq P0 - Complex.normSq P1 : ℝ) : ℂ) =
      (gap : ℂ) * ((gramChi (rowS a) (rowT a) (rowR a) : ℂ) +
        ((18 - Complex.normSq (rowR a) - Complex.normSq (rowT a) : ℝ) : ℂ) *
          (gramEta (rowS a) (rowT a) (rowR a) : ℂ)) := by
    dsimp [P0,P1,gap]
    rw [sideP0_normSq,sideP1_normSq]
    push_cast
    ring
  dsimp [P0,P1,gap] at hP0 hn ⊢
  push_cast at hp ht hn ⊢
  linear_combination 2 * conj (sideP0 (rowS a) (rowT a) (rowR a)) * hp +
    2 * ((Complex.normSq (rowT a) : ℂ) - (Complex.normSq (rowR a) : ℂ)) * ht +
    hn + 2 * hP0

end StrictReconstruction20261007.SideIntrinsic

namespace NoFourMUBs.Step2.Reconstruction
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Hadamard6 NoFourMUBs.Side

/-- Bind the existing matrix signature to the archived intrinsic coordinates. -/
theorem sideSignature_intrinsic {B : Mat3} (hB : EntrywiseUnit B)
    (hfirst : ∀ j, B 0 j = 1) :
    sideSignature B = -intrinsicTerm (rowsOfSide B) := by
  let a := rowsOfSide B
  have ha := rowsOfSide_unit B hB
  obtain ⟨hu,hv,hun,hvn⟩ := row_product_units a ha
  have huc : conj (rowU a) = (rowU a)⁻¹ := conj_eq_inv hu
  have hvc : conj (rowV a) = (rowV a)⁻¹ := conj_eq_inv hv
  have hd : hS (B 1) (B 2) = rowDet a := by
    dsimp [a,rowsOfSide,hS,rowDet]
    ring
  have hp : piS (B 1) (B 2) = rowPerm a := by
    dsimp [a,rowsOfSide,piS,rowPerm]
    ring
  rw [sig_rows B hfirst,TS,hd,hp]
  change -rowPerm a * rowDet a^2 * conj (rowU a) * conj (rowV a) =
    -intrinsicTerm a
  rw [huc,hvc,intrinsicTerm]
  field_simp [hun,hvn]

/-- Either signed signature fixes the original quadratic's chosen product. -/
theorem side_product_of_signature {B : Mat3} (hB : EntrywiseUnit B)
    (hfirst : ∀ j, B 0 j = 1) (w : ℂ)
    (hsig : 2 * sideSignature B =
      (gramChi (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
        (rowR (rowsOfSide B)) : ℂ) + w) :
    let a := rowsOfSide B
    let P0 := sideP0 (rowS a) (rowT a) (rowR a)
    let P1 := sideP1 (rowS a) (rowT a) (rowR a)
    let gap := Complex.normSq (rowT a) - Complex.normSq (rowR a)
    2 * conj P0 * P1 * rowU a =
      ((Complex.normSq P0 + Complex.normSq P1 -
        gramEta (rowS a) (rowT a) (rowR a) * gap^2 : ℝ) : ℂ) -
        (gap : ℂ) * w := by
  have hp := row_product_signature_centered (rowsOfSide B) (rowsOfSide_unit B hB)
  rw [sideSignature_intrinsic hB hfirst] at hsig
  dsimp only at hp ⊢
  linear_combination hp -
    (((Complex.normSq (rowT (rowsOfSide B)) -
      Complex.normSq (rowR (rowsOfSide B)) : ℝ) : ℂ)) * hsig

end NoFourMUBs.Step2.Reconstruction
