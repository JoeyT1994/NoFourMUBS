import FourierGraphProofBatch0000

import FourierGraphProofBatch0001

import IntegratedCertificateConsumer

import PhysicalGraph

/- Preserved declarations from candidate module FourierPilotNodes000064. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def colors64 (v : Fin 48) : Nat := if (140737488359424 : Nat).testBit v.val then 0 else if (2147483648 : Nat).testBit v.val then 1 else if (1099511627776 : Nat).testBit v.val then 2 else 0
def cert64 : PairCertificate (Fin 48) := .first (.color 3 colors64)
theorem checked64 : checkPair O U s122 s123 4 cert64 = true := by
  decide +kernel
def cert65 : PairCertificate (Fin 48) := .first .size
theorem checked65 : checkPair O U s125 s126 4 cert65 = true := by
  decide +kernel
def colors66 (v : Fin 48) : Nat := if (201867394 : Nat).testBit v.val then 0 else if (22127990276096 : Nat).testBit v.val then 1 else 0
def cert66 : CliqueCertificate (Fin 48) := (.color 2 colors66)
theorem checked66 : checkClique O s129 5 cert66 = true := by
  decide +kernel
def cert67 : PairCertificate (Fin 48) := .cross cert66
theorem checked67 : checkPair O U s128 s129 4 cert67 = true := by
  change checkClique O s129 5 cert66 = true
  exact checked66
def colors68 (v : Fin 48) : Nat := if (538978321 : Nat).testBit v.val then 0 else if (897648427040 : Nat).testBit v.val then 1 else 0
def cert68 : CliqueCertificate (Fin 48) := (.color 2 colors68)
theorem checked68 : checkClique O s131 5 cert68 = true := by
  decide +kernel
def cert69 : PairCertificate (Fin 48) := .cross cert68
theorem checked69 : checkPair O U s130 s131 4 cert69 = true := by
  change checkClique O s131 5 cert68 = true
  exact checked68
def cert70 : PairCertificate (Fin 48) := .first .size
theorem checked70 : checkPair O U s130 s0 5 cert70 = true := by
  decide +kernel
def cert71 : PairCertificate (Fin 48) := .split 22 cert69 cert70
theorem checked71 : checkPair O U s128 s0 5 cert71 = true := by
  apply checkPair_split_literal O U s128 s0 s130 s131 s130 22 4 cert69 cert70
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked69
  · exact checked70
def cert72 : PairCertificate (Fin 48) := .split 12 cert67 cert71
theorem checked72 : checkPair O U s127 s0 5 cert72 = true := by
  apply checkPair_split_literal O U s127 s0 s128 s129 s128 12 4 cert67 cert71
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked67
  · exact checked71
def cert73 : PairCertificate (Fin 48) := .split 47 cert65 cert72
theorem checked73 : checkPair O U s124 s0 5 cert73 = true := by
  apply checkPair_split_literal O U s124 s0 s125 s126 s127 47 4 cert65 cert72
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked65
  · exact checked72
def cert74 : PairCertificate (Fin 48) := .split 43 cert64 cert73
theorem checked74 : checkPair O U s121 s0 5 cert74 = true := by
  apply checkPair_split_literal O U s121 s0 s122 s123 s124 43 4 cert64 cert73
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked64
  · exact checked73
def cert75 : PairCertificate (Fin 48) := .split 35 cert63 cert74
theorem checked75 : checkPair O U s118 s0 5 cert75 = true := by
  apply checkPair_split_literal O U s118 s0 s119 s120 s121 35 4 cert63 cert74
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked63
  · exact checked74
def cert76 : PairCertificate (Fin 48) := .split 10 cert61 cert75
theorem checked76 : checkPair O U s115 s0 5 cert76 = true := by
  apply checkPair_split_literal O U s115 s0 s116 s117 s118 10 4 cert61 cert75
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked61
  · exact checked75
def cert77 : PairCertificate (Fin 48) := .split 8 cert59 cert76
theorem checked77 : checkPair O U s112 s0 5 cert77 = true := by
  apply checkPair_split_literal O U s112 s0 s113 s114 s115 8 4 cert59 cert76
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked59
  · exact checked76
def cert78 : PairCertificate (Fin 48) := .split 2 cert57 cert77
theorem checked78 : checkPair O U s109 s0 5 cert78 = true := by
  apply checkPair_split_literal O U s109 s0 s110 s111 s112 2 4 cert57 cert77
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked57
  · exact checked77
