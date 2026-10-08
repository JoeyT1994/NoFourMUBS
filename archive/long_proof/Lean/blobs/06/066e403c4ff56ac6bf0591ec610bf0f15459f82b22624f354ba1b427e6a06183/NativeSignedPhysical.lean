import NativeSignedWords
import SignedCornerPhysical

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant
noncomputable section

/-- Literal native signed polynomial on a positional corner of the actual H. -/
def literalCornerSigned (H : Mat6) (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) : ℝ :=
  (nativeRaw (H r₀ c₀) (H r₀ c₁) (H r₀ c₂)
    (H r₁ c₀) (H r₁ c₁) (H r₁ c₂) (H r₂ c₀) (H r₂ c₁) (H r₂ c₂)).im

/-- Exact off-locus binding for the actual nine-entry expression. Only the
first eight entries of this corner must be unit; its last entry is arbitrary. -/
theorem literalCornerSigned_eq_fast_of_eight_unit (H : Mat6)
    (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6)
    (h00 : Complex.normSq (H r₀ c₀)=1) (h01 : Complex.normSq (H r₀ c₁)=1)
    (h02 : Complex.normSq (H r₀ c₂)=1) (h10 : Complex.normSq (H r₁ c₀)=1)
    (h11 : Complex.normSq (H r₁ c₁)=1) (h12 : Complex.normSq (H r₁ c₂)=1)
    (h20 : Complex.normSq (H r₂ c₀)=1) (h21 : Complex.normSq (H r₂ c₁)=1) :
    literalCornerSigned H r₀ r₁ r₂ c₀ c₁ c₂ = cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂ := by
  unfold literalCornerSigned cornerSigned
  simp only [cornerNormalize_eq_source_dephasing]
  exact nativeRaw_im_eq_fast _ _ _ _ _ _ _ _ _ h00 h01 h02 h10 h11 h12 h20 h21

theorem physical_literalCornerSigned_eq_fast {H : Mat6} (hH : Physical H)
    (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) :
    literalCornerSigned H r₀ r₁ r₂ c₀ c₁ c₂ = cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂ :=
  literalCornerSigned_eq_fast_of_eight_unit H r₀ r₁ r₂ c₀ c₁ c₂
    (hH.1 r₀ c₀) (hH.1 r₀ c₁) (hH.1 r₀ c₂) (hH.1 r₁ c₀)
    (hH.1 r₁ c₁) (hH.1 r₁ c₂) (hH.1 r₂ c₀) (hH.1 r₂ c₁)

theorem physical_literal_square_complement {H : Mat6} (hH : Physical H)
    (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) (hr₀₁ : r₀<r₁) (hr₁₂ : r₁<r₂)
    (hc₀₁ : c₀<c₁) (hc₁₂ : c₁<c₂) :
    (literalCornerSigned H r₀ r₁ r₂ c₀ c₁ c₂)^2 =
      cornerR H r₀ r₁ r₂ ({c₀,c₁,c₂}:Finset (Fin 6))ᶜ := by
  rw [physical_literalCornerSigned_eq_fast hH]
  exact physical_signed_square_complement hH r₀ r₁ r₂ c₀ c₁ c₂ hr₀₁ hr₁₂ hc₀₁ hc₁₂

theorem physical_literal_abs_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : 0<leadingR H) (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6)
    (hr₀₁ : r₀<r₁) (hr₁₂ : r₁<r₂) (hc₀₁ : c₀<c₁) (hc₁₂ : c₁<c₂) :
    |literalCornerSigned H r₀ r₁ r₂ c₀ c₁ c₂| ≤ Real.sqrt (leadingR H) := by
  rw [physical_literalCornerSigned_eq_fast hH]
  exact physical_maximal_signed_abs_bound hH hm hR r₀ r₁ r₂ c₀ c₁ c₂
    hr₀₁ hr₁₂ hc₀₁ hc₁₂

