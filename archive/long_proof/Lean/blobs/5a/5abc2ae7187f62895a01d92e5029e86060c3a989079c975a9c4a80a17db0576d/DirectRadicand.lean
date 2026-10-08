import IntervalKernel
import ShoulderPhaseGatePhysical
import Hadamard6.BlockGram

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderDirectR20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open ShoulderPhaseGate20261002
noncomputable section

structure SidePolynomialBoxes where
  s : RationalRectangle
  t : RationalRectangle
  r : RationalRectangle
structure CoversSidePolynomials (B : SidePolynomialBoxes) (s t r : ℂ) : Prop where
  s_mem : MemRectangle B.s s
  t_mem : MemRectangle B.t t
  r_mem : MemRectangle B.r r

def seedS (E : Hadamard6.Mat3) : ℂ := -(E*Matrix.conjTranspose E) 1 0
def seedT (E : Hadamard6.Mat3) : ℂ := -(E*Matrix.conjTranspose E) 2 0
def seedR (E : Hadamard6.Mat3) : ℂ := -(E*Matrix.conjTranspose E) 2 1

theorem complementary_side_data (E B : Hadamard6.Mat3)
    (hfirst : ∀ j, B 0 j=1)
    (hgram : E*Matrix.conjTranspose E+B*Matrix.conjTranspose B=Hadamard6.sixI3) :
    B 1 0+B 1 1+B 1 2=seedS E ∧
    B 2 0+B 2 1+B 2 2=seedT E ∧
    overlap (B 1 0) (B 1 1) (B 1 2) (B 2 0) (B 2 1) (B 2 2)=seedR E := by
  have hz (i j : Fin 3) (hij : i≠j) :
      (B*Matrix.conjTranspose B) i j= -(E*Matrix.conjTranspose E) i j := by
    have hh := congrArg (fun M : Hadamard6.Mat3 => M i j) hgram
    simp only [Matrix.add_apply,Hadamard6.sixI3,Matrix.smul_apply,Matrix.one_apply,
      if_neg hij,smul_zero] at hh
    exact eq_neg_of_add_eq_zero_right hh
  refine ⟨?_,?_,?_⟩
  · simpa [seedS,Matrix.mul_apply,Matrix.conjTranspose_apply,Fin.sum_univ_three,
      hfirst,add_assoc] using hz 1 0 (by decide)
  · simpa [seedT,Matrix.mul_apply,Matrix.conjTranspose_apply,Fin.sum_univ_three,
      hfirst,add_assoc] using hz 2 0 (by decide)
  · simpa [seedR,overlap,Matrix.mul_apply,Matrix.conjTranspose_apply,
      Fin.sum_univ_three,add_assoc] using hz 2 1 (by decide)

def realG (x y z j : ℝ) := 27-3*(x+y+z)+j
def realEta (x y z j : ℝ) := 9-(x+y+z)+j
def realChi (x y z j : ℝ) :=
  x*y+x*z+y*z-x*y*z-((x+y+z)-9)*((x+y+z)-18)+((x+y+z)-15)*j
def realR (x y z j : ℝ) := 4*(realG x y z j)^2*realEta x y z j-(realChi x y z j)^2