def cert79 : PairCertificate (Fin 48) := .split 44 cert55 cert78
theorem checked79 : checkPair O U s106 s0 5 cert79 = true := by
  apply checkPair_split_literal O U s106 s0 s107 s108 s109 44 4 cert55 cert78
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked55
  · exact checked78
def cert80 : PairCertificate (Fin 48) := .split 38 cert54 cert79
theorem checked80 : checkPair O U s103 s0 5 cert80 = true := by
  apply checkPair_split_literal O U s103 s0 s104 s105 s106 38 4 cert54 cert79
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked54
  · exact checked79
def cert81 : PairCertificate (Fin 48) := .split 23 cert53 cert80
theorem checked81 : checkPair O U s100 s0 5 cert81 = true := by
  apply checkPair_split_literal O U s100 s0 s101 s102 s103 23 4 cert53 cert80
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked53
  · exact checked80
def cert82 : PairCertificate (Fin 48) := .split 21 cert52 cert81
theorem checked82 : checkPair O U s97 s0 5 cert82 = true := by
  apply checkPair_split_literal O U s97 s0 s98 s99 s100 21 4 cert52 cert81
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked52
  · exact checked81
def cert83 : PairCertificate (Fin 48) := .split 15 cert51 cert82
theorem checked83 : checkPair O U s94 s0 5 cert83 = true := by
  apply checkPair_split_literal O U s94 s0 s95 s96 s97 15 4 cert51 cert82
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked51
  · exact checked82
def cert84 : PairCertificate (Fin 48) := .split 37 cert49 cert83
theorem checked84 : checkPair O U s91 s0 5 cert84 = true := by
  apply checkPair_split_literal O U s91 s0 s92 s93 s94 37 4 cert49 cert83
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked49
  · exact checked83
def cert85 : PairCertificate (Fin 48) := .split 34 cert48 cert84
theorem checked85 : checkPair O U s88 s0 5 cert85 = true := by
  apply checkPair_split_literal O U s88 s0 s89 s90 s91 34 4 cert48 cert84
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked48
  · exact checked84
def cert86 : PairCertificate (Fin 48) := .split 20 cert47 cert85
theorem checked86 : checkPair O U s85 s0 5 cert86 = true := by
  apply checkPair_split_literal O U s85 s0 s86 s87 s88 20 4 cert47 cert85
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked47
  · exact checked85
def cert87 : PairCertificate (Fin 48) := .split 11 cert46 cert86
theorem checked87 : checkPair O U s82 s0 5 cert87 = true := by
  apply checkPair_split_literal O U s82 s0 s83 s84 s85 11 4 cert46 cert86
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked46
  · exact checked86
def cert88 : PairCertificate (Fin 48) := .split 7 cert45 cert87
theorem checked88 : checkPair O U s79 s0 5 cert88 = true := by
  apply checkPair_split_literal O U s79 s0 s80 s81 s82 7 4 cert45 cert87
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked45
  · exact checked87
def cert89 : PairCertificate (Fin 48) := .split 39 cert43 cert88
theorem checked89 : checkPair O U s76 s0 5 cert89 = true := by
  apply checkPair_split_literal O U s76 s0 s77 s78 s79 39 4 cert43 cert88
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked43
  · exact checked88
def cert90 : PairCertificate (Fin 48) := .split 25 cert42 cert89
theorem checked90 : checkPair O U s73 s0 5 cert90 = true := by
  apply checkPair_split_literal O U s73 s0 s74 s75 s76 25 4 cert42 cert89
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked42
  · exact checked89
def cert91 : PairCertificate (Fin 48) := .split 19 cert41 cert90
theorem checked91 : checkPair O U s70 s0 5 cert91 = true := by
  apply checkPair_split_literal O U s70 s0 s71 s72 s73 19 4 cert41 cert90
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked41
  · exact checked90
def cert92 : PairCertificate (Fin 48) := .split 17 cert40 cert91
theorem checked92 : checkPair O U s67 s0 5 cert92 = true := by
  apply checkPair_split_literal O U s67 s0 s68 s69 s70 17 4 cert40 cert91
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked40
  · exact checked91
def cert93 : PairCertificate (Fin 48) := .split 3 cert39 cert92
theorem checked93 : checkPair O U s64 s0 5 cert93 = true := by
  apply checkPair_split_literal O U s64 s0 s65 s66 s67 3 4 cert39 cert92
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked39
  · exact checked92
