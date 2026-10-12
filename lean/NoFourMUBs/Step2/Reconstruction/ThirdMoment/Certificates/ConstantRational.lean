import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product015
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product016
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport2
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product019
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product020
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport1
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product022
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product024
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product026
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product028
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product029
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product030
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product031
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport3
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product033
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.W11ClearedSums
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.LinearRational
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorGram

set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData

/-- The original ten saved fractions, with matching numerator/denominator scales. -/
def savedW11Constant (a b c d : ℂ) : ℂ :=
  polynomialValue a b c d P033 / polynomialValue a b c d P034 + (polynomialValue a b c d P037 / polynomialValue a b c d P038 + (polynomialValue a b c d P040 / polynomialValue a b c d P041 + (polynomialValue a b c d P044 / polynomialValue a b c d P045 + (polynomialValue a b c d P047 / polynomialValue a b c d P048 + (polynomialValue a b c d P051 / polynomialValue a b c d P052 + (polynomialValue a b c d P055 / polynomialValue a b c d P056 + (polynomialValue a b c d P059 / polynomialValue a b c d P060 + (polynomialValue a b c d P063 / polynomialValue a b c d P056 + (polynomialValue a b c d P065 / polynomialValue a b c d P066)))))))))

theorem savedW11Constant_zero (a b c d : ℂ)
    (hD : polynomialValue a b c d P031 ≠ 0) : savedW11Constant a b c d = 0 := by
  have h0 : polynomialValue a b c d P033 / polynomialValue a b c d P034 =
      polynomialValue a b c d P032 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product015_value a b c d) (Product016_value a b c d)
  have h1 : polynomialValue a b c d P037 / polynomialValue a b c d P038 =
      polynomialValue a b c d P036 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product017_value a b c d) (Product018_value a b c d)
  have h2 : polynomialValue a b c d P040 / polynomialValue a b c d P041 =
      polynomialValue a b c d P039 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product019_value a b c d) (Product020_value a b c d)
  have h3 : polynomialValue a b c d P044 / polynomialValue a b c d P045 =
      polynomialValue a b c d P043 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product021_value a b c d) (Product022_value a b c d)
  have h4 : polynomialValue a b c d P047 / polynomialValue a b c d P048 =
      polynomialValue a b c d P046 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product023_value a b c d) (Product024_value a b c d)
  have h5 : polynomialValue a b c d P051 / polynomialValue a b c d P052 =
      polynomialValue a b c d P050 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product025_value a b c d) (Product026_value a b c d)
  have h6 : polynomialValue a b c d P055 / polynomialValue a b c d P056 =
      polynomialValue a b c d P054 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product027_value a b c d) (Product028_value a b c d)
  have h7 : polynomialValue a b c d P059 / polynomialValue a b c d P060 =
      polynomialValue a b c d P058 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product029_value a b c d) (Product030_value a b c d)
  have h8 : polynomialValue a b c d P063 / polynomialValue a b c d P056 =
      polynomialValue a b c d P062 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product027_value a b c d) (Product031_value a b c d)
  have h9 : polynomialValue a b c d P065 / polynomialValue a b c d P066 =
      polynomialValue a b c d P064 / polynomialValue a b c d P031 :=
    quotient_of_cofactor hD (Product032_value a b c d) (Product033_value a b c d)
  unfold savedW11Constant
  rw [h0,h1,h2,h3,h4,h5,h6,h7,h8,h9]
  simp only [← add_div,ClearedSum01_value,zero_div]

/-- Full strict-domain rational identity; actual matrix bindings are separate. -/
theorem savedW11Constant_strict_zero (p : StrictSeed) :
    savedW11Constant (p.1 0) (p.1 1) (p.1 2) (p.1 3) = 0 :=
  savedW11Constant_zero _ _ _ _ (P031_strict_ne_zero p)

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
