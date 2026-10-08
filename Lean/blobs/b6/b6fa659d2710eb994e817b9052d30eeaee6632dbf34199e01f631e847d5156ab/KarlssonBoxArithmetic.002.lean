import KarlssonLocalRoots

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
noncomputable section

def clipUnit (b : RationalRectangle) : RationalRectangle :=
  let c : RationalRectangle := ⟨max b.reLo (-1),min b.reHi 1,max b.imLo (-1),min b.imHi 1⟩
  if c.reLo ≤ c.reHi ∧ c.imLo ≤ c.imHi then c else unitEntryBox

theorem unit_mem {z : ℂ} (hz : normSq z=1) : MemRectangle unitEntryBox z := by
  have h := unit_coordinate_bounds hz
  exact ⟨h.1.1,h.1.2,h.2⟩

theorem clipUnit_sound {b : RationalRectangle} {z : ℂ}
    (hb : MemRectangle b z) (hz : normSq z=1) : MemRectangle (clipUnit b) z := by
  have hu := unit_mem hz
  dsimp only [clipUnit]
  split_ifs
  · simp only [MemRectangle,Rat.cast_max,Rat.cast_min,Rat.cast_neg,Rat.cast_one] at *
    exact ⟨max_le hb.1 hu.1,le_min hb.2.1 hu.2.1,
      max_le hb.2.2.1 hu.2.2.1,le_min hb.2.2.2 hu.2.2.2⟩
  · exact hu

def Covers (b : Option RationalRectangle) (z : ℂ) : Prop :=
  match b with | none => True | some b => MemRectangle b z
def oSub (a b : Option RationalRectangle) : Option RationalRectangle := do
  let a ← a; let b ← b; pure (boxSub a b)
def oMul (a b : Option RationalRectangle) : Option RationalRectangle := do
  let a ← a; let b ← b; pure (boxMul a b)
def oConj (a : Option RationalRectangle) : Option RationalRectangle := a.map boxConj
def oDiv (a b : Option RationalRectangle) : Option RationalRectangle := do
  let a ← a; let b ← b
  if 0 < (boxNormSq b).lo then pure (complexDivide a b) else none

theorem oSub_sound {a b : Option RationalRectangle} {z w : ℂ}
    (ha : Covers a z) (hb : Covers b w) : Covers (oSub a b) (z-w) := by
  cases a <;> cases b <;> simp_all [oSub,Covers]
  exact mem_boxSub ha hb
theorem oMul_sound {a b : Option RationalRectangle} {z w : ℂ}
    (ha : Covers a z) (hb : Covers b w) : Covers (oMul a b) (z*w) := by
  cases a <;> cases b <;> simp_all [oMul,Covers]
  exact mem_boxMul ha hb
theorem oConj_sound {a : Option RationalRectangle} {z : ℂ}
    (ha : Covers a z) : Covers (oConj a) (star z) := by
  cases a <;> simp_all [oConj,Covers]
  exact mem_boxConj ha
theorem oDiv_sound {a b : Option RationalRectangle} {z w : ℂ}
    (ha : Covers a z) (hb : Covers b w) : Covers (oDiv a b) (z/w) := by
  cases a <;> cases b <;> simp_all [oDiv,Covers]
  split_ifs with hd
  · exact complexDivide_sound hd ha hb
  · trivial

def resolveUnit (b : Option RationalRectangle) : RationalRectangle :=
  match b with | none => unitEntryBox | some b => clipUnit b
theorem resolveUnit_sound {b : Option RationalRectangle} {z : ℂ}
    (hb : Covers b z) (hz : normSq z=1) : MemRectangle (resolveUnit b) z := by
  cases b with
  | none => exact unit_mem hz
  | some b => exact clipUnit_sound hb hz

def fBox (a b x : Option RationalRectangle) : Option RationalRectangle :=
  oDiv (oSub (oMul a x) b) (oSub (oMul (oConj b) x) (oConj a))
def gBox (a b y : Option RationalRectangle) : Option RationalRectangle :=
  oDiv (oSub (oMul (oConj a) y) b) (oSub (oMul (oConj b) y) a)
def sBox (a b : Option RationalRectangle) : Option RationalRectangle := oDiv (oConj a) (oConj b)
def tBox (a b : Option RationalRectangle) : Option RationalRectangle := oDiv a (oConj b)

theorem fBox_sound {a b x : Option RationalRectangle} {A B X : ℂ}
    (ha : Covers a A) (hb : Covers b B) (hx : Covers x X) : Covers (fBox a b x) (forward A B X) :=
  oDiv_sound (oSub_sound (oMul_sound ha hx) hb)
    (oSub_sound (oMul_sound (oConj_sound hb) hx) (oConj_sound ha))
