import NoFourMUBs.Step2.Reconstruction.Companion.Core
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator00
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator01
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator10
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator11
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator20
import NoFourMUBs.Step2.Reconstruction.Companion.Numerator21
import NoFourMUBs.Step2.Reconstruction.CubicEvaluation
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Centered
import Hadamard6.QuotientAlgebra
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.Companion
open BaseCoefficients CriticalMomentQuad20261003
abbrev Q (a b c d : ℂ) := Quad (-cachedV a b c d) (cachedU a b c d)
abbrev C (a b c d : ℂ) := CubicEvaluation.Cubic (-cachedV a b c d) (cachedU a b c d)

def kappa (a b c d : ℂ) : ℂ :=
  cachedDelta a c b d * cachedC6 a b c d / (cachedDelta a b c d * cachedC6 a c b d)
def verticalProduct (a b c d : ℂ) : Q a b c d :=
  ⟨(cachedU a c b d + kappa a b c d*cachedU a b c d)/2,-kappa a b c d⟩
def modulus (a b c d : ℂ) : C a b c d :=
  ⟨verticalProduct a b c d,
   -(verticalProduct a b c d * scalar (-(1+a⁻¹+c⁻¹))),scalar (-(1+a+c))⟩
def companion (a b c d : ℂ) : C a b c d :=
  ⟨⟨num00 a b c d / (denominatorCore a b c d),num01 a b c d / (denominatorCore a b c d*a*b)⟩,
   ⟨num10 a b c d / (denominatorCore a b c d*c),num11 a b c d / (denominatorCore a b c d*a^2*b*c)⟩,
   ⟨num20 a b c d / (denominatorCore a b c d*c),num21 a b c d / (denominatorCore a b c d*a^2*b*c)⟩⟩

def reducePoly {A B : ℂ} (m : CubicEvaluation.Cubic A B) (c0 c1 c2 c3 : ℂ) :
    CubicEvaluation.Cubic A B :=
  ⟨scalar c0+scalar c3*m.c0,scalar c1+scalar c3*m.c1,scalar c2+scalar c3*m.c2⟩
def reducedA (a b c d : ℂ) : C a b c d :=
  let s := -(1+a+c)
  let S := -(1+a⁻¹+c⁻¹)
  let t := -(1+b+d)
  let T := -(1+b⁻¹+d⁻¹)
  let r := -(1+b/a+d/c)
  let R := -(1+a/b+c/d)
  let delta := r*R-t*T
  reducePoly (modulus a b c d) 0 (2*s*delta) (-(s*S+3)*delta) (2*S*delta)
def reducedB (a b c d : ℂ) : C a b c d :=
  let s := -(1+a+c)
  let S := -(1+a⁻¹+c⁻¹)
  let t := -(1+b+d)
  let T := -(1+b⁻¹+d⁻¹)
  let r := -(1+b/a+d/c)
  let R := -(1+a/b+c/d)
  reducePoly (modulus a b c d) (Hadamard6.eliminantBeta0 s t T R)
    (Hadamard6.eliminantBeta1 s S t T r R) (Hadamard6.eliminantBeta2 s S t T r R)
    (Hadamard6.eliminantBeta3 S T r R)
def residual (a b c d : ℂ) : C a b c d :=
  CubicEvaluation.add (reducedA a b c d)
    (CubicEvaluation.mul (modulus a b c d) (reducedB a b c d) (companion a b c d))

end NoFourMUBs.Step2.Reconstruction.Companion