def cert94 : PairCertificate (Fin 48) := .split 36 cert37 cert93
theorem checked94 : checkPair O U s61 s0 5 cert94 = true := by
  apply checkPair_split_literal O U s61 s0 s62 s63 s64 36 4 cert37 cert93
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked37
  · exact checked93
def cert95 : PairCertificate (Fin 48) := .split 4 cert35 cert94
theorem checked95 : checkPair O U s58 s0 5 cert95 = true := by
  apply checkPair_split_literal O U s58 s0 s59 s60 s61 4 4 cert35 cert94
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked35
  · exact checked94

#print axioms checked64
#print axioms checked65
#print axioms checked66
#print axioms checked67
#print axioms checked68
#print axioms checked69
#print axioms checked70
#print axioms checked71
#print axioms checked72
#print axioms checked73
#print axioms checked74
#print axioms checked75
#print axioms checked76
#print axioms checked77
#print axioms checked78
#print axioms checked79
#print axioms checked80
#print axioms checked81
#print axioms checked82
#print axioms checked83
#print axioms checked84
#print axioms checked85
#print axioms checked86
#print axioms checked87
#print axioms checked88
#print axioms checked89
#print axioms checked90
#print axioms checked91
#print axioms checked92
#print axioms checked93
#print axioms checked94
#print axioms checked95
end FourierPilot


/- Preserved declarations from candidate module FourierPilotNodes000096. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def cert96 : PairCertificate (Fin 48) := .split 1 cert33 cert95
theorem checked96 : checkPair O U s55 s0 5 cert96 = true := by
  apply checkPair_split_literal O U s55 s0 s56 s57 s58 1 4 cert33 cert95
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked33
  · exact checked95
def cert97 : PairCertificate (Fin 48) := .split 46 cert31 cert96
theorem checked97 : checkPair O U s52 s0 5 cert97 = true := by
  apply checkPair_split_literal O U s52 s0 s53 s54 s55 46 4 cert31 cert96
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked31
  · exact checked96
def cert98 : PairCertificate (Fin 48) := .split 28 cert30 cert97
theorem checked98 : checkPair O U s49 s0 5 cert98 = true := by
  apply checkPair_split_literal O U s49 s0 s50 s51 s52 28 4 cert30 cert97
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked30
  · exact checked97
def cert99 : PairCertificate (Fin 48) := .split 26 cert29 cert98
theorem checked99 : checkPair O U s46 s0 5 cert99 = true := by
  apply checkPair_split_literal O U s46 s0 s47 s48 s49 26 4 cert29 cert98
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked29
  · exact checked98
def cert100 : PairCertificate (Fin 48) := .split 9 cert28 cert99
theorem checked100 : checkPair O U s43 s0 5 cert100 = true := by
  apply checkPair_split_literal O U s43 s0 s44 s45 s46 9 4 cert28 cert99
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked28
  · exact checked99
def cert101 : PairCertificate (Fin 48) := .split 5 cert27 cert100
theorem checked101 : checkPair O U s40 s0 5 cert101 = true := by
  apply checkPair_split_literal O U s40 s0 s41 s42 s43 5 4 cert27 cert100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked27
  · exact checked100
def cert102 : PairCertificate (Fin 48) := .split 0 cert25 cert101
theorem checked102 : checkPair O U s37 s0 5 cert102 = true := by
  apply checkPair_split_literal O U s37 s0 s38 s39 s40 0 4 cert25 cert101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked25
  · exact checked101
def cert103 : PairCertificate (Fin 48) := .split 41 cert23 cert102
theorem checked103 : checkPair O U s34 s0 5 cert103 = true := by
  apply checkPair_split_literal O U s34 s0 s35 s36 s37 41 4 cert23 cert102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked23
  · exact checked102
def cert104 : PairCertificate (Fin 48) := .split 30 cert21 cert103
theorem checked104 : checkPair O U s31 s0 5 cert104 = true := by
  apply checkPair_split_literal O U s31 s0 s32 s33 s34 30 4 cert21 cert103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked21
  · exact checked103
def cert105 : PairCertificate (Fin 48) := .split 24 cert19 cert104
theorem checked105 : checkPair O U s28 s0 5 cert105 = true := by
  apply checkPair_split_literal O U s28 s0 s29 s30 s31 24 4 cert19 cert104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked19
  · exact checked104
