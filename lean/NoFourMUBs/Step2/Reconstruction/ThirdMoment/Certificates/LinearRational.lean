import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product000
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product001
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product002
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product003
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product005
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport0
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product007
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product008
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product010
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product011
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product012
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product013
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product014
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.W11ClearedSums
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorInputs

set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData

/-- Common-denominator cancellation using only the checked cofactor equations. -/
theorem quotient_of_cofactor {K : Type*} [Field K] {n d c t D : K}
    (hD : D ≠ 0) (hd : d*c = D) (hn : n*c = t) : n/d = t/D := by
  have hd0 : d ≠ 0 := by
    intro hz
    apply hD
    rw [← hd,hz,zero_mul]
  apply (div_eq_div_iff hd0 hD).2
  rw [← hd,← hn]
  ring

/-- Raw saved fractions; each original numerator and denominator has the same positive scale. -/
def savedW11Linear (a b c d : ℂ) : ℂ :=
  polynomialValue a b c d P002 / polynomialValue a b c d P003 + (polynomialValue a b c d P006 / polynomialValue a b c d P007 + (polynomialValue a b c d P010 / polynomialValue a b c d P011 + (polynomialValue a b c d P014 / polynomialValue a b c d P015 + (polynomialValue a b c d P018 / polynomialValue a b c d P003 + (polynomialValue a b c d P020 / polynomialValue a b c d P021 + (polynomialValue a b c d P024 / polynomialValue a b c d P003 + (polynomialValue a b c d P026 / polynomialValue a b c d P027 + (polynomialValue a b c d P030 / polynomialValue a b c d P003))))))))

theorem savedW11Linear_zero (a b c d : ℂ)
    (hD : polynomialValue a b c d P000 ≠ 0) : savedW11Linear a b c d = 0 := by
  have h0 : polynomialValue a b c d P002 / polynomialValue a b c d P003 =
      polynomialValue a b c d P001 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product000_value a b c d) (Product001_value a b c d)
  have h1 : polynomialValue a b c d P006 / polynomialValue a b c d P007 =
      polynomialValue a b c d P005 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product002_value a b c d) (Product003_value a b c d)
  have h2 : polynomialValue a b c d P010 / polynomialValue a b c d P011 =
      polynomialValue a b c d P009 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product004_value a b c d) (Product005_value a b c d)
  have h3 : polynomialValue a b c d P014 / polynomialValue a b c d P015 =
      polynomialValue a b c d P013 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product006_value a b c d) (Product007_value a b c d)
  have h4 : polynomialValue a b c d P018 / polynomialValue a b c d P003 =
      polynomialValue a b c d P017 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product000_value a b c d) (Product008_value a b c d)
  have h5 : polynomialValue a b c d P020 / polynomialValue a b c d P021 =
      polynomialValue a b c d P019 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product009_value a b c d) (Product010_value a b c d)
  have h6 : polynomialValue a b c d P024 / polynomialValue a b c d P003 =
      polynomialValue a b c d P023 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product000_value a b c d) (Product011_value a b c d)
  have h7 : polynomialValue a b c d P026 / polynomialValue a b c d P027 =
      polynomialValue a b c d P025 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product012_value a b c d) (Product013_value a b c d)
  have h8 : polynomialValue a b c d P030 / polynomialValue a b c d P003 =
      polynomialValue a b c d P029 / polynomialValue a b c d P000 :=
    quotient_of_cofactor hD (Product000_value a b c d) (Product014_value a b c d)
  unfold savedW11Linear
  rw [h0,h1,h2,h3,h4,h5,h6,h7,h8]
  simp only [← add_div,ClearedSum00_value,zero_div]

/-- The saved linear rational identity holds on the full strict seed domain.
Its binding to the actual matrix residual is a separate remaining theorem. -/
theorem savedW11Linear_strict_zero (p : StrictSeed) :
    savedW11Linear (p.1 0) (p.1 1) (p.1 2) (p.1 3) = 0 :=
  savedW11Linear_zero _ _ _ _ (P000_strict_ne_zero p)

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