theorem complex_radicand_real (s t r : ℂ) :
    (radicand s t r).re=realR (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
      (2*(s*r*star t).re) := by
  have hx (z : ℂ) : X z=(Complex.normSq z:ℂ) := by
    simpa only [X,Complex.star_def] using Complex.mul_conj z
  have hj : J s t r=((2*(s*r*star t).re:ℝ):ℂ) := by
    calc
      J s t r = s*r*star t+star (s*r*star t) := by
        simp only [J,star_mul,star_star]
      _ = _ := by
        apply Complex.ext <;>
          simp only [Complex.add_re,Complex.add_im,Complex.star_def,Complex.conj_re,
            Complex.conj_im,Complex.ofReal_re,Complex.ofReal_im] <;> ring
  have hg : g s t r=(realG (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
      (2*(s*r*star t).re):ℂ) := by
    unfold g realG
    rw [hx s,hx t,hx r,hj]
    push_cast
    ring
  have he : eta s t r=(realEta (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
      (2*(s*r*star t).re):ℂ) := by
    unfold eta realEta
    rw [hx s,hx t,hx r,hj]
    push_cast
    ring
  have hc : chi s t r=(realChi (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
      (2*(s*r*star t).re):ℂ) := by
    unfold chi realChi
    rw [hx s,hx t,hx r,hj]
    push_cast
    ring
  unfold radicand realR
  rw [hg,he,hc]
  simp only [← Complex.ofReal_pow,← Complex.ofReal_mul,← Complex.ofReal_sub,Complex.ofReal_re]
  norm_num

def gI (x y z j : Interval) : Interval :=
  add (sub (point 27) (mul (point 3) (add (add x y) z))) j
def etaI (x y z j : Interval) : Interval :=
  add (sub (point 9) (add (add x y) z)) j
def chiI (x y z j : Interval) : Interval :=
  add (sub (sub (add (add (mul x y) (mul x z)) (mul y z)) (mul (mul x y) z))
    (mul (sub (add (add x y) z) (point 9)) (sub (add (add x y) z) (point 18))))
    (mul (sub (add (add x y) z) (point 15)) j)
def RI (g e c : Interval) : Interval := sub (mul (mul (point 4) (square g)) e) (square c)

theorem gI_sound {X Y Z J : Interval} {x y z j : ℝ}
    (hx : Mem X x) (hy : Mem Y y) (hz : Mem Z z) (hj : Mem J j) :
    Mem (gI X Y Z J) (realG x y z j) :=
  mem_add (mem_sub (mem_point 27) (mem_mul (mem_point 3) (mem_add (mem_add hx hy) hz))) hj

theorem etaI_sound {X Y Z J : Interval} {x y z j : ℝ}
    (hx : Mem X x) (hy : Mem Y y) (hz : Mem Z z) (hj : Mem J j) :
    Mem (etaI X Y Z J) (realEta x y z j) :=
  mem_add (mem_sub (mem_point 9) (mem_add (mem_add hx hy) hz)) hj

theorem chiI_sound {X Y Z J : Interval} {x y z j : ℝ}
    (hx : Mem X x) (hy : Mem Y y) (hz : Mem Z z) (hj : Mem J j) :
    Mem (chiI X Y Z J) (realChi x y z j) :=
  mem_add (mem_sub (mem_sub (mem_add (mem_add (mem_mul hx hy) (mem_mul hx hz)) (mem_mul hy hz))
    (mem_mul (mem_mul hx hy) hz))
    (mem_mul (mem_sub (mem_add (mem_add hx hy) hz) (mem_point 9))
      (mem_sub (mem_add (mem_add hx hy) hz) (mem_point 18))))
    (mem_mul (mem_sub (mem_add (mem_add hx hy) hz) (mem_point 15)) hj)

theorem RI_sound {G E C : Interval} {g e c : ℝ}
    (hg : Mem G g) (he : Mem E e) (hc : Mem C c) :
    Mem (RI G E C) (4*g^2*e-c^2) := by
  simpa only [RI,pow_two,Rat.cast_ofNat] using
    mem_sub (mem_mul (mem_mul (mem_point 4) (mem_square hg)) he) (mem_square hc)

def jBox (B : SidePolynomialBoxes) : Interval :=
  mul (point 2) (reInterval (boxMul (boxMul B.s B.r) (boxConj B.t)))

theorem jBox_sound {B : SidePolynomialBoxes} {s t r : ℂ} (h : CoversSidePolynomials B s t r) :
    Mem (jBox B) (2*(s*r*star t).re) := by
  have he := mem_boxMul (mem_boxMul h.s_mem h.r_mem) (mem_boxConj h.t_mem)
  exact mem_mul (mem_point 2) ⟨he.1,he.2.1⟩

/-- Actual unit side entries force nonnegative radicand, without a strictness,
maximality, nonpole, or determinant hypothesis. -/
theorem complementary_radicand_nonnegative (E B : Hadamard6.Mat3)
    (hunit : Hadamard6.EntrywiseUnit B) (hfirst : ∀ j, B 0 j=1)
    (hgram : E*Matrix.conjTranspose E+B*Matrix.conjTranspose B=Hadamard6.sixI3) :
    0≤(radicand (seedS E)
      (seedT E) (seedR E)).re := by
  obtain ⟨hs,ht,hr⟩ := complementary_side_data E B hfirst hgram
  have h := (physical_moment_branches (B 1 0) (B 1 1) (B 1 2)
    (B 2 0) (B 2 1) (B 2 2)
    (hunit 1 0) (hunit 1 1) (hunit 1 2) (hunit 2 0) (hunit 2 1) (hunit 2 2)).1
  dsimp only at h
  rwa [hs,ht,hr] at h

#print axioms complex_radicand_real
#print axioms gI_sound
#print axioms etaI_sound
#print axioms chiI_sound
#print axioms RI_sound
#print axioms jBox_sound
#print axioms complementary_radicand_nonnegative
end
end ShoulderDirectR20261003
