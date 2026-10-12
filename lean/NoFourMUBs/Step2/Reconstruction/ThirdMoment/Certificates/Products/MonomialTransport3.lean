import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport1
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport2
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.OffsetBinding
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P067

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
variable {R : Type*} [CommRing R]

theorem P038_eq_a_sq_c_mul_P067 (a b c d : R) :
    polynomialValue a b c d P038 = a^2*(c*polynomialValue a b c d P067) := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
  have h0 : sliceValue b c d P038A02 = c * sliceValue b c d P067A00 := by
    have hs : P038A02.map List.tail = P067A00 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A02 (by rfl)
  have h1 : sliceValue b c d P038A03 = c * sliceValue b c d P067A01 := by
    have hs : P038A03.map List.tail = P067A01 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A03 (by rfl)
  have h2 : sliceValue b c d P038A04 = c * sliceValue b c d P067A02 := by
    have hs : P038A04.map List.tail = P067A02 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A04 (by rfl)
  have h3 : sliceValue b c d P038A05 = c * sliceValue b c d P067A03 := by
    have hs : P038A05.map List.tail = P067A03 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A05 (by rfl)
  have h4 : sliceValue b c d P038A06 = c * sliceValue b c d P067A04 := by
    have hs : P038A06.map List.tail = P067A04 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A06 (by rfl)
  have h5 : sliceValue b c d P038A07 = c * sliceValue b c d P067A05 := by
    have hs : P038A07.map List.tail = P067A05 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A07 (by rfl)
  have h6 : sliceValue b c d P038A08 = c * sliceValue b c d P067A06 := by
    have hs : P038A08.map List.tail = P067A06 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A08 (by rfl)
  have h7 : sliceValue b c d P038A09 = c * sliceValue b c d P067A07 := by
    have hs : P038A09.map List.tail = P067A07 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A09 (by rfl)
  have h8 : sliceValue b c d P038A10 = c * sliceValue b c d P067A08 := by
    have hs : P038A10.map List.tail = P067A08 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A10 (by rfl)
  have h9 : sliceValue b c d P038A11 = c * sliceValue b c d P067A09 := by
    have hs : P038A11.map List.tail = P067A09 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A11 (by rfl)
  have h10 : sliceValue b c d P038A12 = c * sliceValue b c d P067A10 := by
    have hs : P038A12.map List.tail = P067A10 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A12 (by rfl)
  have h11 : sliceValue b c d P038A13 = c * sliceValue b c d P067A11 := by
    have hs : P038A13.map List.tail = P067A11 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A13 (by rfl)
  have h12 : sliceValue b c d P038A14 = c * sliceValue b c d P067A12 := by
    have hs : P038A14.map List.tail = P067A12 := rfl
    simpa only [hs] using sliceValue_eq_c_mul_tail b c d P038A14 (by rfl)
  simp only [polynomialValue,P038,P067,List.map_cons,List.map_nil,Coefficients.eval,
    h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,hz,mul_zero,zero_add,add_zero]
  ring

theorem Product032_value (a b c d : R) :
    polynomialValue a b c d P066 * polynomialValue a b c d P067 =
      polynomialValue a b c d P031 := by
  rw [P066_value]
  calc
    a^2*b*c*polynomialValue a b c d P067 =
        (a^2*(c*polynomialValue a b c d P067))*b := by ring
    _ = polynomialValue a b c d P038*b := by rw [← P038_eq_a_sq_c_mul_P067]
    _ = polynomialValue a b c d P031 := by
      simpa only [P008_value] using Product017_value a b c d

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
