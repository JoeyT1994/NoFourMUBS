import Step1.Common

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 4096

namespace Step1.boundary_core

variable {K : Type*} [Field K] [CharZero K]

/- Generated from certificates/boundary_core.json. See LEAN_NOTES.md. -/

def d_u (v_c v_h : K) : K :=
  ((4 : K) + ((16 : K) * (v_c ^ 4)) + ((16 : K) * v_c * v_h * ((-1 : K) + ((2 : K) * (v_c ^ 2)))))

def d_v (v_c v_h : K) : K :=
  (((16 : K) + ((-16 : K) * (v_c ^ 2))) * ((1 : K) + (v_c ^ 2) + ((-2 : K) * v_c * v_h)))

def d_w (v_c v_h : K) : K :=
  (((-64 : K) + ((64 : K) * (v_c ^ 2))) * ((-1 : K) + ((-2 : K) * (v_c ^ 2)) + (v_h * (((-2 : K) * (v_c ^ 3)) + ((4 : K) * v_c))) + (((-1 : K) + ((2 : K) * (v_h ^ 2))) * (((-1 : K) * (v_c ^ 2)) + ((2 : K) * (v_c ^ 4))))))

def d_L (v_c v_h : K) : K :=
  ((1 : K) + ((2 : K) * (v_c ^ 2)))

def d_M (v_c v_h : K) : K :=
  ((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * v_h * (v_c ^ 3)))

def d_N (v_c v_h : K) : K :=
  ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * v_h) + ((4 : K) * (v_c ^ 2) * (v_h ^ 2)) + ((16 : K) * v_h * (v_c ^ 3)))

def d_P (v_c v_h : K) : K :=
  (((-1 : K) * v_h) + ((-224 : K) * (v_c ^ 7)) + ((-112 : K) * (v_c ^ 5)) + ((28 : K) * (v_c ^ 3)) + ((1024 : K) * (v_c ^ 9)) + ((-144 : K) * v_h * (v_c ^ 6)) + ((-108 : K) * v_h * (v_c ^ 4)) + ((-40 : K) * (v_c ^ 3) * (v_h ^ 2)) + ((2 : K) * v_c * (v_h ^ 2)) + ((16 : K) * v_h * (v_c ^ 2)) + ((32 : K) * (v_c ^ 4) * (v_h ^ 3)) + ((56 : K) * (v_c ^ 5) * (v_h ^ 2)) + ((96 : K) * (v_c ^ 6) * (v_h ^ 3)) + ((640 : K) * (v_c ^ 7) * (v_h ^ 2)) + ((1408 : K) * v_h * (v_c ^ 8)))

def d_Q (v_c v_h : K) : K :=
  ((-1 : K) + ((-32 : K) * (v_c ^ 4)) + ((6 : K) * (v_c ^ 2)) + ((64 : K) * (v_c ^ 6)) + ((-20 : K) * v_h * (v_c ^ 3)) + ((2 : K) * v_c * v_h) + ((16 : K) * (v_c ^ 4) * (v_h ^ 2)) + ((64 : K) * v_h * (v_c ^ 5)))

def d_g (v_c v_h : K) : K :=
  (((-3 : K) * (d_u v_c v_h)) + ((2 : K) * (d_v v_c v_h)))

def d_eta (v_c v_h : K) : K :=
  ((d_v v_c v_h) + ((-2 : K) * (d_u v_c v_h)))

def d_chi (v_c v_h : K) : K :=
  (((-1 : K) * (d_w v_c v_h)) + (((1 : K) / 2) * (((-1 : K) * (d_v v_c v_h)) + ((3 : K) * (d_u v_c v_h))) * ((12 : K) + (d_v v_c v_h) + ((-1 : K) * (d_u v_c v_h)))))

def d_R (v_c v_h : K) : K :=
  ((-256 : K) * (d_N v_c v_h) * ((d_L v_c v_h) ^ 2) * ((d_M v_c v_h) ^ 2))

def d_dRc (v_c v_h : K) : K :=
  ((-1024 : K) * (d_L v_c v_h) * (d_M v_c v_h) * (d_P v_c v_h))

def d_dRh (v_c v_h : K) : K :=
  ((-1024 : K) * (d_M v_c v_h) * (d_Q v_c v_h) * v_c * ((d_L v_c v_h) ^ 2))

def d_Hcc (v_c v_h : K) : K :=
  (((-251658240 : K) * (v_c ^ 14)) + ((-17694720 : K) * (v_c ^ 8)) + ((-86016 : K) * (v_c ^ 2)) + ((-2048 : K) * (v_h ^ 2)) + ((860160 : K) * (v_c ^ 4)) + ((43253760 : K) * (v_c ^ 10)) + ((47710208 : K) * (v_c ^ 12)) + ((-440401920 : K) * v_h * (v_c ^ 13)) + ((-286261248 : K) * (v_c ^ 12) * (v_h ^ 2)) + ((-81788928 : K) * (v_c ^ 11) * (v_h ^ 3)) + ((-60555264 : K) * (v_c ^ 10) * (v_h ^ 2)) + ((-36044800 : K) * (v_c ^ 9) * (v_h ^ 3)) + ((-14155776 : K) * v_h * (v_c ^ 7)) + ((-8650752 : K) * (v_c ^ 10) * (v_h ^ 4)) + ((-5898240 : K) * (v_c ^ 8) * (v_h ^ 4)) + ((-1835008 : K) * (v_c ^ 6) * (v_h ^ 2)) + ((-1032192 : K) * v_h * (v_c ^ 5)) + ((-983040 : K) * (v_c ^ 4) * (v_h ^ 2)) + ((-917504 : K) * (v_c ^ 6) * (v_h ^ 4)) + ((-163840 : K) * (v_c ^ 3) * (v_h ^ 3)) + ((-36864 : K) * v_c * v_h) + ((147456 : K) * (v_c ^ 2) * (v_h ^ 2)) + ((573440 : K) * v_h * (v_c ^ 3)) + ((688128 : K) * (v_c ^ 5) * (v_h ^ 3)) + ((2359296 : K) * (v_c ^ 7) * (v_h ^ 3)) + ((30965760 : K) * (v_c ^ 8) * (v_h ^ 2)) + ((64880640 : K) * v_h * (v_c ^ 9)))

def d_Hch (v_c v_h : K) : K :=
  ((1024 : K) + ((-31457280 : K) * (v_c ^ 14)) + ((-1769472 : K) * (v_c ^ 8)) + ((-172032 : K) * (v_c ^ 6)) + ((-18432 : K) * (v_c ^ 2)) + ((143360 : K) * (v_c ^ 4)) + ((6488064 : K) * (v_c ^ 10)) + ((-44040192 : K) * v_h * (v_c ^ 13)) + ((-20447232 : K) * (v_c ^ 12) * (v_h ^ 2)) + ((-11010048 : K) * v_h * (v_c ^ 11)) + ((-10813440 : K) * (v_c ^ 10) * (v_h ^ 2)) + ((-3145728 : K) * (v_c ^ 11) * (v_h ^ 3)) + ((-2621440 : K) * (v_c ^ 9) * (v_h ^ 3)) + ((-524288 : K) * v_h * (v_c ^ 7)) + ((-524288 : K) * (v_c ^ 7) * (v_h ^ 3)) + ((-393216 : K) * v_h * (v_c ^ 5)) + ((-122880 : K) * (v_c ^ 4) * (v_h ^ 2)) + ((-4096 : K) * v_c * v_h) + ((98304 : K) * v_h * (v_c ^ 3)) + ((344064 : K) * (v_c ^ 6) * (v_h ^ 2)) + ((884736 : K) * (v_c ^ 8) * (v_h ^ 2)) + ((6881280 : K) * v_h * (v_c ^ 9)))

