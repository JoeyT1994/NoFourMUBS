import FourierGraphProofBatch0001
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