def cert106 : PairCertificate (Fin 48) := .split 18 cert17 cert105
theorem checked106 : checkPair O U s25 s0 5 cert106 = true := by
  apply checkPair_split_literal O U s25 s0 s26 s27 s28 18 4 cert17 cert105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked17
  · exact checked105
def cert107 : PairCertificate (Fin 48) := .split 14 cert15 cert106
theorem checked107 : checkPair O U s22 s0 5 cert107 = true := by
  apply checkPair_split_literal O U s22 s0 s23 s24 s25 14 4 cert15 cert106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked15
  · exact checked106
def cert108 : PairCertificate (Fin 48) := .split 13 cert13 cert107
theorem checked108 : checkPair O U s19 s0 5 cert108 = true := by
  apply checkPair_split_literal O U s19 s0 s20 s21 s22 13 4 cert13 cert107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked13
  · exact checked107
def cert109 : PairCertificate (Fin 48) := .split 42 cert11 cert108
theorem checked109 : checkPair O U s16 s0 5 cert109 = true := by
  apply checkPair_split_literal O U s16 s0 s17 s18 s19 42 4 cert11 cert108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked11
  · exact checked108
def cert110 : PairCertificate (Fin 48) := .split 32 cert9 cert109
theorem checked110 : checkPair O U s13 s0 5 cert110 = true := by
  apply checkPair_split_literal O U s13 s0 s14 s15 s16 32 4 cert9 cert109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked9
  · exact checked109
def cert111 : PairCertificate (Fin 48) := .split 29 cert7 cert110
theorem checked111 : checkPair O U s10 s0 5 cert111 = true := by
  apply checkPair_split_literal O U s10 s0 s11 s12 s13 29 4 cert7 cert110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked7
  · exact checked110
def cert112 : PairCertificate (Fin 48) := .split 27 cert5 cert111
theorem checked112 : checkPair O U s7 s0 5 cert112 = true := by
  apply checkPair_split_literal O U s7 s0 s8 s9 s10 27 4 cert5 cert111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked5
  · exact checked111
def cert113 : PairCertificate (Fin 48) := .split 16 cert3 cert112
theorem checked113 : checkPair O U s4 s0 5 cert113 = true := by
  apply checkPair_split_literal O U s4 s0 s5 s6 s7 16 4 cert3 cert112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked3
  · exact checked112
def cert114 : PairCertificate (Fin 48) := .split 6 cert1 cert113
theorem checked114 : checkPair O U s0 s0 5 cert114 = true := by
  apply checkPair_split_literal O U s0 s0 s1 s2 s4 6 4 cert1 cert113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1
  · exact checked113

#print axioms checked96
#print axioms checked97
#print axioms checked98
#print axioms checked99
#print axioms checked100
#print axioms checked101
#print axioms checked102
#print axioms checked103
#print axioms checked104
#print axioms checked105
#print axioms checked106
#print axioms checked107
#print axioms checked108
#print axioms checked109
#print axioms checked110
#print axioms checked111
#print axioms checked112
#print axioms checked113
#print axioms checked114
end FourierPilot


/- Preserved declarations from candidate module FourierPilotChecks. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def pairCert : PairCertificate (Fin 48) := cert114
theorem root_candidates : s0 = Finset.univ := by decide +kernel
theorem pair_refutation_checks :
    checkPair O U Finset.univ Finset.univ 5 pairCert = true := by
  change checkPair O U Finset.univ Finset.univ 5 cert114 = true
  simpa only [root_candidates] using checked114
theorem no_two_five_cliques : ¬ HasPair O U Finset.univ Finset.univ 5 :=
  checkPair_sound O U Finset.univ Finset.univ 5 pairCert pair_refutation_checks

#print axioms root_candidates
#print axioms pair_refutation_checks
#print axioms no_two_five_cliques
end FourierPilot


