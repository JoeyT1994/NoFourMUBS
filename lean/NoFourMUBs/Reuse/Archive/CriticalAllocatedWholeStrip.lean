import NoFourMUBs.Reuse.Archive.CriticalGeometricHalves
import NoFourMUBs.Reuse.Archive.CriticalAllocatedBlockGeometric

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Matrix NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalRowSum20261003
open CriticalAllocatedBlockGeometric20261003
noncomputable section

/-- The original normalized Hadamard supplies both literal blocks. Their
three correlations change sign together, so the product phase is the same.
The fixed first column then fixes that phase globally to one. -/
theorem normalized_allocated_rows {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (c : Fin 20) (z : ℝ)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS (stripCorner H c))=z+3)
    (ht : Complex.normSq (sideT (stripCorner H c))=z+3)
    (hr : Complex.normSq (sideR (stripCorner H c))=(1-z)*(z+3))
    (hj : sideJ (stripCorner H c)=0) :
    ∀ j : Fin 6,H 2 j=star (H 1 j) := by
  have hU (d : Fin 20) : ∀ i j,Complex.normSq (stripCorner H d i j)=1 :=
    fun i j => hH.1.1 (front i) (triples d j)
  have h0 (d : Fin 20) : ∀ j,stripCorner H d 0 j=1 :=
    fun j => hH.2.1 (triples d j)
  have hL := allocated_block_conjugate_rows (stripCorner H c) z
    (hU c) (h0 c) hz0 hz3 hz2 hs ht hr hj
  obtain ⟨hcs,hct,hcr⟩ := strip_complementary_moments hH c
  have hs' : Complex.normSq (sideS (stripCorner H (Fin.rev c)))=z+3 :=
    (congrArg Complex.normSq hcs).trans ((Complex.normSq_neg _).trans hs)
  have ht' : Complex.normSq (sideT (stripCorner H (Fin.rev c)))=z+3 :=
    (congrArg Complex.normSq hct).trans ((Complex.normSq_neg _).trans ht)
  have hr' : Complex.normSq (sideR (stripCorner H (Fin.rev c)))=(1-z)*(z+3) :=
    (congrArg Complex.normSq hcr).trans ((Complex.normSq_neg _).trans hr)
  have hj' : sideJ (stripCorner H (Fin.rev c))=0 := by
    unfold sideJ
    rw [hcs,hct,hcr,momentJ_neg]
    exact neg_eq_zero.mpr hj
  have hR := allocated_block_conjugate_rows (stripCorner H (Fin.rev c)) z
    (hU (Fin.rev c)) (h0 (Fin.rev c)) hz0 hz3 hz2 hs' ht' hr' hj'
  have hκ : sideS (stripCorner H (Fin.rev c))*sideT (stripCorner H (Fin.rev c))/
      ((z+3:ℝ):ℂ)=sideS (stripCorner H c)*sideT (stripCorner H c)/((z+3:ℝ):ℂ) := by
    rw [hcs,hct,neg_mul_neg]
  exact normalized_geometric_halves hH c _ hL
    (fun i => (hR i).trans (congrArg
      (fun k : ℂ => k*star (stripCorner H (Fin.rev c) 1 i)) hκ))

end
#print axioms normalized_allocated_rows
end CriticalGeometricStrip20261003
