import CenteredLambdaBounds

set_option autoImplicit false

namespace CenteredLambdaControls

open Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.RadicalIntervals

noncomputable section

def residual0 : RationalRectangle := ⟨0,0,0,0⟩

def denominator0 : RationalRectangle := ⟨1,2,0,0⟩

def output0 : RationalRectangle := ⟨1,1,0,0⟩

theorem output_eq0 : poleSafeCenteredLambdaBox residual0 denominator0 1 0 0 = output0 := by decide +kernel

theorem output_sound0 {n d L : ℂ}
    (hR : MemRectangle residual0 (n-rationalCenter 1 0*d))
    (hD : MemRectangle denominator0 d) (he : n=d*L) (hL : Complex.normSq L=1) :
    MemRectangle output0 L := by
  rw [← output_eq0]
  exact poleSafeCenteredLambdaBox_sound hR hD he hL

#print axioms output_eq0

#print axioms output_sound0

def residual1 : RationalRectangle := ⟨(-1/1000000),(1/1000000),(-1/1000000),(1/1000000)⟩

def denominator1 : RationalRectangle := ⟨(1/2),(3/2),(-1/10),(1/10)⟩

def output1 : RationalRectangle := ⟨(4294955147/4294967296),1,(-12149/4294967296),(12149/4294967296)⟩

theorem output_eq1 : poleSafeCenteredLambdaBox residual1 denominator1 1 0 (12149/4294967296) = output1 := by decide +kernel

theorem output_sound1 {n d L : ℂ}
    (hR : MemRectangle residual1 (n-rationalCenter 1 0*d))
    (hD : MemRectangle denominator1 d) (he : n=d*L) (hL : Complex.normSq L=1) :
    MemRectangle output1 L := by
  rw [← output_eq1]
  exact poleSafeCenteredLambdaBox_sound hR hD he hL

#print axioms output_eq1

#print axioms output_sound1

def residual2 : RationalRectangle := ⟨0,0,0,0⟩

def denominator2 : RationalRectangle := ⟨(-1/10),(1/10),(-1/10),(1/10)⟩

def output2 : RationalRectangle := ⟨-1,1,-1,1⟩

theorem output_eq2 : poleSafeCenteredLambdaBox residual2 denominator2 1 0 0 = output2 := by decide +kernel

theorem output_sound2 {n d L : ℂ}
    (hR : MemRectangle residual2 (n-rationalCenter 1 0*d))
    (hD : MemRectangle denominator2 d) (he : n=d*L) (hL : Complex.normSq L=1) :
    MemRectangle output2 L := by
  rw [← output_eq2]
  exact poleSafeCenteredLambdaBox_sound hR hD he hL

#print axioms output_eq2

#print axioms output_sound2

def residual3 : RationalRectangle := ⟨(-1/100),(1/100),(-1/100),(1/100)⟩

def denominator3 : RationalRectangle := ⟨0,0,2,3⟩

def output3 : RationalRectangle := ⟨(12733051863/21474836480),(13036751913/21474836480),(17028019159/21474836480),(17331719209/21474836480)⟩

theorem output_eq3 : poleSafeCenteredLambdaBox residual3 denominator3 (3/5) (4/5) (30370005/4294967296) = output3 := by decide +kernel

theorem output_sound3 {n d L : ℂ}
    (hR : MemRectangle residual3 (n-rationalCenter (3/5) (4/5)*d))
    (hD : MemRectangle denominator3 d) (he : n=d*L) (hL : Complex.normSq L=1) :
    MemRectangle output3 L := by
  rw [← output_eq3]
  exact poleSafeCenteredLambdaBox_sound hR hD he hL

#print axioms output_eq3

#print axioms output_sound3

end

end CenteredLambdaControls