def d_Hhh (v_c v_h : K) : K :=
  (((-3145728 : K) * (v_c ^ 14)) + ((-917504 : K) * (v_c ^ 12)) + ((-65536 : K) * (v_c ^ 6)) + ((-65536 : K) * (v_c ^ 8)) + ((-2048 : K) * (v_c ^ 2)) + ((24576 : K) * (v_c ^ 4)) + ((688128 : K) * (v_c ^ 10)) + ((-3145728 : K) * v_h * (v_c ^ 13)) + ((-1966080 : K) * v_h * (v_c ^ 11)) + ((-786432 : K) * (v_c ^ 10) * (v_h ^ 2)) + ((-786432 : K) * (v_c ^ 12) * (v_h ^ 2)) + ((-196608 : K) * (v_c ^ 8) * (v_h ^ 2)) + ((-49152 : K) * v_h * (v_c ^ 5)) + ((98304 : K) * v_h * (v_c ^ 7)) + ((196608 : K) * v_h * (v_c ^ 9)))

def d_eliminant_P_cofactor (v_c v_h : K) : K :=
  ((-1 : K) + ((-3072 : K) * (v_c ^ 12)) + ((-20 : K) * (v_c ^ 4)) + ((6 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 6)) + ((352 : K) * (v_c ^ 8)) + ((384 : K) * (v_c ^ 10)) + ((-1536 : K) * v_h * (v_c ^ 11)) + ((-8 : K) * v_h * (v_c ^ 3)) + ((96 : K) * v_h * (v_c ^ 7)) + ((128 : K) * v_h * (v_c ^ 9)))

def d_eliminant_Q_cofactor (v_c v_h : K) : K :=
  (v_h + ((-9856 : K) * (v_c ^ 11)) + ((-1824 : K) * (v_c ^ 9)) + ((-20 : K) * (v_c ^ 3)) + ((2 : K) * v_c) + ((80 : K) * (v_c ^ 5)) + ((656 : K) * (v_c ^ 7)) + ((7680 : K) * (v_c ^ 13)) + ((49152 : K) * (v_c ^ 15)) + ((-5952 : K) * v_h * (v_c ^ 10)) + ((-1136 : K) * v_h * (v_c ^ 8)) + ((-832 : K) * (v_c ^ 9) * (v_h ^ 2)) + ((-192 : K) * (v_c ^ 7) * (v_h ^ 2)) + ((-12 : K) * v_h * (v_c ^ 2)) + ((16 : K) * (v_c ^ 3) * (v_h ^ 2)) + ((40 : K) * v_h * (v_c ^ 4)) + ((48 : K) * (v_c ^ 5) * (v_h ^ 2)) + ((320 : K) * v_h * (v_c ^ 6)) + ((2304 : K) * (v_c ^ 11) * (v_h ^ 2)) + ((6400 : K) * v_h * (v_c ^ 12)) + ((9216 : K) * (v_c ^ 13) * (v_h ^ 2)) + ((43008 : K) * v_h * (v_c ^ 14)))

def d_normalized_eliminant (v_c v_h : K) : K :=
  ((2 : K) * v_c * (((1 : K) + ((2 : K) * (v_c ^ 2))) ^ 2) * ((-1 : K) + ((2 : K) * (v_c ^ 2))) * ((-1 : K) + ((4 : K) * (v_c ^ 2))) * ((1 : K) + ((-4 : K) * v_c) + ((6 : K) * (v_c ^ 2))) * ((1 : K) + ((4 : K) * v_c) + ((6 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4))))

def d_reference_resultant (v_c v_h : K) : K :=
  ((128 : K) * (d_normalized_eliminant v_c v_h) * (v_c ^ 7))

def d_half_factor (v_c v_h : K) : K :=
  ((-1 : K) + ((4 : K) * (v_c ^ 2)))

def d_half_relation (v_c v_h : K) : K :=
  (v_h + ((2 : K) * v_c))

def d_half_P_cofactor (v_c v_h : K) : K :=
  (4 : K)

def d_half_Q_cofactor (v_c v_h : K) : K :=
  (((-14 : K) * v_h) + ((-8 : K) * v_c))

def d_half_factor_cofactor (v_c v_h : K) : K :=
  (((-1024 : K) * (v_c ^ 7)) + ((2 : K) * v_c) + ((7 : K) * v_h) + ((72 : K) * (v_c ^ 3)) + ((96 : K) * (v_c ^ 5)) + ((-1408 : K) * v_h * (v_c ^ 6)) + ((-640 : K) * (v_c ^ 5) * (v_h ^ 2)) + ((-96 : K) * (v_c ^ 4) * (v_h ^ 3)) + ((-20 : K) * v_c * (v_h ^ 2)) + ((-8 : K) * v_h * (v_c ^ 2)) + ((40 : K) * (v_c ^ 3) * (v_h ^ 2)) + ((144 : K) * v_h * (v_c ^ 4)))

def d_sqrt_half_factor (v_c v_h : K) : K :=
  ((-1 : K) + ((2 : K) * (v_c ^ 2)))

def d_sqrt_half_relation (v_c v_h : K) : K :=
  (v_c + v_h)

def d_sqrt_half_P_cofactor (v_c v_h : K) : K :=
  (1 : K)

def d_sqrt_half_Q_cofactor (v_c v_h : K) : K :=
  (((-9 : K) * v_c) + ((-5 : K) * v_h))

def d_sqrt_half_factor_cofactor (v_c v_h : K) : K :=
  (((-512 : K) * (v_c ^ 7)) + ((-16 : K) * (v_c ^ 3)) + ((5 : K) * v_c) + ((144 : K) * (v_c ^ 5)) + ((-704 : K) * v_h * (v_c ^ 6)) + ((-320 : K) * (v_c ^ 5) * (v_h ^ 2)) + ((-48 : K) * (v_c ^ 4) * (v_h ^ 3)) + ((-32 : K) * v_h * (v_c ^ 2)) + ((-8 : K) * v_c * (v_h ^ 2)) + ((44 : K) * (v_c ^ 3) * (v_h ^ 2)) + ((168 : K) * v_h * (v_c ^ 4)))

def d_golden_factor (v_c v_h : K) : K :=
  ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)))

def d_golden_relation (v_c v_h : K) : K :=
  (v_h + ((-4 : K) * (v_c ^ 3)) + ((3 : K) * v_c))

def d_golden_P_cofactor (v_c v_h : K) : K :=
  ((-4 : K) + ((24 : K) * (v_c ^ 2)))

def d_golden_Q_cofactor (v_c v_h : K) : K :=
  (((-1 : K) * v_h) + ((-72 : K) * (v_c ^ 3)) + ((-10 : K) * v_c) + ((-60 : K) * v_h * (v_c ^ 2)))

def d_golden_factor_cofactor (v_c v_h : K) : K :=
  (((-1536 : K) * (v_c ^ 7)) + ((-23 : K) * v_c) + ((-6 : K) * v_h) + ((36 : K) * (v_c ^ 3)) + ((496 : K) * (v_c ^ 5)) + ((-2112 : K) * v_h * (v_c ^ 6)) + ((-960 : K) * (v_c ^ 5) * (v_h ^ 2)) + ((-144 : K) * (v_c ^ 4) * (v_h ^ 3)) + ((-30 : K) * v_h * (v_c ^ 2)) + ((-10 : K) * v_c * (v_h ^ 2)) + ((148 : K) * (v_c ^ 3) * (v_h ^ 2)) + ((568 : K) * v_h * (v_c ^ 4)))

def d_golden_R_restriction (v_c v_h : K) : K :=
  ((((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * (v_c ^ 3) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))))) ^ 2) * ((1 : K) + ((2 : K) * (v_c ^ 2))) * ((-256 : K) + ((-512 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))) + ((4 : K) * (v_c ^ 2) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((16 : K) * (v_c ^ 3) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))))))

def d_golden_R_factor_cofactor (v_c v_h : K) : K :=
  ((194 : K) + ((-1048576 : K) * (v_c ^ 20)) + ((-417792 : K) * (v_c ^ 12)) + ((-262144 : K) * (v_c ^ 18)) + ((-31744 : K) * (v_c ^ 10)) + ((-7824 : K) * (v_c ^ 4)) + ((-2816 : K) * (v_c ^ 6)) + ((1196 : K) * (v_c ^ 2)) + ((82688 : K) * (v_c ^ 8)) + ((180224 : K) * (v_c ^ 14)) + ((1048576 : K) * (v_c ^ 16)))

