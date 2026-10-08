import PhysicalIntervals

namespace Mub6.Numerical.IntervalKernel

/-- Exact endpoint inclusion into a fixed kept box. -/
def boxSubset (a b : RawRayBox) : Bool := decide (∀ j : Fin 5,
  (b j).reLo ≤ (a j).reLo ∧ (a j).reHi ≤ (b j).reHi ∧
  (b j).imLo ≤ (a j).imLo ∧ (a j).imHi ≤ (b j).imHi)

theorem boxSubset_sound {a b : RawRayBox} (h : boxSubset a b = true)
    {z : Vector} (hz : MemRawRayBox a z) : MemRawRayBox b z := by
  have hb : ∀ j : Fin 5, (b j).reLo ≤ (a j).reLo ∧ (a j).reHi ≤ (b j).reHi ∧
      (b j).imLo ≤ (a j).imLo ∧ (a j).imHi ≤ (b j).imHi := of_decide_eq_true h
  refine ⟨hz.1, ?_⟩
  intro j
  have h1 : ((b j).reLo : ℝ) ≤ (a j).reLo := by exact_mod_cast (hb j).1
  have h2 : ((a j).reHi : ℝ) ≤ (b j).reHi := by exact_mod_cast (hb j).2.1
  have h3 : ((b j).imLo : ℝ) ≤ (a j).imLo := by exact_mod_cast (hb j).2.2.1
  have h4 : ((a j).imHi : ℝ) ≤ (b j).imHi := by exact_mod_cast (hb j).2.2.2
  exact ⟨h1.trans (hz.2 j).1, (hz.2 j).2.1.trans h2,
    h3.trans (hz.2 j).2.2.1, (hz.2 j).2.2.2.trans h4⟩

def leftChild (q : RawRayBox) (j : Fin 5) (imag : Bool) (cut : ℚ) : RawRayBox :=
  Function.update q j (if imag then splitRectangleImLeft (q j) cut
    else splitRectangleReLeft (q j) cut)

def rightChild (q : RawRayBox) (j : Fin 5) (imag : Bool) (cut : ℚ) : RawRayBox :=
  Function.update q j (if imag then splitRectangleImRight (q j) cut
    else splitRectangleReRight (q j) cut)

theorem child_cover {q : RawRayBox} {z : Vector} (hz : MemRawRayBox q z)
    (j : Fin 5) (imag : Bool) (cut : ℚ) :
    MemRawRayBox (leftChild q j imag cut) z ∨ MemRawRayBox (rightChild q j imag cut) z := by
  cases imag
  · exact raw_ray_box_coordinate_split_cover hz j _ _ (fun u hu => rectangle_split_re_cover cut hu)
  · exact raw_ray_box_coordinate_split_cover hz j _ _ (fun u hu => rectangle_split_im_cover cut hu)

/-- Keeps merge arbitrarily many tree leaves into a fixed finite catalogue.
Every keep checks literal rational inclusion; the catalogue is not assumed complete. -/
inductive RayPartition (n : ℕ) where
  | keep (v : Fin n)
  | reject (witness : RejectWitness)
  | split (j : Fin 5) (imag : Bool) (cut : ℚ) (left right : RayPartition n)
  deriving Repr

def checkPartition {n : ℕ} (E : CarrierRegion) (boxes : Fin n → RawRayBox) :
    RawRayBox → RayPartition n → Bool
  | q, .keep v => boxSubset q (boxes v)
  | q, .reject witness => rejectRayBox E q witness
  | q, .split j imag cut left right =>
    checkPartition E boxes (leftChild q j imag cut) left &&
      checkPartition E boxes (rightChild q j imag cut) right

/-- Complete branch-tree soundness on the actual complex physical equations. -/
theorem checkPartition_sound {n : ℕ} (E : CarrierRegion) (boxes : Fin n → RawRayBox)
    (tree : RayPartition n) {H : BasisMatrix} {z : Vector}
    (hH : CarrierBox E H) (hcommon : IsRawCommonRay H z) :
    ∀ q, checkPartition E boxes q tree = true → MemRawRayBox q z →
      ∃ v, MemRawRayBox (boxes v) z := by
  induction tree with
  | keep v =>
    intro q hcheck hz
    exact ⟨v, boxSubset_sound hcheck hz⟩
  | reject witness =>
    intro q hcheck hz
    exact False.elim (rejectRayBox_sound witness hcheck hH hz hcommon)
  | split j imag cut left right ihLeft ihRight =>
    intro q hcheck hz
    have hc : checkPartition E boxes (leftChild q j imag cut) left = true ∧
        checkPartition E boxes (rightChild q j imag cut) right = true := by
      simpa only [checkPartition, Bool.and_eq_true] using hcheck
    rcases child_cover hz j imag cut with hl | hr
    · exact ihLeft _ hc.1 hl
    · exact ihRight _ hc.2 hr

/-- This has no unproved catalogue-completeness premise: the input root is
the full [-1,1]^10 dephased unit domain and every path is checked. -/
theorem checkPartition_fullRoot_sound {n : ℕ} {E : CarrierRegion}
    {boxes : Fin n → RawRayBox} {tree : RayPartition n}
    (hcheck : checkPartition E boxes fullRoot tree = true)
    {H : BasisMatrix} (hH : CarrierBox E H) {z : Vector} (hz : IsRawCommonRay H z) :
    ∃ v, MemRawRayBox (boxes v) z :=
  checkPartition_sound E boxes tree hH hz fullRoot hcheck (fullRoot_covers hz.1)

#print axioms boxSubset_sound
#print axioms child_cover
#print axioms checkPartition_sound
#print axioms checkPartition_fullRoot_sound

end Mub6.Numerical.IntervalKernel