theorem gBox_sound {a b y : Option RationalRectangle} {A B Y : ℂ}
    (ha : Covers a A) (hb : Covers b B) (hy : Covers y Y) : Covers (gBox a b y) (backward A B Y) :=
  oDiv_sound (oSub_sound (oMul_sound (oConj_sound ha) hy) hb)
    (oSub_sound (oMul_sound (oConj_sound hb) hy) ha)
theorem sBox_sound {a b : Option RationalRectangle} {A B : ℂ}
    (ha : Covers a A) (hb : Covers b B) : Covers (sBox a b) (singularInput A B) :=
  oDiv_sound (oConj_sound ha) (oConj_sound hb)
theorem tBox_sound {a b : Option RationalRectangle} {A B : ℂ}
    (ha : Covers a A) (hb : Covers b B) : Covers (tBox a b) (singularOutput A B) :=
  oDiv_sound ha (oConj_sound hb)

def phaseOptions (chart : Chart) (a b c d f : Option RationalRectangle) : Fin 4 → Option RationalRectangle :=
  match chart with
  | .regular => ![f,gBox a b (fBox c d f),fBox a b f,fBox c d f]
  | .singularAInput => ![sBox a b,f,fBox c d f,fBox c d (sBox a b)]
  | .singularAOutput => ![f,gBox c d (tBox a b),tBox a b,fBox c d f]
  | .singularBInput => ![sBox c d,f,fBox a b (sBox c d),fBox a b f]
  | .singularBOutput => ![f,gBox a b (tBox c d),fBox a b f,tBox c d]

theorem phaseOptions_sound (chart : Chart) {a b c d f : Option RationalRectangle} {A B C D F : ℂ}
    (ha : Covers a A) (hb : Covers b B) (hc : Covers c C) (hd : Covers d D) (hf : Covers f F) :
    ∀ i, Covers (phaseOptions chart a b c d f i) (phaseSquares chart A B C D F i) := by
  intro i
  cases chart <;> fin_cases i <;> simp only [phaseOptions,phaseSquares,Matrix.cons_val_zero,
    Matrix.cons_val_one,Matrix.cons_val_two,Matrix.cons_val_three]
  all_goals first
    | exact hf
    | exact sBox_sound ha hb
    | exact sBox_sound hc hd
    | exact tBox_sound ha hb
    | exact tBox_sound hc hd
    | exact fBox_sound ha hb hf
    | exact fBox_sound hc hd hf
    | exact fBox_sound hc hd (sBox_sound ha hb)
    | exact fBox_sound ha hb (sBox_sound hc hd)
    | exact gBox_sound ha hb (fBox_sound hc hd hf)
    | exact gBox_sound hc hd (tBox_sound ha hb)
    | exact gBox_sound ha hb (tBox_sound hc hd)

structure RootRecipe where
  re : ℚ
  im : ℚ
  radius : ℚ
  deriving DecidableEq
def RootRecipe.Valid (r : RootRecipe) (b : RationalRectangle) : Prop :=
  r.re^2+r.im^2=1 ∧ 0≤r.radius ∧ (rootResidual b r.re r.im).hi≤2*r.radius^2
instance (r : RootRecipe) (b : RationalRectangle) : Decidable (r.Valid b) := inferInstanceAs (Decidable (_ ∧ _ ∧ _))
def rootEnclosure (r : RootRecipe) (b : RationalRectangle) : RationalRectangle :=
  if r.Valid b then clipUnit (rootBox r.re r.im r.radius) else unitEntryBox

theorem rootEnclosure_sound {r : RootRecipe} {b : RationalRectangle} {z : ℂ}
    (hz : normSq z=1) (hb : MemRectangle b (z^2)) :
    ∃ w : ℂ, w^2=z^2 ∧ normSq w=1 ∧ MemRectangle (rootEnclosure r b) w := by
  unfold rootEnclosure
  split_ifs with hr
  · obtain ⟨w,hs,hu,hw⟩ := root_from_squared_box hz hb hr.1 hr.2.1 hr.2.2
    exact ⟨w,hs,hu,clipUnit_sound hw hu⟩
  · exact ⟨z,rfl,hz,unit_mem hz⟩

#print axioms clipUnit_sound
#print axioms oDiv_sound
#print axioms phaseOptions_sound
#print axioms rootEnclosure_sound
end
end Mub6.Classification.KarlssonCompiler