def d_golden_Hcc_restriction (v_c v_h : K) : K :=
  (((-2214592512 : K) * (v_c ^ 22)) + ((-483655680 : K) * (v_c ^ 14)) + ((-100663296 : K) * (v_c ^ 20)) + ((-6291456 : K) * (v_c ^ 16)) + ((-6193152 : K) * (v_c ^ 8)) + ((-2605056 : K) * (v_c ^ 6)) + ((6144 : K) * (v_c ^ 2)) + ((368640 : K) * (v_c ^ 4)) + ((26738688 : K) * (v_c ^ 12)) + ((58884096 : K) * (v_c ^ 10)) + ((1711276032 : K) * (v_c ^ 18)))

def d_golden_Hcc_cofactor (v_c v_h : K) : K :=
  ((6480 : K) + ((-138412032 : K) * (v_c ^ 18)) + ((-40894464 : K) * (v_c ^ 16)) + ((-19955712 : K) * (v_c ^ 10)) + ((-2125824 : K) * (v_c ^ 8)) + ((-55104 : K) * (v_c ^ 2)) + ((-44544 : K) * (v_c ^ 4)) + ((1901568 : K) * (v_c ^ 6)) + ((19070976 : K) * (v_c ^ 12)) + ((88080384 : K) * (v_c ^ 14)))

def d_golden_Hch_restriction (v_c v_h : K) : K :=
  ((1024 : K) + ((-201326592 : K) * (v_c ^ 20)) + ((-41943040 : K) * (v_c ^ 18)) + ((-38338560 : K) * (v_c ^ 12)) + ((-4358144 : K) * (v_c ^ 10)) + ((-167936 : K) * (v_c ^ 4)) + ((-6144 : K) * (v_c ^ 2)) + ((294912 : K) * (v_c ^ 6)) + ((4276224 : K) * (v_c ^ 8)) + ((23592960 : K) * (v_c ^ 14)) + ((145752064 : K) * (v_c ^ 16)))

def d_golden_Hch_cofactor (v_c v_h : K) : K :=
  ((-1504 : K) + ((-12582912 : K) * (v_c ^ 16)) + ((-5767168 : K) * (v_c ^ 14)) + ((-1257472 : K) * (v_c ^ 8)) + ((-409600 : K) * (v_c ^ 6)) + ((14400 : K) * (v_c ^ 2)) + ((86272 : K) * (v_c ^ 4)) + ((2834432 : K) * (v_c ^ 10)) + ((6881280 : K) * (v_c ^ 12)))

def d_golden_Hhh_restriction (v_c v_h : K) : K :=
  (((-12582912 : K) * (v_c ^ 18)) + ((-6291456 : K) * (v_c ^ 16)) + ((-1277952 : K) * (v_c ^ 10)) + ((-557056 : K) * (v_c ^ 8)) + ((-2048 : K) * (v_c ^ 2)) + ((24576 : K) * (v_c ^ 4)) + ((81920 : K) * (v_c ^ 6)) + ((3407872 : K) * (v_c ^ 12)) + ((7077888 : K) * (v_c ^ 14)))

def d_golden_Hhh_cofactor (v_c v_h : K) : K :=
  ((80 : K) + ((-786432 : K) * (v_c ^ 14)) + ((-589824 : K) * (v_c ^ 12)) + ((-21248 : K) * (v_c ^ 4)) + ((-5120 : K) * (v_c ^ 6)) + ((-512 : K) * (v_c ^ 2)) + ((237568 : K) * (v_c ^ 8)) + ((245760 : K) * (v_c ^ 10)))