/- Preserved declarations from candidate module FourierPilotBinding. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem all_orth_rows : ∀ i j : Fin 48,
    i = j ∨ O i j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes i) (zBoxes j) = false := by
  intro i j
  fin_cases i
  · exact orth_row_0 j
  · exact orth_row_1 j
  · exact orth_row_2 j
  · exact orth_row_3 j
  · exact orth_row_4 j
  · exact orth_row_5 j
  · exact orth_row_6 j
  · exact orth_row_7 j
  · exact orth_row_8 j
  · exact orth_row_9 j
  · exact orth_row_10 j
  · exact orth_row_11 j
  · exact orth_row_12 j
  · exact orth_row_13 j
  · exact orth_row_14 j
  · exact orth_row_15 j
  · exact orth_row_16 j
  · exact orth_row_17 j
  · exact orth_row_18 j
  · exact orth_row_19 j
  · exact orth_row_20 j
  · exact orth_row_21 j
  · exact orth_row_22 j
  · exact orth_row_23 j
  · exact orth_row_24 j
  · exact orth_row_25 j
  · exact orth_row_26 j
  · exact orth_row_27 j
  · exact orth_row_28 j
  · exact orth_row_29 j
  · exact orth_row_30 j
  · exact orth_row_31 j
  · exact orth_row_32 j
  · exact orth_row_33 j
  · exact orth_row_34 j
  · exact orth_row_35 j
  · exact orth_row_36 j
  · exact orth_row_37 j
  · exact orth_row_38 j
  · exact orth_row_39 j
  · exact orth_row_40 j
  · exact orth_row_41 j
  · exact orth_row_42 j
  · exact orth_row_43 j
  · exact orth_row_44 j
  · exact orth_row_45 j
  · exact orth_row_46 j
  · exact orth_row_47 j
theorem all_unbiased_rows : ∀ i j : Fin 48,
    i = j ∨ U i j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes i) (zBoxes j) = false := by
  intro i j
  fin_cases i
  · exact unbiased_row_0 j
  · exact unbiased_row_1 j
  · exact unbiased_row_2 j
  · exact unbiased_row_3 j
  · exact unbiased_row_4 j
  · exact unbiased_row_5 j
  · exact unbiased_row_6 j
  · exact unbiased_row_7 j
  · exact unbiased_row_8 j
  · exact unbiased_row_9 j
  · exact unbiased_row_10 j
  · exact unbiased_row_11 j
  · exact unbiased_row_12 j
  · exact unbiased_row_13 j
  · exact unbiased_row_14 j
  · exact unbiased_row_15 j
  · exact unbiased_row_16 j
  · exact unbiased_row_17 j
  · exact unbiased_row_18 j
  · exact unbiased_row_19 j
  · exact unbiased_row_20 j
  · exact unbiased_row_21 j
  · exact unbiased_row_22 j
  · exact unbiased_row_23 j
  · exact unbiased_row_24 j
  · exact unbiased_row_25 j
  · exact unbiased_row_26 j
  · exact unbiased_row_27 j
  · exact unbiased_row_28 j
  · exact unbiased_row_29 j
  · exact unbiased_row_30 j
  · exact unbiased_row_31 j
  · exact unbiased_row_32 j
  · exact unbiased_row_33 j
  · exact unbiased_row_34 j
  · exact unbiased_row_35 j
  · exact unbiased_row_36 j
  · exact unbiased_row_37 j
  · exact unbiased_row_38 j
  · exact unbiased_row_39 j
  · exact unbiased_row_40 j
  · exact unbiased_row_41 j
  · exact unbiased_row_42 j
  · exact unbiased_row_43 j
  · exact unbiased_row_44 j
  · exact unbiased_row_45 j
  · exact unbiased_row_46 j
  · exact unbiased_row_47 j
def allSmallBoxCheck : Bool := decide (∀ v : Fin 48,
  IntervalKernel.smallBoxCheck (boxes v) = true)
theorem all_small_box_check : allSmallBoxCheck = true := by decide +kernel
theorem all_boxes_small : ∀ v : Fin 48,
    IntervalKernel.smallBoxCheck (boxes v) = true :=
  of_decide_eq_true all_small_box_check
theorem boxes_small : ∀ v : Fin 48, IsSmallRayBox (boxes v) :=
  fun v => IntervalKernel.smallBoxCheck_sound (all_boxes_small v)
theorem sound_stored_graph : SoundRayGraph boxes O U := by
  constructor
  · intro i j z w hzu hwu hz hw ho
    rcases all_orth_rows i j with heq | hedge | hno
    · subst j
      exact False.elim ((same_ray_box_separation hzu hwu (boxes_small i) hz hw).1 ho)
    · exact hedge
    · have hyes := IntegerIntervals.orthPossible_sound (S := scale) (by decide) hz hw ho
      rw [hno] at hyes
      cases hyes
  · intro i j z w hzu hwu hz hw ho
    rcases all_unbiased_rows i j with heq | hedge | hno
    · subst j
      exact False.elim ((same_ray_box_separation hzu hwu (boxes_small i) hz hw).2 ho)
    · exact hedge
    · have hyes := IntegerIntervals.unbiasedPossible_sound (S := scale) (by decide) hz hw ho
      rw [hno] at hyes
      cases hyes
