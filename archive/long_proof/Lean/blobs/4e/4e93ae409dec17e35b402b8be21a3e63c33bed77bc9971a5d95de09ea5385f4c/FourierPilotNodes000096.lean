import FourierPilotNodes000064
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
