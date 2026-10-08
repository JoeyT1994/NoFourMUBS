import Root255Trig
import DirectRadicand
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot25520261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open ShoulderDirectR20261003 ShoulderRoot255Trig20261003
noncomputable section
def oneBox : RationalRectangle := boxPoint 1 0
def rawS := boxNeg (boxAdd (boxAdd oneBox B0) B1)
def rawT := boxNeg (boxAdd (boxAdd oneBox B2) B3)
def rawR := boxNeg (boxAdd (boxAdd oneBox (boxMul B2 (boxConj B0))) (boxMul B3 (boxConj B1)))
def sideBoxes : SidePolynomialBoxes := ⟨⟨(-2157221811/1073741824),(-2149984403/1073741824),(-7917549/134217728),(-29559313/536870912)⟩,⟨(-2149986479/1073741824),(-535683165/268435456),(-31457765/536870912),(-14680513/268435456)⟩,⟨(-504625363/34359738368),(-76405239/68719476736),(-266827487/34359738368),(16676717/2147483648)⟩⟩
theorem side_s_check : BoxIncludes rawS sideBoxes.s := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,rawS,oneBox,sideBoxes,B0,B1,B2,B3]
theorem side_t_check : BoxIncludes rawT sideBoxes.t := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,rawT,oneBox,sideBoxes,B0,B1,B2,B3]
theorem side_r_check : BoxIncludes rawR sideBoxes.r := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,rawR,oneBox,sideBoxes,B0,B1,B2,B3]
theorem side_boxes_sound {a b c d : ℂ}
    (ha : MemRectangle B0 a) (hb : MemRectangle B1 b)
    (hc : MemRectangle B2 c) (hd : MemRectangle B3 d) :
    CoversSidePolynomials sideBoxes (-(1+a+b)) (-(1+c+d)) (-(1+c*star a+d*star b)) := by
  have h1 : MemRectangle oneBox (1:ℂ) := by norm_num [MemRectangle,oneBox,boxPoint,rectangle,point]
  exact ⟨box_mono side_s_check (mem_boxNeg (mem_boxAdd (mem_boxAdd h1 ha) hb)),
    box_mono side_t_check (mem_boxNeg (mem_boxAdd (mem_boxAdd h1 hc) hd)),
    box_mono side_r_check (mem_boxNeg (mem_boxAdd (mem_boxAdd h1
      (mem_boxMul hc (mem_boxConj ha))) (mem_boxMul hd (mem_boxConj hb))))⟩
def XI : Interval := ⟨(275726791923/68719476736),(138807831619/34359738368)⟩
def YI : Interval := ⟨(273868532873/68719476736),(275754941929/68719476736)⟩
def ZI : Interval := ⟨(42475/34359738368),(9483299/34359738368)⟩
def JI : Interval := ⟨(-4189380883/34359738368),(-359804981/68719476736)⟩
def GI : Interval := ⟨(186878394811/68719476736),(206279837653/68719476736)⟩
def EI : Interval := ⟨(56706957093/68719476736),(68520075897/68719476736)⟩
def CI : Interval := ⟨(412090437879/68719476736),(262706209297/34359738368)⟩
def RInt : Interval := ⟨(-2339705373489/68719476736),(-388981611/17179869184)⟩
theorem x_check : Includes (boxNormSq sideBoxes.s) XI := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,sideBoxes,XI]
theorem y_check : Includes (boxNormSq sideBoxes.t) YI := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,sideBoxes,YI]
theorem z_check : Includes (boxNormSq sideBoxes.r) ZI := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,sideBoxes,ZI]
theorem j_check : Includes (jBox sideBoxes) JI := by
  norm_num [BoxIncludes,Includes,mul,sub,add,neg,square,point,boxNeg,boxAdd,boxSub,boxMul,boxConj,boxNormSq,rectangle,reInterval,imInterval,boxPoint,jBox,sideBoxes,JI]
theorem g_check : Includes (gI XI YI ZI JI) GI := by
  norm_num [Includes,mul,sub,add,neg,square,point,gI,XI,YI,ZI,JI,GI]
