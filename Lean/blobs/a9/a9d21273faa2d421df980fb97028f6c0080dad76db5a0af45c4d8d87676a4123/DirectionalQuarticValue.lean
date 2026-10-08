module
public import DirectionalMomentExpansion
public import ReflectedMomentsLow13
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.IntervalCases

public section
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.DirectionalQuartic20261006
open ReflectedLaurent MomentInterpretation20261006
noncomputable section

theorem literal_directionalRaw_0 (u : Fin 4 → ℝ) :
    directionalRaw tableFullR u 0=0 := by
  have h0000 := seedMoment_zero_certificate ⟨0,0,0,0⟩ seedMoment_0000
  rw [directionalRaw_expand_0,h0000]
  ring

theorem literal_directionalRaw_1 (u : Fin 4 → ℝ) :
    directionalRaw tableFullR u 1=0 := by
  have h0001 := seedMoment_zero_certificate ⟨0,0,0,1⟩ seedMoment_0001
  have h0010 := seedMoment_zero_certificate ⟨0,0,1,0⟩ seedMoment_0010
  have h0100 := seedMoment_zero_certificate ⟨0,1,0,0⟩ seedMoment_0100
  have h1000 := seedMoment_zero_certificate ⟨1,0,0,0⟩ seedMoment_1000
  rw [directionalRaw_expand_1,h0001,h0010,h0100,h1000]
  ring

theorem literal_directionalRaw_2 (u : Fin 4 → ℝ) :
    directionalRaw tableFullR u 2=0 := by
  have h0002 := seedMoment_zero_certificate ⟨0,0,0,2⟩ seedMoment_0002
  have h0011 := seedMoment_zero_certificate ⟨0,0,1,1⟩ seedMoment_0011
  have h0020 := seedMoment_zero_certificate ⟨0,0,2,0⟩ seedMoment_0020
  have h0101 := seedMoment_zero_certificate ⟨0,1,0,1⟩ seedMoment_0101
  have h0110 := seedMoment_zero_certificate ⟨0,1,1,0⟩ seedMoment_0110
  have h0200 := seedMoment_zero_certificate ⟨0,2,0,0⟩ seedMoment_0200
  have h1001 := seedMoment_zero_certificate ⟨1,0,0,1⟩ seedMoment_1001
  have h1010 := seedMoment_zero_certificate ⟨1,0,1,0⟩ seedMoment_1010
  have h1100 := seedMoment_zero_certificate ⟨1,1,0,0⟩ seedMoment_1100
  have h2000 := seedMoment_zero_certificate ⟨2,0,0,0⟩ seedMoment_2000
  rw [directionalRaw_expand_2,h0002,h0011,h0020,h0101,h0110,h0200,h1001,h1010,h1100,h2000]
  ring

theorem literal_directionalRaw_3 (u : Fin 4 → ℝ) :
    directionalRaw tableFullR u 3=0 := by
  have h0003 := seedMoment_zero_certificate ⟨0,0,0,3⟩ seedMoment_0003
  have h0012 := seedMoment_zero_certificate ⟨0,0,1,2⟩ seedMoment_0012
  have h0021 := seedMoment_zero_certificate ⟨0,0,2,1⟩ seedMoment_0021
  have h0030 := seedMoment_zero_certificate ⟨0,0,3,0⟩ seedMoment_0030
  have h0102 := seedMoment_zero_certificate ⟨0,1,0,2⟩ seedMoment_0102
  have h0111 := seedMoment_zero_certificate ⟨0,1,1,1⟩ seedMoment_0111
  have h0120 := seedMoment_zero_certificate ⟨0,1,2,0⟩ seedMoment_0120
  have h0201 := seedMoment_zero_certificate ⟨0,2,0,1⟩ seedMoment_0201
  have h0210 := seedMoment_zero_certificate ⟨0,2,1,0⟩ seedMoment_0210
  have h0300 := seedMoment_zero_certificate ⟨0,3,0,0⟩ seedMoment_0300
  have h1002 := seedMoment_zero_certificate ⟨1,0,0,2⟩ seedMoment_1002
  have h1011 := seedMoment_zero_certificate ⟨1,0,1,1⟩ seedMoment_1011
  have h1020 := seedMoment_zero_certificate ⟨1,0,2,0⟩ seedMoment_1020
  have h1101 := seedMoment_zero_certificate ⟨1,1,0,1⟩ seedMoment_1101
  have h1110 := seedMoment_zero_certificate ⟨1,1,1,0⟩ seedMoment_1110
  have h1200 := seedMoment_zero_certificate ⟨1,2,0,0⟩ seedMoment_1200
  have h2001 := seedMoment_zero_certificate ⟨2,0,0,1⟩ seedMoment_2001
  have h2010 := seedMoment_zero_certificate ⟨2,0,1,0⟩ seedMoment_2010
  have h2100 := seedMoment_zero_certificate ⟨2,1,0,0⟩ seedMoment_2100
  have h3000 := seedMoment_zero_certificate ⟨3,0,0,0⟩ seedMoment_3000
  rw [directionalRaw_expand_3,h0003,h0012,h0021,h0030,h0102,h0111,h0120,h0201,h0210,h0300,h1002,h1011,h1020,h1101,h1110,h1200,h2001,h2010,h2100,h3000]
  ring