/-- Pair order in the native loops: (0,1), (0,2), (1,2). -/
def topFirst (pair : Fin 3) : Fin 6 := ![0,0,1] pair
def topSecond (pair : Fin 3) : Fin 6 := ![1,2,2] pair
def bottomIndex (k : Fin 3) : Fin 6 := ⟨3+k.val, by omega⟩

theorem topFirst_lt_topSecond (pair : Fin 3) : topFirst pair<topSecond pair :=
  (by decide : ∀ p : Fin 3, topFirst p<topSecond p) pair

theorem topSecond_lt_bottom (pair k : Fin 3) : topSecond pair<bottomIndex k :=
  (by decide : ∀ p k : Fin 3, topSecond p<bottomIndex k) pair k

theorem topFirst_upper (pair : Fin 3) : (topFirst pair).val<3 :=
  (by decide : ∀ p : Fin 3, (topFirst p).val<3) pair

theorem topSecond_upper (pair : Fin 3) : (topSecond pair).val<3 :=
  (by decide : ∀ p : Fin 3, (topSecond p).val<3) pair

/-- Exactly the native 3*3*3*3 mixed-corner family; no selected corner is omitted. -/
def mixedSigned (H : Mat6) (rowPair colPair bottomRow rightCol : Fin 3) : ℝ :=
  literalCornerSigned H (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
    (topFirst colPair) (topSecond colPair) (bottomIndex rightCol)

theorem mixed_corner_count : Fintype.card (Fin 3 × Fin 3 × Fin 3 × Fin 3)=81 := by
  norm_num

/-- E,B,C are unit while T may be nonunit in the auxiliary completion model. -/
def UnitOutsideLowerBlock (H : Mat6) : Prop :=
  ∀ i j : Fin 6, i.val<3 ∨ j.val<3 → Complex.normSq (H i j)=1

theorem mixedSigned_eq_fast_off_locus {H : Mat6} (hunit : UnitOutsideLowerBlock H)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned H rowPair colPair bottomRow rightCol =
      cornerSigned H (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) := by
  apply literalCornerSigned_eq_fast_of_eight_unit
  · exact hunit _ _ (Or.inl (topFirst_upper rowPair))
  · exact hunit _ _ (Or.inl (topFirst_upper rowPair))
  · exact hunit _ _ (Or.inl (topFirst_upper rowPair))
  · exact hunit _ _ (Or.inl (topSecond_upper rowPair))
  · exact hunit _ _ (Or.inl (topSecond_upper rowPair))
  · exact hunit _ _ (Or.inl (topSecond_upper rowPair))
  · exact hunit _ _ (Or.inr (topFirst_upper colPair))
  · exact hunit _ _ (Or.inr (topSecond_upper colPair))

theorem physical_mixed_abs_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : 0<leadingR H) (rowPair colPair bottomRow rightCol : Fin 3) :
    |mixedSigned H rowPair colPair bottomRow rightCol| ≤ Real.sqrt (leadingR H) := by
  exact physical_literal_abs_bound hH hm hR _ _ _ _ _ _
    (topFirst_lt_topSecond rowPair) (topSecond_lt_bottom rowPair bottomRow)
    (topFirst_lt_topSecond colPair) (topSecond_lt_bottom colPair rightCol)

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.literalCornerSigned_eq_fast_of_eight_unit
#print axioms Centiradian20261006.NativeSigned20261006.physical_literalCornerSigned_eq_fast
#print axioms Centiradian20261006.NativeSigned20261006.physical_literal_square_complement
#print axioms Centiradian20261006.NativeSigned20261006.physical_literal_abs_bound
#print axioms Centiradian20261006.NativeSigned20261006.topFirst_lt_topSecond
#print axioms Centiradian20261006.NativeSigned20261006.topSecond_lt_bottom
#print axioms Centiradian20261006.NativeSigned20261006.topFirst_upper
#print axioms Centiradian20261006.NativeSigned20261006.topSecond_upper
#print axioms Centiradian20261006.NativeSigned20261006.mixed_corner_count
#print axioms Centiradian20261006.NativeSigned20261006.mixedSigned_eq_fast_off_locus
#print axioms Centiradian20261006.NativeSigned20261006.physical_mixed_abs_bound
