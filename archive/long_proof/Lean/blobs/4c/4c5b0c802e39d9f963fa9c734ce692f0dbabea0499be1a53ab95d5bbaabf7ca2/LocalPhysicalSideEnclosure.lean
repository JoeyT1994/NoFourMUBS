import FourierRadicandIntervals
import RationalRootCertificates

/-! Physical binding of local rational radical certificates. Input moment
coverage and the rational certificate inequalities remain explicit hypotheses.
No principal-root continuity or global job-cover claim is used. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

structure SideMomentBoxes where
  s : RationalRectangle
  t : RationalRectangle
  u : RationalRectangle
  v : RationalRectangle
  r : RationalRectangle
  W : RationalRectangle
  omega : RationalRectangle

structure CoversSideMoments (B : SideMomentBoxes) (x y : Fin 3 → ℂ) (w : ℂ) : Prop where
  s_mem : MemRectangle B.s (sum3 x)
  t_mem : MemRectangle B.t (sum3 y)
  u_mem : MemRectangle B.u (prod3 x)
  v_mem : MemRectangle B.v (prod3 y)
  r_mem : MemRectangle B.r (cross3 x y)
  W_mem : MemRectangle B.W (permanentSide x y)
  omega_mem : MemRectangle B.omega w

def signedRootBox (negative : Bool) (a b radius : ℚ) : RationalRectangle :=
  if negative then boxNeg (centerBox a b radius) else centerBox a b radius

def localRadicandBox (B : SideMomentBoxes) (negative : Bool) (a b radius : ℚ) :
    RationalRectangle :=
  boxSideRadicand B.s B.t B.u B.v B.r B.W (signedRootBox negative a b radius)

structure LocalSideCertificate (B : SideMomentBoxes) (a b radius : ℚ)
    (tauRe tauIm tauRadius : Bool → ℚ) : Prop where
  square : SquareCertificate (boxDiscriminant B.s B.t B.u B.v B.W) a b radius
  cube : ∀ negative, CubeCertificate (localRadicandBox B negative a b radius)
    (tauRe negative) (tauIm negative) (tauRadius negative)

def localSideBox (B : SideMomentBoxes) (negative : Bool) (a b radius : ℚ)
    (tauRe tauIm tauRadius : Bool → ℚ) : Rect3 :=
  boxReconstructedSide B.s B.t B.u B.v B.W (signedRootBox negative a b radius)
    (centerBox (tauRe negative) (tauIm negative) (tauRadius negative)) B.omega

/-- Any certified moment box encloses a representative of the actual physical
side. The only returned discrete choices are a square-root sign and a column
permutation; the cube-root choice is absorbed by that permutation. -/
theorem physical_side_local_enclosure (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det)
    (B : SideMomentBoxes) (hB : CoversSideMoments B x y w)
    (a b radius : ℚ) (tauRe tauIm tauRadius : Bool → ℚ)
    (hc : LocalSideCertificate B a b radius tauRe tauIm tauRadius) :
    ∃ negative : Bool, ∃ p : Equiv.Perm (Fin 3),
      MemMatrix (localSideBox B negative a b radius tauRe tauIm tauRadius)
        (fun i j => actualSide x y i (p j)) := by
  obtain ⟨delta,⟨tau0,hdata⟩,hpivot,_hT,hrec⟩ :=
    actual_good_side_scalar_cover x y w hw hx hy hg
  have hguard := actual_good_delta_guard x y w delta hw hx hy hg hdata.delta_square
  have hdisc := boxDiscriminant_sound hB.s_mem hB.t_mem hB.u_mem hB.v_mem hB.W_mem
  obtain ⟨negative,hd⟩ : ∃ negative : Bool,
      MemRectangle (signedRootBox negative a b radius) delta := by
    rcases squareCertificate_all_roots hc.square hdisc hdata.delta_square with hp | hn
    · exact ⟨false,hp⟩
    · exact ⟨true,hn⟩
  have hrad := boxSideRadicand_sound hB.s_mem hB.t_mem hB.u_mem hB.v_mem
    hB.r_mem hB.W_mem hd hguard
  obtain ⟨tau,htau,hbox⟩ := cubeCertificate_sound (hc.cube negative) hrad
  obtain ⟨_hdata,htau_lower,_htau_upper,_hinv,p,he⟩ := hrec tau htau
  have hm := boxReconstructedSide_sound hB.s_mem hB.t_mem hB.u_mem hB.v_mem
    hB.W_mem hd hbox hB.omega_mem hpivot htau_lower
  change MemMatrix (localSideBox B negative a b radius tauRe tauIm tauRadius)
    (reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
      (cross3 x y) (permanentSide x y) delta tau w) at hm
  rw [he] at hm
  exact ⟨negative,p,hm⟩

#check physical_side_local_enclosure
#print axioms physical_side_local_enclosure
end
end Mub6.Classification.RadicalIntervals