theorem literal_directionalRaw_4 (u : Fin 4 → ℝ) :
    directionalRaw tableFullR u 4=(5832:ℂ)*((u 0:ℂ)*(u 3:ℂ)-(u 1:ℂ)*(u 2:ℂ))^2 := by
  have h0004 := seedMoment_zero_certificate ⟨0,0,0,4⟩ seedMoment_0004
  have h0013 := seedMoment_zero_certificate ⟨0,0,1,3⟩ seedMoment_0013
  have h0022 := seedMoment_zero_certificate ⟨0,0,2,2⟩ seedMoment_0022
  have h0031 := seedMoment_zero_certificate ⟨0,0,3,1⟩ seedMoment_0031
  have h0040 := seedMoment_zero_certificate ⟨0,0,4,0⟩ seedMoment_0040
  have h0103 := seedMoment_zero_certificate ⟨0,1,0,3⟩ seedMoment_0103
  have h0112 := seedMoment_zero_certificate ⟨0,1,1,2⟩ seedMoment_0112
  have h0121 := seedMoment_zero_certificate ⟨0,1,2,1⟩ seedMoment_0121
  have h0130 := seedMoment_zero_certificate ⟨0,1,3,0⟩ seedMoment_0130
  have h0202 := seedMoment_zero_certificate ⟨0,2,0,2⟩ seedMoment_0202
  have h0211 := seedMoment_zero_certificate ⟨0,2,1,1⟩ seedMoment_0211
  have h0220 : phaseMoment tableFullR ⟨0,2,2,0⟩=(972:ℂ) := by
    simpa using seedMoment_certificate_value ⟨0,2,2,0⟩ 972 0 seedMoment_0220
  have h0301 := seedMoment_zero_certificate ⟨0,3,0,1⟩ seedMoment_0301
  have h0310 := seedMoment_zero_certificate ⟨0,3,1,0⟩ seedMoment_0310
  have h0400 := seedMoment_zero_certificate ⟨0,4,0,0⟩ seedMoment_0400
  have h1003 := seedMoment_zero_certificate ⟨1,0,0,3⟩ seedMoment_1003
  have h1012 := seedMoment_zero_certificate ⟨1,0,1,2⟩ seedMoment_1012
  have h1021 := seedMoment_zero_certificate ⟨1,0,2,1⟩ seedMoment_1021
  have h1030 := seedMoment_zero_certificate ⟨1,0,3,0⟩ seedMoment_1030
  have h1102 := seedMoment_zero_certificate ⟨1,1,0,2⟩ seedMoment_1102
  have h1111 : phaseMoment tableFullR ⟨1,1,1,1⟩=(-486:ℂ) := by
    simpa using seedMoment_certificate_value ⟨1,1,1,1⟩ (-486) 0 seedMoment_1111
  have h1120 := seedMoment_zero_certificate ⟨1,1,2,0⟩ seedMoment_1120
  have h1201 := seedMoment_zero_certificate ⟨1,2,0,1⟩ seedMoment_1201
  have h1210 := seedMoment_zero_certificate ⟨1,2,1,0⟩ seedMoment_1210
  have h1300 := seedMoment_zero_certificate ⟨1,3,0,0⟩ seedMoment_1300
  have h2002 : phaseMoment tableFullR ⟨2,0,0,2⟩=(972:ℂ) := by
    simpa using seedMoment_certificate_value ⟨2,0,0,2⟩ 972 0 seedMoment_2002
  have h2011 := seedMoment_zero_certificate ⟨2,0,1,1⟩ seedMoment_2011
  have h2020 := seedMoment_zero_certificate ⟨2,0,2,0⟩ seedMoment_2020
  have h2101 := seedMoment_zero_certificate ⟨2,1,0,1⟩ seedMoment_2101
  have h2110 := seedMoment_zero_certificate ⟨2,1,1,0⟩ seedMoment_2110
  have h2200 := seedMoment_zero_certificate ⟨2,2,0,0⟩ seedMoment_2200
  have h3001 := seedMoment_zero_certificate ⟨3,0,0,1⟩ seedMoment_3001
  have h3010 := seedMoment_zero_certificate ⟨3,0,1,0⟩ seedMoment_3010
  have h3100 := seedMoment_zero_certificate ⟨3,1,0,0⟩ seedMoment_3100
  have h4000 := seedMoment_zero_certificate ⟨4,0,0,0⟩ seedMoment_4000
  rw [directionalRaw_expand_4,h0004,h0013,h0022,h0031,h0040,h0103,h0112,h0121,h0130,h0202,h0211,h0220,h0301,h0310,h0400,h1003,h1012,h1021,h1030,h1102,h1111,h1120,h1201,h1210,h1300,h2002,h2011,h2020,h2101,h2110,h2200,h3001,h3010,h3100,h4000]
  ring

/-- The degree-four phase coefficient includes I^4=1 and 4!=24. -/
theorem literal_directionalTaylor_four (u : Fin 4 → ℝ) :
    directionalTaylor tableFullR u 4=((243*(u 0*u 3-u 1*u 2)^2:ℝ):ℂ) := by
  rw [directionalTaylor_eq_raw,literal_directionalRaw_4]
  norm_num [Complex.I_pow_four]
  push_cast
  ring

theorem literal_directionalRaw_below_four (u : Fin 4 → ℝ) (n : ℕ) (hn : n<4) :
    directionalRaw tableFullR u n=0 := by
  interval_cases n <;> first | exact literal_directionalRaw_0 u | exact literal_directionalRaw_1 u |
    exact literal_directionalRaw_2 u | exact literal_directionalRaw_3 u

theorem literal_directionalTaylor_below_four (u : Fin 4 → ℝ) (n : ℕ) (hn : n<4) :
    directionalTaylor tableFullR u n=0 := by
  rw [directionalTaylor_eq_raw,literal_directionalRaw_below_four u n hn]
  simp

end
end Centiradian20261006.DirectionalQuartic20261006

#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_0
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_1
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_2
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_3
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_4
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalTaylor_four
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalRaw_below_four
#print axioms Centiradian20261006.DirectionalQuartic20261006.literal_directionalTaylor_below_four