theorem e_check : Includes (etaI XI YI ZI JI) EI := by
  norm_num [Includes,mul,sub,add,neg,square,point,etaI,XI,YI,ZI,JI,EI]
theorem c_check : Includes (chiI XI YI ZI JI) CI := by
  norm_num [Includes,mul,sub,add,neg,square,point,chiI,XI,YI,ZI,JI,CI]
theorem r_check : Includes (RI GI EI CI) RInt := by
  norm_num [Includes,mul,sub,add,neg,square,point,RI,GI,EI,CI,RInt]
theorem radicand_negative {s t r : ℂ} (h : CoversSidePolynomials sideBoxes s t r) :
    (ShoulderPhaseGate20261002.radicand s t r).re<0 := by
  have hx := mem_mono x_check (mem_boxNormSq h.s_mem)
  have hy := mem_mono y_check (mem_boxNormSq h.t_mem)
  have hz := mem_mono z_check (mem_boxNormSq h.r_mem)
  have hj := mem_mono j_check (jBox_sound h)
  have hg := mem_mono g_check (gI_sound hx hy hz hj)
  have he := mem_mono e_check (etaI_sound hx hy hz hj)
  have hc := mem_mono c_check (chiI_sound hx hy hz hj)
  have hr := mem_mono r_check (RI_sound hg he hc)
  rw [complex_radicand_real]
  have hneg : (RInt.hi:ℝ)<0 := by norm_num [RInt]
  exact lt_of_le_of_lt hr.2 hneg
/-- The entire closed four-radian cube has no normalized unit complementary side. -/
theorem no_complementary_side {θ : Fin 4 → ℝ} (hθ : Cube θ)
    (E B : Hadamard6.Mat3) (hrow : ∀ j, E 0 j=1) (hcol : ∀ i, E i 0=1)
    (h00 : E 1 1=cis (θ 0)) (h01 : E 1 2=cis (θ 1))
    (h10 : E 2 1=cis (θ 2)) (h11 : E 2 2=cis (θ 3))
    (hu : Hadamard6.EntrywiseUnit B) (hb : ∀ j, B 0 j=1)
    (hg : E*Matrix.conjTranspose E+B*Matrix.conjTranspose B=Hadamard6.sixI3) : False := by
  have hs := seed_boxes_sound hθ
  have hm := side_boxes_sound (hs 0) (hs 1) (hs 2) (hs 3)
  have hn := radicand_negative hm
  have hp := complementary_radicand_nonnegative E B hu hb hg
  simp only [seedS,seedT,seedR,Matrix.mul_apply,Matrix.conjTranspose_apply,
    Fin.sum_univ_three,hrow,hcol,h00,h01,h10,h11,star_one,mul_one] at hp
  exact (not_lt_of_ge hp) hn
/-- A positive-width physical matrix endpoint; no corner maximality or strictness guard. -/
theorem no_hadamard_in_root255 {H : Hadamard6.Mat6} (hH : Hadamard6.IsHadamard H)
    (hrow : ∀ j, H (Sum.inl 0) j=1) (hcol : ∀ i, H i (Sum.inl 0)=1)
    {θ : Fin 4 → ℝ} (hθ : Cube θ)
    (h00 : H (Sum.inl 1) (Sum.inl 1)=cis (θ 0))
    (h01 : H (Sum.inl 1) (Sum.inl 2)=cis (θ 1))
    (h10 : H (Sum.inl 2) (Sum.inl 1)=cis (θ 2))
    (h11 : H (Sum.inl 2) (Sum.inl 2)=cis (θ 3)) : False := by
  exact no_complementary_side hθ (Matrix.toBlocks₁₁ H) (Matrix.toBlocks₁₂ H)
    (fun j => hrow (Sum.inl j)) (fun i => hcol (Sum.inl i)) h00 h01 h10 h11
    (Hadamard6.hadamard_blocks_entrywiseUnit hH).2.1
    (fun j => hrow (Sum.inr j)) (Hadamard6.hadamard_row_block_grams hH).1

theorem cube_radius_positive : (0:ℝ)<1/512 := by norm_num

#print axioms radicand_negative
#print axioms no_complementary_side
#print axioms no_hadamard_in_root255
#print axioms cube_radius_positive
end
end ShoulderRoot25520261003