theorem no_raw_five_pair_of_cover {H : BasisMatrix}
    (hcover : CompleteRayCover H boxes) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  checked_pair_excludes_raw_five_pair hcover boxes_small sound_stored_graph
    pairCert pair_refutation_checks
theorem no_raw_five_pair_of_uniform_cover
    (hcover : CompleteUniformRayCover carrier boxes) {H : BasisMatrix}
    (hH : PhaseHadamard H) (hE : CarrierBox carrier H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  no_raw_five_pair_of_cover (hcover H hH hE)
theorem standard_first_row :
    Mub6.Classification.KarlssonLedger.StandardFirstRow carrier := by
  unfold Mub6.Classification.KarlssonLedger.StandardFirstRow
  decide +kernel
theorem exclude_of_cover (hcover : CompleteUniformRayCover carrier boxes) :
    Mub6.Classification.KarlssonLedger.CarrierExcluded carrier :=
  Mub6.Classification.KarlssonLedger.Integrated.semantic_carrier_excludes
    hcover boxes_small sound_stored_graph pairCert pair_refutation_checks standard_first_row

#print axioms all_orth_rows
#print axioms all_unbiased_rows
#print axioms all_small_box_check
#print axioms all_boxes_small
#print axioms boxes_small
#print axioms sound_stored_graph
#print axioms no_raw_five_pair_of_cover
#print axioms no_raw_five_pair_of_uniform_cover
#print axioms standard_first_row
#print axioms exclude_of_cover
end FourierPilot

#print axioms FourierPilot.checked64
#print axioms FourierPilot.checked65
#print axioms FourierPilot.checked66
#print axioms FourierPilot.checked67
#print axioms FourierPilot.checked68
#print axioms FourierPilot.checked69
#print axioms FourierPilot.checked70
#print axioms FourierPilot.checked71
#print axioms FourierPilot.checked72
#print axioms FourierPilot.checked73
#print axioms FourierPilot.checked74
#print axioms FourierPilot.checked75
#print axioms FourierPilot.checked76
#print axioms FourierPilot.checked77
#print axioms FourierPilot.checked78
#print axioms FourierPilot.checked79
#print axioms FourierPilot.checked80
#print axioms FourierPilot.checked81
#print axioms FourierPilot.checked82
#print axioms FourierPilot.checked83
#print axioms FourierPilot.checked84
#print axioms FourierPilot.checked85
#print axioms FourierPilot.checked86
#print axioms FourierPilot.checked87
#print axioms FourierPilot.checked88
#print axioms FourierPilot.checked89
#print axioms FourierPilot.checked90
#print axioms FourierPilot.checked91
#print axioms FourierPilot.checked92
#print axioms FourierPilot.checked93
#print axioms FourierPilot.checked94
#print axioms FourierPilot.checked95
#print axioms FourierPilot.checked96
#print axioms FourierPilot.checked97
#print axioms FourierPilot.checked98
#print axioms FourierPilot.checked99
#print axioms FourierPilot.checked100
#print axioms FourierPilot.checked101
#print axioms FourierPilot.checked102
#print axioms FourierPilot.checked103
#print axioms FourierPilot.checked104
#print axioms FourierPilot.checked105
#print axioms FourierPilot.checked106
#print axioms FourierPilot.checked107
#print axioms FourierPilot.checked108
#print axioms FourierPilot.checked109
#print axioms FourierPilot.checked110
#print axioms FourierPilot.checked111
#print axioms FourierPilot.checked112
#print axioms FourierPilot.checked113
#print axioms FourierPilot.checked114
#print axioms FourierPilot.root_candidates
#print axioms FourierPilot.pair_refutation_checks
#print axioms FourierPilot.no_two_five_cliques
#print axioms FourierPilot.all_orth_rows
#print axioms FourierPilot.all_unbiased_rows
#print axioms FourierPilot.all_small_box_check
#print axioms FourierPilot.all_boxes_small
#print axioms FourierPilot.boxes_small
#print axioms FourierPilot.sound_stored_graph
#print axioms FourierPilot.no_raw_five_pair_of_cover
#print axioms FourierPilot.no_raw_five_pair_of_uniform_cover
#print axioms FourierPilot.standard_first_row
#print axioms FourierPilot.exclude_of_cover
