import IntegerPhysical

namespace Mub6.Numerical.IntegerIntervals

def boxSubset (a b : ZRayBox) : Bool := decide (∀ j : Fin 5,
  (b j).re.lo ≤ (a j).re.lo ∧ (a j).re.hi ≤ (b j).re.hi ∧
  (b j).im.lo ≤ (a j).im.lo ∧ (a j).im.hi ≤ (b j).im.hi)

theorem boxSubset_sound {S : ℕ} {a b : ZRayBox} (h : boxSubset a b = true)
    {z : Vector} (hz : MemRayBox S a z) : MemRayBox S b z := by
  have hb : ∀ j : Fin 5, (b j).re.lo ≤ (a j).re.lo ∧ (a j).re.hi ≤ (b j).re.hi ∧
      (b j).im.lo ≤ (a j).im.lo ∧ (a j).im.hi ≤ (b j).im.hi := of_decide_eq_true h
  refine ⟨hz.1, ?_⟩
  intro j
  have h1 : ((b j).re.lo : ℝ) ≤ (a j).re.lo := by exact_mod_cast (hb j).1
  have h2 : ((a j).re.hi : ℝ) ≤ (b j).re.hi := by exact_mod_cast (hb j).2.1
  have h3 : ((b j).im.lo : ℝ) ≤ (a j).im.lo := by exact_mod_cast (hb j).2.2.1
  have h4 : ((a j).im.hi : ℝ) ≤ (b j).im.hi := by exact_mod_cast (hb j).2.2.2
  exact ⟨⟨h1.trans (hz.2 j).1.1, (hz.2 j).1.2.trans h2⟩,
    ⟨h3.trans (hz.2 j).2.1, (hz.2 j).2.2.trans h4⟩⟩

def splitLeft (q : ZBox) (imag : Bool) (cut : ℤ) : ZBox :=
  if imag then ⟨q.re, ⟨q.im.lo, cut⟩⟩ else ⟨⟨q.re.lo, cut⟩, q.im⟩
def splitRight (q : ZBox) (imag : Bool) (cut : ℤ) : ZBox :=
  if imag then ⟨q.re, ⟨cut, q.im.hi⟩⟩ else ⟨⟨cut, q.re.hi⟩, q.im⟩
def leftChild (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) : ZRayBox :=
  Function.update q j (splitLeft (q j) imag cut)
def rightChild (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ) : ZRayBox :=
  Function.update q j (splitRight (q j) imag cut)

theorem split_cover {q : ZBox} {z : ℂ} (hz : MemBox q z) (imag : Bool) (cut : ℤ) :
    MemBox (splitLeft q imag cut) z ∨ MemBox (splitRight q imag cut) z := by
  cases imag
  · by_cases hc : z.re ≤ cut
    · exact Or.inl ⟨⟨hz.1.1, hc⟩, hz.2⟩
    · exact Or.inr ⟨⟨le_of_lt (lt_of_not_ge hc), hz.1.2⟩, hz.2⟩
  · by_cases hc : z.im ≤ cut
    · exact Or.inl ⟨hz.1, ⟨hz.2.1, hc⟩⟩
    · exact Or.inr ⟨hz.1, ⟨le_of_lt (lt_of_not_ge hc), hz.2.2⟩⟩

theorem child_cover {S : ℕ} {q : ZRayBox} {z : Vector} (hz : MemRayBox S q z)
    (j : Fin 5) (imag : Bool) (cut : ℤ) :
    MemRayBox S (leftChild q j imag cut) z ∨ MemRayBox S (rightChild q j imag cut) z := by
  rcases split_cover (hz.2 j) imag cut with hl | hr
  · left
    refine ⟨hz.1, ?_⟩
    intro i
    by_cases hi : i = j
    · subst i
      simpa [leftChild] using hl
    · simpa [leftChild, Function.update_of_ne hi] using hz.2 i
  · right
    refine ⟨hz.1, ?_⟩
    intro i
    by_cases hi : i = j
    · subst i
      simpa [rightChild] using hr
    · simpa [rightChild, Function.update_of_ne hi] using hz.2 i

inductive ZPartition (n : ℕ) where
  | keep (v : Fin n)
  | reject (witness : IntervalKernel.RejectWitness)
  | split (j : Fin 5) (imag : Bool) (cut : ℤ) (left right : ZPartition n)
  deriving Repr

def checkZPartition {n : ℕ} (S : ℕ) (E : ZCarrier) (boxes : Fin n → ZRayBox) :
    ZRayBox → ZPartition n → Bool
  | q, .keep v => boxSubset q (boxes v)
  | q, .reject witness => rejectRayBox S E q witness
  | q, .split j imag cut left right =>
    checkZPartition S E boxes (leftChild q j imag cut) left &&
      checkZPartition S E boxes (rightChild q j imag cut) right

theorem checkZPartition_sound {n S : ℕ} (hS : 0 < S) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (tree : ZPartition n) {H : BasisMatrix} {z : Vector}
    (hH : CarrierBox (toCarrier S E) H) (hcommon : IsRawCommonRay H z) :
    ∀ q, checkZPartition S E boxes q tree = true → MemRayBox S q z →
      ∃ v, MemRayBox S (boxes v) z := by
  induction tree with
  | keep v =>
    intro q hcheck hz
    exact ⟨v, boxSubset_sound hcheck hz⟩
  | reject witness =>
    intro q hcheck hz
    exact False.elim (rejectRayBox_sound hS witness hcheck hH hz hcommon)
  | split j imag cut left right ihLeft ihRight =>
    intro q hcheck hz
    have hc : checkZPartition S E boxes (leftChild q j imag cut) left = true ∧
        checkZPartition S E boxes (rightChild q j imag cut) right = true := by
      simpa only [checkZPartition, Bool.and_eq_true] using hcheck
    rcases child_cover hz j imag cut with hl | hr
    · exact ihLeft _ hc.1 hl
    · exact ihRight _ hc.2 hr