theorem identity_structural_R_factorization (v_c v_h : K) :
    (d_R v_c v_h) =
    (((-1 : K) * ((d_chi v_c v_h) ^ 2)) + ((4 : K) * (d_eta v_c v_h) * ((d_g v_c v_h) ^ 2))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_eta_short_form (v_c v_h : K) :
    (d_eta v_c v_h) =
    ((8 : K) + ((-48 : K) * (v_c ^ 4)) + ((-32 : K) * v_h * (v_c ^ 3))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_quadratic_minus_positive_square (v_c v_h : K) :
    ((3 : K) + ((-12 : K) * v_c) + ((18 : K) * (v_c ^ 2))) =
    ((1 : K) + ((2 : K) * (((-1 : K) + ((3 : K) * v_c)) ^ 2))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_quadratic_plus_positive_square (v_c v_h : K) :
    ((3 : K) + ((12 : K) * v_c) + ((18 : K) * (v_c ^ 2))) =
    ((1 : K) + ((2 : K) * (((1 : K) + ((3 : K) * v_c)) ^ 2))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_normalized_eliminant_Bezout (v_c v_h : K) :
    (d_normalized_eliminant v_c v_h) =
    (((d_P v_c v_h) * (d_eliminant_P_cofactor v_c v_h)) + ((d_Q v_c v_h) * (d_eliminant_Q_cofactor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_reference_resultant_Bezout (v_c v_h : K) :
    (d_reference_resultant v_c v_h) =
    (((128 : K) * (d_P v_c v_h) * (d_eliminant_P_cofactor v_c v_h) * (v_c ^ 7)) + ((128 : K) * (d_Q v_c v_h) * (d_eliminant_Q_cofactor v_c v_h) * (v_c ^ 7))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_half_relation_membership (v_c v_h : K) :
    ((3 : K) * (d_half_relation v_c v_h)) =
    (((d_P v_c v_h) * (d_half_P_cofactor v_c v_h)) + ((d_Q v_c v_h) * (d_half_Q_cofactor v_c v_h)) + ((d_half_factor v_c v_h) * (d_half_factor_cofactor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_sqrt_half_relation_membership (v_c v_h : K) :
    ((4 : K) * (d_sqrt_half_relation v_c v_h)) =
    (((d_P v_c v_h) * (d_sqrt_half_P_cofactor v_c v_h)) + ((d_Q v_c v_h) * (d_sqrt_half_Q_cofactor v_c v_h)) + ((d_sqrt_half_factor v_c v_h) * (d_sqrt_half_factor_cofactor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_relation_membership (v_c v_h : K) :
    ((11 : K) * (d_golden_relation v_c v_h)) =
    (((d_P v_c v_h) * (d_golden_P_cofactor v_c v_h)) + ((d_Q v_c v_h) * (d_golden_Q_cofactor v_c v_h)) + ((d_golden_factor v_c v_h) * (d_golden_factor_cofactor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_half_N_membership (v_c v_h : K) :
    (d_N v_c v_h) =
    ((d_half_factor v_c v_h) + ((4 : K) * v_c * (d_half_relation v_c v_h) * ((-1 : K) + ((2 : K) * (v_c ^ 2)) + (v_c * v_h)))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_sqrt_half_N_membership (v_c v_h : K) :
    (d_N v_c v_h) =
    (((d_sqrt_half_factor v_c v_h) * ((d_L v_c v_h) + ((4 : K) * v_c * (d_sqrt_half_relation v_c v_h)))) + ((4 : K) * (v_c ^ 2) * ((d_sqrt_half_relation v_c v_h) ^ 2))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_R_value_membership (v_c v_h : K) :
    (d_golden_R_restriction v_c v_h) =
    ((450 : K) + ((-1100 : K) * (v_c ^ 2)) + ((d_golden_R_factor_cofactor v_c v_h) * (d_golden_factor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_Hcc_reduction (v_c v_h : K) :
    (d_golden_Hcc_restriction v_c v_h) =
    ((6480 : K) + ((-23040 : K) * (v_c ^ 2)) + ((d_golden_Hcc_cofactor v_c v_h) * (d_golden_factor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_Hch_reduction (v_c v_h : K) :
    (d_golden_Hch_restriction v_c v_h) =
    ((-480 : K) + ((2240 : K) * (v_c ^ 2)) + ((d_golden_Hch_cofactor v_c v_h) * (d_golden_factor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_Hhh_reduction (v_c v_h : K) :
    (d_golden_Hhh_restriction v_c v_h) =
    ((80 : K) + ((-2240 : K) * (v_c ^ 2)) + ((d_golden_Hhh_cofactor v_c v_h) * (d_golden_factor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem identity_golden_restricted_Hessian_determinant (v_c v_h : K) :
    (((-1 : K) * (((-480 : K) + ((2240 : K) * (v_c ^ 2))) ^ 2)) + (((80 : K) + ((-2240 : K) * (v_c ^ 2))) * ((6480 : K) + ((-23040 : K) * (v_c ^ 2))))) =
    ((3200000 : K) + ((-2560000 : K) * (v_c ^ 2)) + ((2912000 : K) * (d_golden_factor v_c v_h))) := by
  (try simp only [d_golden_Hhh_cofactor, d_golden_Hhh_restriction, d_golden_Hch_cofactor, d_golden_Hch_restriction, d_golden_Hcc_cofactor, d_golden_Hcc_restriction, d_golden_R_factor_cofactor, d_golden_R_restriction, d_golden_factor_cofactor, d_golden_Q_cofactor, d_golden_P_cofactor, d_golden_relation, d_golden_factor, d_sqrt_half_factor_cofactor, d_sqrt_half_Q_cofactor, d_sqrt_half_P_cofactor, d_sqrt_half_relation, d_sqrt_half_factor, d_half_factor_cofactor, d_half_Q_cofactor, d_half_P_cofactor, d_half_relation, d_half_factor, d_reference_resultant, d_normalized_eliminant, d_eliminant_Q_cofactor, d_eliminant_P_cofactor, d_Hhh, d_Hch, d_Hcc, d_dRh, d_dRc, d_R, d_chi, d_eta, d_g, d_Q, d_P, d_N, d_M, d_L, d_w, d_v, d_u]) <;> ring

theorem substitution_simultaneous_sign_symmetry (v_c v_h : K) :
    ((-256 : K) * ((-1 : K) + ((-4 : K) * (((-1 : K) * v_c) ^ 2)) + ((16 : K) * (((-1 : K) * v_c) ^ 4)) + ((-4 : K) * ((-1 : K) * v_c) * ((-1 : K) * v_h)) + ((4 : K) * (((-1 : K) * v_c) ^ 2) * (((-1 : K) * v_h) ^ 2)) + ((16 : K) * ((-1 : K) * v_h) * (((-1 : K) * v_c) ^ 3))) * (((1 : K) + ((2 : K) * (((-1 : K) * v_c) ^ 2))) ^ 2) * (((1 : K) + ((-4 : K) * (((-1 : K) * v_c) ^ 2)) + ((8 : K) * (((-1 : K) * v_c) ^ 4)) + ((4 : K) * ((-1 : K) * v_h) * (((-1 : K) * v_c) ^ 3))) ^ 2)) =
    ((-256 : K) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * v_h) + ((4 : K) * (v_c ^ 2) * (v_h ^ 2)) + ((16 : K) * v_h * (v_c ^ 3))) * (((1 : K) + ((2 : K) * (v_c ^ 2))) ^ 2) * (((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * v_h * (v_c ^ 3))) ^ 2)) := by
  ring

theorem substitution_vertical_edge_v_plus (v_c v_h : K) :
    (((16 : K) + ((-16 : K) * ((1 : K) ^ 2))) * ((1 : K) + ((1 : K) ^ 2) + ((-2 : K) * (1 : K) * v_h))) =
    (0 : K) := by
  ring

theorem substitution_vertical_edge_eta_plus (v_c v_h : K) :
    ((((16 : K) + ((-16 : K) * ((1 : K) ^ 2))) * ((1 : K) + ((1 : K) ^ 2) + ((-2 : K) * (1 : K) * v_h))) + ((-2 : K) * ((4 : K) + ((16 : K) * ((1 : K) ^ 4)) + ((16 : K) * (1 : K) * v_h * ((-1 : K) + ((2 : K) * ((1 : K) ^ 2))))))) =
    ((-40 : K) + ((-32 : K) * v_h)) := by
  ring

theorem substitution_vertical_edge_v_minus (v_c v_h : K) :
    (((16 : K) + ((-16 : K) * ((-1 : K) ^ 2))) * ((1 : K) + ((-1 : K) ^ 2) + ((-2 : K) * (-1 : K) * v_h))) =
    (0 : K) := by
  ring

theorem substitution_vertical_edge_eta_minus (v_c v_h : K) :
    ((((16 : K) + ((-16 : K) * ((-1 : K) ^ 2))) * ((1 : K) + ((-1 : K) ^ 2) + ((-2 : K) * (-1 : K) * v_h))) + ((-2 : K) * ((4 : K) + ((16 : K) * ((-1 : K) ^ 4)) + ((16 : K) * (-1 : K) * v_h * ((-1 : K) + ((2 : K) * ((-1 : K) ^ 2))))))) =
    ((-40 : K) + ((32 : K) * v_h)) := by
  ring

theorem substitution_c_zero_R (v_c v_h : K) :
    ((-256 : K) * ((-1 : K) + ((-4 : K) * ((0 : K) ^ 2)) + ((16 : K) * ((0 : K) ^ 4)) + ((-4 : K) * (0 : K) * v_h) + ((4 : K) * ((0 : K) ^ 2) * (v_h ^ 2)) + ((16 : K) * v_h * ((0 : K) ^ 3))) * (((1 : K) + ((2 : K) * ((0 : K) ^ 2))) ^ 2) * (((1 : K) + ((-4 : K) * ((0 : K) ^ 2)) + ((8 : K) * ((0 : K) ^ 4)) + ((4 : K) * v_h * ((0 : K) ^ 3))) ^ 2)) =
    (256 : K) := by
  ring

theorem substitution_c_zero_dRc (v_c v_h : K) :
    ((-1024 : K) * ((1 : K) + ((2 : K) * ((0 : K) ^ 2))) * ((1 : K) + ((-4 : K) * ((0 : K) ^ 2)) + ((8 : K) * ((0 : K) ^ 4)) + ((4 : K) * v_h * ((0 : K) ^ 3))) * (((-1 : K) * v_h) + ((-224 : K) * ((0 : K) ^ 7)) + ((-112 : K) * ((0 : K) ^ 5)) + ((28 : K) * ((0 : K) ^ 3)) + ((1024 : K) * ((0 : K) ^ 9)) + ((-144 : K) * v_h * ((0 : K) ^ 6)) + ((-108 : K) * v_h * ((0 : K) ^ 4)) + ((-40 : K) * ((0 : K) ^ 3) * (v_h ^ 2)) + ((2 : K) * (0 : K) * (v_h ^ 2)) + ((16 : K) * v_h * ((0 : K) ^ 2)) + ((32 : K) * ((0 : K) ^ 4) * (v_h ^ 3)) + ((56 : K) * ((0 : K) ^ 5) * (v_h ^ 2)) + ((96 : K) * ((0 : K) ^ 6) * (v_h ^ 3)) + ((640 : K) * ((0 : K) ^ 7) * (v_h ^ 2)) + ((1408 : K) * v_h * ((0 : K) ^ 8)))) =
    ((1024 : K) * v_h) := by
  ring

theorem substitution_golden_R_substitution (v_c v_h : K) :
    ((-256 : K) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))) + ((4 : K) * (v_c ^ 2) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((16 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 3))) * (((1 : K) + ((2 : K) * (v_c ^ 2))) ^ 2) * (((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 3))) ^ 2)) =
    ((((1 : K) + ((-4 : K) * (v_c ^ 2)) + ((8 : K) * (v_c ^ 4)) + ((4 : K) * (v_c ^ 3) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))))) ^ 2) * ((1 : K) + ((2 : K) * (v_c ^ 2))) * ((-256 : K) + ((-512 : K) * (v_c ^ 2))) * ((-1 : K) + ((-4 : K) * (v_c ^ 2)) + ((16 : K) * (v_c ^ 4)) + ((-4 : K) * v_c * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))) + ((4 : K) * (v_c ^ 2) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((16 : K) * (v_c ^ 3) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))))) := by
  ring

theorem substitution_golden_Hcc_substitution (v_c v_h : K) :
    (((-251658240 : K) * (v_c ^ 14)) + ((-17694720 : K) * (v_c ^ 8)) + ((-86016 : K) * (v_c ^ 2)) + ((-2048 : K) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((860160 : K) * (v_c ^ 4)) + ((43253760 : K) * (v_c ^ 10)) + ((47710208 : K) * (v_c ^ 12)) + ((-440401920 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 13)) + ((-286261248 : K) * (v_c ^ 12) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-81788928 : K) * (v_c ^ 11) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-60555264 : K) * (v_c ^ 10) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-36044800 : K) * (v_c ^ 9) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-14155776 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 7)) + ((-8650752 : K) * (v_c ^ 10) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 4)) + ((-5898240 : K) * (v_c ^ 8) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 4)) + ((-1835008 : K) * (v_c ^ 6) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-1032192 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 5)) + ((-983040 : K) * (v_c ^ 4) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-917504 : K) * (v_c ^ 6) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 4)) + ((-163840 : K) * (v_c ^ 3) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-36864 : K) * v_c * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))) + ((147456 : K) * (v_c ^ 2) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((573440 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 3)) + ((688128 : K) * (v_c ^ 5) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((2359296 : K) * (v_c ^ 7) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((30965760 : K) * (v_c ^ 8) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((64880640 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 9))) =
    (((-2214592512 : K) * (v_c ^ 22)) + ((-483655680 : K) * (v_c ^ 14)) + ((-100663296 : K) * (v_c ^ 20)) + ((-6291456 : K) * (v_c ^ 16)) + ((-6193152 : K) * (v_c ^ 8)) + ((-2605056 : K) * (v_c ^ 6)) + ((6144 : K) * (v_c ^ 2)) + ((368640 : K) * (v_c ^ 4)) + ((26738688 : K) * (v_c ^ 12)) + ((58884096 : K) * (v_c ^ 10)) + ((1711276032 : K) * (v_c ^ 18))) := by
  ring

theorem substitution_golden_Hch_substitution (v_c v_h : K) :
    ((1024 : K) + ((-31457280 : K) * (v_c ^ 14)) + ((-1769472 : K) * (v_c ^ 8)) + ((-172032 : K) * (v_c ^ 6)) + ((-18432 : K) * (v_c ^ 2)) + ((143360 : K) * (v_c ^ 4)) + ((6488064 : K) * (v_c ^ 10)) + ((-44040192 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 13)) + ((-20447232 : K) * (v_c ^ 12) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-11010048 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 11)) + ((-10813440 : K) * (v_c ^ 10) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-3145728 : K) * (v_c ^ 11) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-2621440 : K) * (v_c ^ 9) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-524288 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 7)) + ((-524288 : K) * (v_c ^ 7) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 3)) + ((-393216 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 5)) + ((-122880 : K) * (v_c ^ 4) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-4096 : K) * v_c * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3)))) + ((98304 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 3)) + ((344064 : K) * (v_c ^ 6) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((884736 : K) * (v_c ^ 8) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((6881280 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 9))) =
    ((1024 : K) + ((-201326592 : K) * (v_c ^ 20)) + ((-41943040 : K) * (v_c ^ 18)) + ((-38338560 : K) * (v_c ^ 12)) + ((-4358144 : K) * (v_c ^ 10)) + ((-167936 : K) * (v_c ^ 4)) + ((-6144 : K) * (v_c ^ 2)) + ((294912 : K) * (v_c ^ 6)) + ((4276224 : K) * (v_c ^ 8)) + ((23592960 : K) * (v_c ^ 14)) + ((145752064 : K) * (v_c ^ 16))) := by
  ring

theorem substitution_golden_Hhh_substitution (v_c v_h : K) :
    (((-3145728 : K) * (v_c ^ 14)) + ((-917504 : K) * (v_c ^ 12)) + ((-65536 : K) * (v_c ^ 6)) + ((-65536 : K) * (v_c ^ 8)) + ((-2048 : K) * (v_c ^ 2)) + ((24576 : K) * (v_c ^ 4)) + ((688128 : K) * (v_c ^ 10)) + ((-3145728 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 13)) + ((-1966080 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 11)) + ((-786432 : K) * (v_c ^ 10) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-786432 : K) * (v_c ^ 12) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-196608 : K) * (v_c ^ 8) * ((((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) ^ 2)) + ((-49152 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 5)) + ((98304 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 7)) + ((196608 : K) * (((-3 : K) * v_c) + ((4 : K) * (v_c ^ 3))) * (v_c ^ 9))) =
    (((-12582912 : K) * (v_c ^ 18)) + ((-6291456 : K) * (v_c ^ 16)) + ((-1277952 : K) * (v_c ^ 10)) + ((-557056 : K) * (v_c ^ 8)) + ((-2048 : K) * (v_c ^ 2)) + ((24576 : K) * (v_c ^ 4)) + ((81920 : K) * (v_c ^ 6)) + ((3407872 : K) * (v_c ^ 12)) + ((7077888 : K) * (v_c ^ 14))) := by
  ring

theorem evaluation_Hcc_at_origin :
    (((-251658240 : K) * ((0 : K) ^ 14)) + ((-17694720 : K) * ((0 : K) ^ 8)) + ((-86016 : K) * ((0 : K) ^ 2)) + ((-2048 : K) * ((0 : K) ^ 2)) + ((860160 : K) * ((0 : K) ^ 4)) + ((43253760 : K) * ((0 : K) ^ 10)) + ((47710208 : K) * ((0 : K) ^ 12)) + ((-440401920 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-286261248 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-81788928 : K) * ((0 : K) ^ 11) * ((0 : K) ^ 3)) + ((-60555264 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-36044800 : K) * ((0 : K) ^ 9) * ((0 : K) ^ 3)) + ((-14155776 : K) * (0 : K) * ((0 : K) ^ 7)) + ((-8650752 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 4)) + ((-5898240 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 4)) + ((-1835008 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 2)) + ((-1032192 : K) * (0 : K) * ((0 : K) ^ 5)) + ((-983040 : K) * ((0 : K) ^ 4) * ((0 : K) ^ 2)) + ((-917504 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 4)) + ((-163840 : K) * ((0 : K) ^ 3) * ((0 : K) ^ 3)) + ((-36864 : K) * (0 : K) * (0 : K)) + ((147456 : K) * ((0 : K) ^ 2) * ((0 : K) ^ 2)) + ((573440 : K) * (0 : K) * ((0 : K) ^ 3)) + ((688128 : K) * ((0 : K) ^ 5) * ((0 : K) ^ 3)) + ((2359296 : K) * ((0 : K) ^ 7) * ((0 : K) ^ 3)) + ((30965760 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((64880640 : K) * (0 : K) * ((0 : K) ^ 9))) =
    (0 : K) := by
  norm_num

theorem evaluation_Hch_at_origin :
    ((1024 : K) + ((-31457280 : K) * ((0 : K) ^ 14)) + ((-1769472 : K) * ((0 : K) ^ 8)) + ((-172032 : K) * ((0 : K) ^ 6)) + ((-18432 : K) * ((0 : K) ^ 2)) + ((143360 : K) * ((0 : K) ^ 4)) + ((6488064 : K) * ((0 : K) ^ 10)) + ((-44040192 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-20447232 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-11010048 : K) * (0 : K) * ((0 : K) ^ 11)) + ((-10813440 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-3145728 : K) * ((0 : K) ^ 11) * ((0 : K) ^ 3)) + ((-2621440 : K) * ((0 : K) ^ 9) * ((0 : K) ^ 3)) + ((-524288 : K) * (0 : K) * ((0 : K) ^ 7)) + ((-524288 : K) * ((0 : K) ^ 7) * ((0 : K) ^ 3)) + ((-393216 : K) * (0 : K) * ((0 : K) ^ 5)) + ((-122880 : K) * ((0 : K) ^ 4) * ((0 : K) ^ 2)) + ((-4096 : K) * (0 : K) * (0 : K)) + ((98304 : K) * (0 : K) * ((0 : K) ^ 3)) + ((344064 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 2)) + ((884736 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((6881280 : K) * (0 : K) * ((0 : K) ^ 9))) =
    (1024 : K) := by
  norm_num

theorem evaluation_Hhh_at_origin :
    (((-3145728 : K) * ((0 : K) ^ 14)) + ((-917504 : K) * ((0 : K) ^ 12)) + ((-65536 : K) * ((0 : K) ^ 6)) + ((-65536 : K) * ((0 : K) ^ 8)) + ((-2048 : K) * ((0 : K) ^ 2)) + ((24576 : K) * ((0 : K) ^ 4)) + ((688128 : K) * ((0 : K) ^ 10)) + ((-3145728 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-1966080 : K) * (0 : K) * ((0 : K) ^ 11)) + ((-786432 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-786432 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-196608 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((-49152 : K) * (0 : K) * ((0 : K) ^ 5)) + ((98304 : K) * (0 : K) * ((0 : K) ^ 7)) + ((196608 : K) * (0 : K) * ((0 : K) ^ 9))) =
    (0 : K) := by
  norm_num

theorem evaluation_positive_diagonal_curvature_at_origin :
    ((((-251658240 : K) * ((0 : K) ^ 14)) + ((-17694720 : K) * ((0 : K) ^ 8)) + ((-86016 : K) * ((0 : K) ^ 2)) + ((-2048 : K) * ((0 : K) ^ 2)) + ((860160 : K) * ((0 : K) ^ 4)) + ((43253760 : K) * ((0 : K) ^ 10)) + ((47710208 : K) * ((0 : K) ^ 12)) + ((-440401920 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-286261248 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-81788928 : K) * ((0 : K) ^ 11) * ((0 : K) ^ 3)) + ((-60555264 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-36044800 : K) * ((0 : K) ^ 9) * ((0 : K) ^ 3)) + ((-14155776 : K) * (0 : K) * ((0 : K) ^ 7)) + ((-8650752 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 4)) + ((-5898240 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 4)) + ((-1835008 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 2)) + ((-1032192 : K) * (0 : K) * ((0 : K) ^ 5)) + ((-983040 : K) * ((0 : K) ^ 4) * ((0 : K) ^ 2)) + ((-917504 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 4)) + ((-163840 : K) * ((0 : K) ^ 3) * ((0 : K) ^ 3)) + ((-36864 : K) * (0 : K) * (0 : K)) + ((147456 : K) * ((0 : K) ^ 2) * ((0 : K) ^ 2)) + ((573440 : K) * (0 : K) * ((0 : K) ^ 3)) + ((688128 : K) * ((0 : K) ^ 5) * ((0 : K) ^ 3)) + ((2359296 : K) * ((0 : K) ^ 7) * ((0 : K) ^ 3)) + ((30965760 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((64880640 : K) * (0 : K) * ((0 : K) ^ 9))) + (((-3145728 : K) * ((0 : K) ^ 14)) + ((-917504 : K) * ((0 : K) ^ 12)) + ((-65536 : K) * ((0 : K) ^ 6)) + ((-65536 : K) * ((0 : K) ^ 8)) + ((-2048 : K) * ((0 : K) ^ 2)) + ((24576 : K) * ((0 : K) ^ 4)) + ((688128 : K) * ((0 : K) ^ 10)) + ((-3145728 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-1966080 : K) * (0 : K) * ((0 : K) ^ 11)) + ((-786432 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-786432 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-196608 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((-49152 : K) * (0 : K) * ((0 : K) ^ 5)) + ((98304 : K) * (0 : K) * ((0 : K) ^ 7)) + ((196608 : K) * (0 : K) * ((0 : K) ^ 9))) + ((2 : K) * ((1024 : K) + ((-31457280 : K) * ((0 : K) ^ 14)) + ((-1769472 : K) * ((0 : K) ^ 8)) + ((-172032 : K) * ((0 : K) ^ 6)) + ((-18432 : K) * ((0 : K) ^ 2)) + ((143360 : K) * ((0 : K) ^ 4)) + ((6488064 : K) * ((0 : K) ^ 10)) + ((-44040192 : K) * (0 : K) * ((0 : K) ^ 13)) + ((-20447232 : K) * ((0 : K) ^ 12) * ((0 : K) ^ 2)) + ((-11010048 : K) * (0 : K) * ((0 : K) ^ 11)) + ((-10813440 : K) * ((0 : K) ^ 10) * ((0 : K) ^ 2)) + ((-3145728 : K) * ((0 : K) ^ 11) * ((0 : K) ^ 3)) + ((-2621440 : K) * ((0 : K) ^ 9) * ((0 : K) ^ 3)) + ((-524288 : K) * (0 : K) * ((0 : K) ^ 7)) + ((-524288 : K) * ((0 : K) ^ 7) * ((0 : K) ^ 3)) + ((-393216 : K) * (0 : K) * ((0 : K) ^ 5)) + ((-122880 : K) * ((0 : K) ^ 4) * ((0 : K) ^ 2)) + ((-4096 : K) * (0 : K) * (0 : K)) + ((98304 : K) * (0 : K) * ((0 : K) ^ 3)) + ((344064 : K) * ((0 : K) ^ 6) * ((0 : K) ^ 2)) + ((884736 : K) * ((0 : K) ^ 8) * ((0 : K) ^ 2)) + ((6881280 : K) * (0 : K) * ((0 : K) ^ 9))))) =
    (2048 : K) := by
  norm_num

theorem derivative_differentiate_R_c_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((-256 : ℝ) * ((-1 : ℝ) + ((-4 : ℝ) * (x ^ 2)) + ((16 : ℝ) * (x ^ 4)) + ((-4 : ℝ) * x * v_h) + ((4 : ℝ) * (x ^ 2) * (v_h ^ 2)) + ((16 : ℝ) * v_h * (x ^ 3))) * (((1 : ℝ) + ((2 : ℝ) * (x ^ 2))) ^ 2) * (((1 : ℝ) + ((-4 : ℝ) * (x ^ 2)) + ((8 : ℝ) * (x ^ 4)) + ((4 : ℝ) * v_h * (x ^ 3))) ^ 2)))
      ((-1024 : ℝ) * ((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) * ((1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((8 : ℝ) * (v_c ^ 4)) + ((4 : ℝ) * v_h * (v_c ^ 3))) * (((-1 : ℝ) * v_h) + ((-224 : ℝ) * (v_c ^ 7)) + ((-112 : ℝ) * (v_c ^ 5)) + ((28 : ℝ) * (v_c ^ 3)) + ((1024 : ℝ) * (v_c ^ 9)) + ((-144 : ℝ) * v_h * (v_c ^ 6)) + ((-108 : ℝ) * v_h * (v_c ^ 4)) + ((-40 : ℝ) * (v_c ^ 3) * (v_h ^ 2)) + ((2 : ℝ) * v_c * (v_h ^ 2)) + ((16 : ℝ) * v_h * (v_c ^ 2)) + ((32 : ℝ) * (v_c ^ 4) * (v_h ^ 3)) + ((56 : ℝ) * (v_c ^ 5) * (v_h ^ 2)) + ((96 : ℝ) * (v_c ^ 6) * (v_h ^ 3)) + ((640 : ℝ) * (v_c ^ 7) * (v_h ^ 2)) + ((1408 : ℝ) * v_h * (v_c ^ 8)))) v_c := by
  refine (((((hasDerivAt_const v_c (-256 : ℝ)).mul ((((((hasDerivAt_const v_c (-1 : ℝ)).add ((hasDerivAt_const v_c (-4 : ℝ)).mul ((hasDerivAt_id v_c).pow 2))).add ((hasDerivAt_const v_c (16 : ℝ)).mul ((hasDerivAt_id v_c).pow 4))).add (((hasDerivAt_const v_c (-4 : ℝ)).mul (hasDerivAt_id v_c)).mul (hasDerivAt_const v_c v_h))).add (((hasDerivAt_const v_c (4 : ℝ)).mul ((hasDerivAt_id v_c).pow 2)).mul ((hasDerivAt_const v_c v_h).pow 2))).add (((hasDerivAt_const v_c (16 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 3)))).mul (((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (2 : ℝ)).mul ((hasDerivAt_id v_c).pow 2))).pow 2)).mul (((((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (-4 : ℝ)).mul ((hasDerivAt_id v_c).pow 2))).add ((hasDerivAt_const v_c (8 : ℝ)).mul ((hasDerivAt_id v_c).pow 4))).add (((hasDerivAt_const v_c (4 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 3))).pow 2)).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_R_h_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((-256 : ℝ) * ((-1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((16 : ℝ) * (v_c ^ 4)) + ((-4 : ℝ) * v_c * x) + ((4 : ℝ) * (v_c ^ 2) * (x ^ 2)) + ((16 : ℝ) * x * (v_c ^ 3))) * (((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) ^ 2) * (((1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((8 : ℝ) * (v_c ^ 4)) + ((4 : ℝ) * x * (v_c ^ 3))) ^ 2)))
      ((-1024 : ℝ) * ((1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((8 : ℝ) * (v_c ^ 4)) + ((4 : ℝ) * v_h * (v_c ^ 3))) * ((-1 : ℝ) + ((-32 : ℝ) * (v_c ^ 4)) + ((6 : ℝ) * (v_c ^ 2)) + ((64 : ℝ) * (v_c ^ 6)) + ((-20 : ℝ) * v_h * (v_c ^ 3)) + ((2 : ℝ) * v_c * v_h) + ((16 : ℝ) * (v_c ^ 4) * (v_h ^ 2)) + ((64 : ℝ) * v_h * (v_c ^ 5))) * v_c * (((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) ^ 2)) v_h := by
  refine (((((hasDerivAt_const v_h (-256 : ℝ)).mul ((((((hasDerivAt_const v_h (-1 : ℝ)).add ((hasDerivAt_const v_h (-4 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).add ((hasDerivAt_const v_h (16 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4))).add (((hasDerivAt_const v_h (-4 : ℝ)).mul (hasDerivAt_const v_h v_c)).mul (hasDerivAt_id v_h))).add (((hasDerivAt_const v_h (4 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (16 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 3)))).mul (((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (2 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).pow 2)).mul (((((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (-4 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).add ((hasDerivAt_const v_h (8 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4))).add (((hasDerivAt_const v_h (4 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 3))).pow 2)).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Hcc_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((-1024 : ℝ) * ((1 : ℝ) + ((2 : ℝ) * (x ^ 2))) * ((1 : ℝ) + ((-4 : ℝ) * (x ^ 2)) + ((8 : ℝ) * (x ^ 4)) + ((4 : ℝ) * v_h * (x ^ 3))) * (((-1 : ℝ) * v_h) + ((-224 : ℝ) * (x ^ 7)) + ((-112 : ℝ) * (x ^ 5)) + ((28 : ℝ) * (x ^ 3)) + ((1024 : ℝ) * (x ^ 9)) + ((-144 : ℝ) * v_h * (x ^ 6)) + ((-108 : ℝ) * v_h * (x ^ 4)) + ((-40 : ℝ) * (x ^ 3) * (v_h ^ 2)) + ((2 : ℝ) * x * (v_h ^ 2)) + ((16 : ℝ) * v_h * (x ^ 2)) + ((32 : ℝ) * (x ^ 4) * (v_h ^ 3)) + ((56 : ℝ) * (x ^ 5) * (v_h ^ 2)) + ((96 : ℝ) * (x ^ 6) * (v_h ^ 3)) + ((640 : ℝ) * (x ^ 7) * (v_h ^ 2)) + ((1408 : ℝ) * v_h * (x ^ 8)))))
      (((-251658240 : ℝ) * (v_c ^ 14)) + ((-17694720 : ℝ) * (v_c ^ 8)) + ((-86016 : ℝ) * (v_c ^ 2)) + ((-2048 : ℝ) * (v_h ^ 2)) + ((860160 : ℝ) * (v_c ^ 4)) + ((43253760 : ℝ) * (v_c ^ 10)) + ((47710208 : ℝ) * (v_c ^ 12)) + ((-440401920 : ℝ) * v_h * (v_c ^ 13)) + ((-286261248 : ℝ) * (v_c ^ 12) * (v_h ^ 2)) + ((-81788928 : ℝ) * (v_c ^ 11) * (v_h ^ 3)) + ((-60555264 : ℝ) * (v_c ^ 10) * (v_h ^ 2)) + ((-36044800 : ℝ) * (v_c ^ 9) * (v_h ^ 3)) + ((-14155776 : ℝ) * v_h * (v_c ^ 7)) + ((-8650752 : ℝ) * (v_c ^ 10) * (v_h ^ 4)) + ((-5898240 : ℝ) * (v_c ^ 8) * (v_h ^ 4)) + ((-1835008 : ℝ) * (v_c ^ 6) * (v_h ^ 2)) + ((-1032192 : ℝ) * v_h * (v_c ^ 5)) + ((-983040 : ℝ) * (v_c ^ 4) * (v_h ^ 2)) + ((-917504 : ℝ) * (v_c ^ 6) * (v_h ^ 4)) + ((-163840 : ℝ) * (v_c ^ 3) * (v_h ^ 3)) + ((-36864 : ℝ) * v_c * v_h) + ((147456 : ℝ) * (v_c ^ 2) * (v_h ^ 2)) + ((573440 : ℝ) * v_h * (v_c ^ 3)) + ((688128 : ℝ) * (v_c ^ 5) * (v_h ^ 3)) + ((2359296 : ℝ) * (v_c ^ 7) * (v_h ^ 3)) + ((30965760 : ℝ) * (v_c ^ 8) * (v_h ^ 2)) + ((64880640 : ℝ) * v_h * (v_c ^ 9))) v_c := by
  refine (((((hasDerivAt_const v_c (-1024 : ℝ)).mul ((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (2 : ℝ)).mul ((hasDerivAt_id v_c).pow 2)))).mul ((((hasDerivAt_const v_c (1 : ℝ)).add ((hasDerivAt_const v_c (-4 : ℝ)).mul ((hasDerivAt_id v_c).pow 2))).add ((hasDerivAt_const v_c (8 : ℝ)).mul ((hasDerivAt_id v_c).pow 4))).add (((hasDerivAt_const v_c (4 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 3)))).mul ((((((((((((((((hasDerivAt_const v_c (-1 : ℝ)).mul (hasDerivAt_const v_c v_h)).add ((hasDerivAt_const v_c (-224 : ℝ)).mul ((hasDerivAt_id v_c).pow 7))).add ((hasDerivAt_const v_c (-112 : ℝ)).mul ((hasDerivAt_id v_c).pow 5))).add ((hasDerivAt_const v_c (28 : ℝ)).mul ((hasDerivAt_id v_c).pow 3))).add ((hasDerivAt_const v_c (1024 : ℝ)).mul ((hasDerivAt_id v_c).pow 9))).add (((hasDerivAt_const v_c (-144 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 6))).add (((hasDerivAt_const v_c (-108 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 4))).add (((hasDerivAt_const v_c (-40 : ℝ)).mul ((hasDerivAt_id v_c).pow 3)).mul ((hasDerivAt_const v_c v_h).pow 2))).add (((hasDerivAt_const v_c (2 : ℝ)).mul (hasDerivAt_id v_c)).mul ((hasDerivAt_const v_c v_h).pow 2))).add (((hasDerivAt_const v_c (16 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 2))).add (((hasDerivAt_const v_c (32 : ℝ)).mul ((hasDerivAt_id v_c).pow 4)).mul ((hasDerivAt_const v_c v_h).pow 3))).add (((hasDerivAt_const v_c (56 : ℝ)).mul ((hasDerivAt_id v_c).pow 5)).mul ((hasDerivAt_const v_c v_h).pow 2))).add (((hasDerivAt_const v_c (96 : ℝ)).mul ((hasDerivAt_id v_c).pow 6)).mul ((hasDerivAt_const v_c v_h).pow 3))).add (((hasDerivAt_const v_c (640 : ℝ)).mul ((hasDerivAt_id v_c).pow 7)).mul ((hasDerivAt_const v_c v_h).pow 2))).add (((hasDerivAt_const v_c (1408 : ℝ)).mul (hasDerivAt_const v_c v_h)).mul ((hasDerivAt_id v_c).pow 8)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Hch_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((-1024 : ℝ) * ((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) * ((1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((8 : ℝ) * (v_c ^ 4)) + ((4 : ℝ) * x * (v_c ^ 3))) * (((-1 : ℝ) * x) + ((-224 : ℝ) * (v_c ^ 7)) + ((-112 : ℝ) * (v_c ^ 5)) + ((28 : ℝ) * (v_c ^ 3)) + ((1024 : ℝ) * (v_c ^ 9)) + ((-144 : ℝ) * x * (v_c ^ 6)) + ((-108 : ℝ) * x * (v_c ^ 4)) + ((-40 : ℝ) * (v_c ^ 3) * (x ^ 2)) + ((2 : ℝ) * v_c * (x ^ 2)) + ((16 : ℝ) * x * (v_c ^ 2)) + ((32 : ℝ) * (v_c ^ 4) * (x ^ 3)) + ((56 : ℝ) * (v_c ^ 5) * (x ^ 2)) + ((96 : ℝ) * (v_c ^ 6) * (x ^ 3)) + ((640 : ℝ) * (v_c ^ 7) * (x ^ 2)) + ((1408 : ℝ) * x * (v_c ^ 8)))))
      ((1024 : ℝ) + ((-31457280 : ℝ) * (v_c ^ 14)) + ((-1769472 : ℝ) * (v_c ^ 8)) + ((-172032 : ℝ) * (v_c ^ 6)) + ((-18432 : ℝ) * (v_c ^ 2)) + ((143360 : ℝ) * (v_c ^ 4)) + ((6488064 : ℝ) * (v_c ^ 10)) + ((-44040192 : ℝ) * v_h * (v_c ^ 13)) + ((-20447232 : ℝ) * (v_c ^ 12) * (v_h ^ 2)) + ((-11010048 : ℝ) * v_h * (v_c ^ 11)) + ((-10813440 : ℝ) * (v_c ^ 10) * (v_h ^ 2)) + ((-3145728 : ℝ) * (v_c ^ 11) * (v_h ^ 3)) + ((-2621440 : ℝ) * (v_c ^ 9) * (v_h ^ 3)) + ((-524288 : ℝ) * v_h * (v_c ^ 7)) + ((-524288 : ℝ) * (v_c ^ 7) * (v_h ^ 3)) + ((-393216 : ℝ) * v_h * (v_c ^ 5)) + ((-122880 : ℝ) * (v_c ^ 4) * (v_h ^ 2)) + ((-4096 : ℝ) * v_c * v_h) + ((98304 : ℝ) * v_h * (v_c ^ 3)) + ((344064 : ℝ) * (v_c ^ 6) * (v_h ^ 2)) + ((884736 : ℝ) * (v_c ^ 8) * (v_h ^ 2)) + ((6881280 : ℝ) * v_h * (v_c ^ 9))) v_h := by
  refine (((((hasDerivAt_const v_h (-1024 : ℝ)).mul ((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (2 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2)))).mul ((((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (-4 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).add ((hasDerivAt_const v_h (8 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4))).add (((hasDerivAt_const v_h (4 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 3)))).mul ((((((((((((((((hasDerivAt_const v_h (-1 : ℝ)).mul (hasDerivAt_id v_h)).add ((hasDerivAt_const v_h (-224 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 7))).add ((hasDerivAt_const v_h (-112 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 5))).add ((hasDerivAt_const v_h (28 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 3))).add ((hasDerivAt_const v_h (1024 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 9))).add (((hasDerivAt_const v_h (-144 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 6))).add (((hasDerivAt_const v_h (-108 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 4))).add (((hasDerivAt_const v_h (-40 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 3)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (2 : ℝ)).mul (hasDerivAt_const v_h v_c)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (16 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 2))).add (((hasDerivAt_const v_h (32 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4)).mul ((hasDerivAt_id v_h).pow 3))).add (((hasDerivAt_const v_h (56 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 5)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (96 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 6)).mul ((hasDerivAt_id v_h).pow 3))).add (((hasDerivAt_const v_h (640 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 7)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (1408 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 8)))).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

theorem derivative_differentiate_Hhh_1 (v_c v_h : ℝ) :
    HasDerivAt (fun x : ℝ => ((-1024 : ℝ) * ((1 : ℝ) + ((-4 : ℝ) * (v_c ^ 2)) + ((8 : ℝ) * (v_c ^ 4)) + ((4 : ℝ) * x * (v_c ^ 3))) * ((-1 : ℝ) + ((-32 : ℝ) * (v_c ^ 4)) + ((6 : ℝ) * (v_c ^ 2)) + ((64 : ℝ) * (v_c ^ 6)) + ((-20 : ℝ) * x * (v_c ^ 3)) + ((2 : ℝ) * v_c * x) + ((16 : ℝ) * (v_c ^ 4) * (x ^ 2)) + ((64 : ℝ) * x * (v_c ^ 5))) * v_c * (((1 : ℝ) + ((2 : ℝ) * (v_c ^ 2))) ^ 2)))
      (((-3145728 : ℝ) * (v_c ^ 14)) + ((-917504 : ℝ) * (v_c ^ 12)) + ((-65536 : ℝ) * (v_c ^ 6)) + ((-65536 : ℝ) * (v_c ^ 8)) + ((-2048 : ℝ) * (v_c ^ 2)) + ((24576 : ℝ) * (v_c ^ 4)) + ((688128 : ℝ) * (v_c ^ 10)) + ((-3145728 : ℝ) * v_h * (v_c ^ 13)) + ((-1966080 : ℝ) * v_h * (v_c ^ 11)) + ((-786432 : ℝ) * (v_c ^ 10) * (v_h ^ 2)) + ((-786432 : ℝ) * (v_c ^ 12) * (v_h ^ 2)) + ((-196608 : ℝ) * (v_c ^ 8) * (v_h ^ 2)) + ((-49152 : ℝ) * v_h * (v_c ^ 5)) + ((98304 : ℝ) * v_h * (v_c ^ 7)) + ((196608 : ℝ) * v_h * (v_c ^ 9))) v_h := by
  refine ((((((hasDerivAt_const v_h (-1024 : ℝ)).mul ((((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (-4 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).add ((hasDerivAt_const v_h (8 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4))).add (((hasDerivAt_const v_h (4 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 3)))).mul ((((((((hasDerivAt_const v_h (-1 : ℝ)).add ((hasDerivAt_const v_h (-32 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4))).add ((hasDerivAt_const v_h (6 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).add ((hasDerivAt_const v_h (64 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 6))).add (((hasDerivAt_const v_h (-20 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 3))).add (((hasDerivAt_const v_h (2 : ℝ)).mul (hasDerivAt_const v_h v_c)).mul (hasDerivAt_id v_h))).add (((hasDerivAt_const v_h (16 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 4)).mul ((hasDerivAt_id v_h).pow 2))).add (((hasDerivAt_const v_h (64 : ℝ)).mul (hasDerivAt_id v_h)).mul ((hasDerivAt_const v_h v_c).pow 5)))).mul (hasDerivAt_const v_h v_c)).mul (((hasDerivAt_const v_h (1 : ℝ)).add ((hasDerivAt_const v_h (2 : ℝ)).mul ((hasDerivAt_const v_h v_c).pow 2))).pow 2)).congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring
  · norm_num [Pi.add_apply, Pi.mul_apply, Pi.neg_apply, Pi.pow_apply, id_eq] <;> ring

end Step1.boundary_core