def fullRoot (S : ℕ) : ZRayBox := fun _ => ⟨⟨-(S : ℤ), S⟩, ⟨-(S : ℤ), S⟩⟩

theorem fullRoot_covers (S : ℕ) {z : Vector} (hz : IsRawUnitRay z) :
    MemRayBox S (fullRoot S) z := by
  have h := IntervalKernel.fullRoot_covers hz
  refine ⟨hz.1, ?_⟩
  intro j
  have hr := (h.2 j)
  have hs : (0 : ℝ) ≤ S := Nat.cast_nonneg S
  have h1 := mul_le_mul_of_nonneg_left hr.1 hs
  have h2 := mul_le_mul_of_nonneg_left hr.2.1 hs
  have h3 := mul_le_mul_of_nonneg_left hr.2.2.1 hs
  have h4 := mul_le_mul_of_nonneg_left hr.2.2.2 hs
  simp only [IntervalKernel.fullRoot, Rat.cast_neg, Rat.cast_one, mul_neg, mul_one] at h1 h2 h3 h4
  simpa only [fullRoot, MemBox, Mem, Int.cast_neg, Int.cast_natCast,
    Complex.mul_re, Complex.mul_im, Complex.natCast_re, Complex.natCast_im,
    zero_mul, sub_zero, add_zero] using And.intro (And.intro h1 h2) (And.intro h3 h4)

theorem checkZPartition_fullRoot_sound {n S : ℕ} (hS : 0 < S) {E : ZCarrier}
    {boxes : Fin n → ZRayBox} {tree : ZPartition n}
    (hcheck : checkZPartition S E boxes (fullRoot S) tree = true)
    {H : BasisMatrix} (hH : CarrierBox (toCarrier S E) H) {z : Vector}
    (hz : IsRawCommonRay H z) : ∃ v, MemRawRayBox (toRawRayBox S (boxes v)) z := by
  obtain ⟨v, hv⟩ := checkZPartition_sound hS E boxes tree hH hz _ hcheck (fullRoot_covers S hz.1)
  exact ⟨v, (mem_toRawRayBox_iff hS _ _).mpr hv⟩

def CoveredBy {n : ℕ} (S : ℕ) (E : ZCarrier) (boxes : Fin n → ZRayBox)
    (q : ZRayBox) : Prop :=
  ∀ H, CarrierBox (toCarrier S E) H → ∀ z, IsRawCommonRay H z → MemRayBox S q z →
    ∃ v, MemRayBox S (boxes v) z

theorem coveredBy_of_check {n S : ℕ} (hS : 0 < S) {E : ZCarrier}
    {boxes : Fin n → ZRayBox} {q : ZRayBox} {tree : ZPartition n}
    (h : checkZPartition S E boxes q tree = true) : CoveredBy S E boxes q := by
  intro H hH z hz hq
  exact checkZPartition_sound hS E boxes tree hH hz q h hq

theorem coveredBy_of_subset {n S : ℕ} {E : ZCarrier} {boxes : Fin n → ZRayBox}
    {q parent : ZRayBox} (hsub : boxSubset q parent = true)
    (hparent : CoveredBy S E boxes parent) : CoveredBy S E boxes q := by
  intro H hH z hz hq
  exact hparent H hH z hz (boxSubset_sound hsub hq)

theorem coveredBy_split {n S : ℕ} {E : ZCarrier} {boxes : Fin n → ZRayBox}
    (q : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ)
    (hleft : CoveredBy S E boxes (leftChild q j imag cut))
    (hright : CoveredBy S E boxes (rightChild q j imag cut)) : CoveredBy S E boxes q := by
  intro H hH z hz hq
  rcases child_cover hq j imag cut with hl | hr
  · exact hleft H hH z hz hl
  · exact hright H hH z hz hr

theorem coveredBy_split_literal {n S : ℕ} {E : ZCarrier} {boxes : Fin n → ZRayBox}
    (q left right : ZRayBox) (j : Fin 5) (imag : Bool) (cut : ℤ)
    (hleftSub : boxSubset (leftChild q j imag cut) left = true)
    (hrightSub : boxSubset (rightChild q j imag cut) right = true)
    (hleft : CoveredBy S E boxes left) (hright : CoveredBy S E boxes right) :
    CoveredBy S E boxes q :=
  coveredBy_split q j imag cut (coveredBy_of_subset hleftSub hleft)
    (coveredBy_of_subset hrightSub hright)

theorem coveredBy_fullRoot {n S : ℕ} (hS : 0 < S) {E : ZCarrier}
    {boxes : Fin n → ZRayBox} (h : CoveredBy S E boxes (fullRoot S))
    {H : BasisMatrix} (hH : CarrierBox (toCarrier S E) H)
    {z : Vector} (hz : IsRawCommonRay H z) : ∃ v, MemRawRayBox (toRawRayBox S (boxes v)) z := by
  obtain ⟨v, hv⟩ := h H hH z hz (fullRoot_covers S hz.1)
  exact ⟨v, (mem_toRawRayBox_iff hS _ _).mpr hv⟩

#print axioms checkZPartition_sound
#print axioms checkZPartition_fullRoot_sound
#print axioms coveredBy_split_literal
#print axioms coveredBy_fullRoot
end Mub6.Numerical.IntegerIntervals
