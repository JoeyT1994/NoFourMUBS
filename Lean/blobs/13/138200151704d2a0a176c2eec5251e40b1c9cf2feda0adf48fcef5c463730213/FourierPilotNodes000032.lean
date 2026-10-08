import FourierPilotNodes000000
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def colors32 (v : Fin 48) : Nat := if (140737488486401 : Nat).testBit v.val then 0 else if (549822988292 : Nat).testBit v.val then 1 else if (74766790692864 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert32 : CliqueCertificate (Fin 48) := (.color 4 colors32)
theorem checked32 : checkClique O s57 5 cert32 = true := by
  decide +kernel
def cert33 : PairCertificate (Fin 48) := .cross cert32
theorem checked33 : checkPair O U s56 s57 4 cert33 = true := by
  change checkClique O s57 5 cert32 = true
  exact checked32
def colors34 (v : Fin 48) : Nat := if (17592190238848 : Nat).testBit v.val then 0 else if (37383396425728 : Nat).testBit v.val then 1 else if (11264 : Nat).testBit v.val then 2 else if (34359738368 : Nat).testBit v.val then 3 else 0
def cert34 : CliqueCertificate (Fin 48) := (.color 4 colors34)
theorem checked34 : checkClique O s60 5 cert34 = true := by
  decide +kernel
def cert35 : PairCertificate (Fin 48) := .cross cert34
theorem checked35 : checkPair O U s59 s60 4 cert35 = true := by
  change checkClique O s60 5 cert34 = true
  exact checked34
def colors36 (v : Fin 48) : Nat := if (70368777733120 : Nat).testBit v.val then 0 else if (11544939200512 : Nat).testBit v.val then 1 else if (4333568 : Nat).testBit v.val then 2 else if (8589934592 : Nat).testBit v.val then 3 else 0
def cert36 : CliqueCertificate (Fin 48) := (.color 4 colors36)
theorem checked36 : checkClique O s63 5 cert36 = true := by
  decide +kernel
def cert37 : PairCertificate (Fin 48) := .cross cert36
theorem checked37 : checkPair O U s62 s63 4 cert37 = true := by
  change checkClique O s63 5 cert36 = true
  exact checked36
def colors38 (v : Fin 48) : Nat := if (1374389536768 : Nat).testBit v.val then 0 else if (2149843072 : Nat).testBit v.val then 1 else if (2216203124992 : Nat).testBit v.val then 2 else if (140737488355328 : Nat).testBit v.val then 3 else 0
def cert38 : CliqueCertificate (Fin 48) := (.color 4 colors38)
theorem checked38 : checkClique O s66 5 cert38 = true := by
  decide +kernel
def cert39 : PairCertificate (Fin 48) := .cross cert38
theorem checked39 : checkPair O U s65 s66 4 cert39 = true := by
  change checkClique O s66 5 cert38 = true
  exact checked38
def colors40 (v : Fin 48) : Nat := if (530436 : Nat).testBit v.val then 0 else if (33587200 : Nat).testBit v.val then 1 else if (549755813888 : Nat).testBit v.val then 2 else 0
def cert40 : PairCertificate (Fin 48) := .first (.color 3 colors40)
theorem checked40 : checkPair O U s68 s69 4 cert40 = true := by
  decide +kernel
def colors41 (v : Fin 48) : Nat := if (35184407741440 : Nat).testBit v.val then 0 else if (566935683072 : Nat).testBit v.val then 1 else 0
def cert41 : PairCertificate (Fin 48) := .first (.color 2 colors41)
theorem checked41 : checkPair O U s71 s72 4 cert41 = true := by
  decide +kernel
def colors42 (v : Fin 48) : Nat := if (9354438770816 : Nat).testBit v.val then 0 else if (274877906944 : Nat).testBit v.val then 1 else 0
def cert42 : PairCertificate (Fin 48) := .first (.color 2 colors42)
theorem checked42 : checkPair O U s74 s75 4 cert42 = true := by
  decide +kernel
def colors43 (v : Fin 48) : Nat := if (141837001031680 : Nat).testBit v.val then 0 else if (17592186044416 : Nat).testBit v.val then 1 else 0
def cert43 : PairCertificate (Fin 48) := .first (.color 2 colors43)
theorem checked43 : checkPair O U s77 s78 4 cert43 = true := by
  decide +kernel
def colors44 (v : Fin 48) : Nat := if (140737488355856 : Nat).testBit v.val then 0 else if (1074266400 : Nat).testBit v.val then 1 else if (16781320 : Nat).testBit v.val then 2 else if (2147483648 : Nat).testBit v.val then 3 else 0
def cert44 : CliqueCertificate (Fin 48) := (.color 4 colors44)
theorem checked44 : checkClique O s81 5 cert44 = true := by
  decide +kernel
def cert45 : PairCertificate (Fin 48) := .cross cert44
theorem checked45 : checkPair O U s80 s81 4 cert45 = true := by
  change checkClique O s81 5 cert44 = true
  exact checked44
def colors46 (v : Fin 48) : Nat := if (140739636920320 : Nat).testBit v.val then 0 else if (17179869184 : Nat).testBit v.val then 1 else if (137438953472 : Nat).testBit v.val then 2 else 0
def cert46 : PairCertificate (Fin 48) := .first (.color 3 colors46)
theorem checked46 : checkPair O U s83 s84 4 cert46 = true := by
  decide +kernel
def colors47 (v : Fin 48) : Nat := if (17609365917952 : Nat).testBit v.val then 0 else if (137438953472 : Nat).testBit v.val then 1 else 0
def cert47 : PairCertificate (Fin 48) := .first (.color 2 colors47)
theorem checked47 : checkPair O U s86 s87 4 cert47 = true := by
  decide +kernel
def colors48 (v : Fin 48) : Nat := if (8933538267136 : Nat).testBit v.val then 0 else 0
def cert48 : PairCertificate (Fin 48) := .first (.color 1 colors48)
theorem checked48 : checkPair O U s89 s90 4 cert48 = true := by
  decide +kernel
def cert49 : PairCertificate (Fin 48) := .first .size
theorem checked49 : checkPair O U s92 s93 4 cert49 = true := by
  decide +kernel
def colors50 (v : Fin 48) : Nat := if (549755814176 : Nat).testBit v.val then 0 else if (211106769403920 : Nat).testBit v.val then 1 else if (2550136832 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert50 : CliqueCertificate (Fin 48) := (.color 4 colors50)
theorem checked50 : checkClique O s96 5 cert50 = true := by
  decide +kernel
def cert51 : PairCertificate (Fin 48) := .cross cert50
theorem checked51 : checkPair O U s95 s96 4 cert51 = true := by
  change checkClique O s96 5 cert50 = true
  exact checked50
def colors52 (v : Fin 48) : Nat := if (141837008371712 : Nat).testBit v.val then 0 else if (274877906944 : Nat).testBit v.val then 1 else if (17592186044416 : Nat).testBit v.val then 2 else 0
def cert52 : PairCertificate (Fin 48) := .first (.color 3 colors52)
theorem checked52 : checkPair O U s98 s99 4 cert52 = true := by
  decide +kernel
def colors53 (v : Fin 48) : Nat := if (274877911044 : Nat).testBit v.val then 0 else if (17592186044416 : Nat).testBit v.val then 1 else 0
def cert53 : PairCertificate (Fin 48) := .first (.color 2 colors53)
theorem checked53 : checkPair O U s101 s102 4 cert53 = true := by
  decide +kernel
def cert54 : PairCertificate (Fin 48) := .first .size
theorem checked54 : checkPair O U s104 s105 4 cert54 = true := by
  decide +kernel
def cert55 : PairCertificate (Fin 48) := .first .size
theorem checked55 : checkPair O U s107 s108 4 cert55 = true := by
  decide +kernel
def colors56 (v : Fin 48) : Nat := if (67649538 : Nat).testBit v.val then 0 else if (17609399468096 : Nat).testBit v.val then 1 else if (77103252897792 : Nat).testBit v.val then 2 else 0
def cert56 : CliqueCertificate (Fin 48) := (.color 3 colors56)
theorem checked56 : checkClique O s111 5 cert56 = true := by
  decide +kernel
def cert57 : PairCertificate (Fin 48) := .cross cert56
theorem checked57 : checkPair O U s110 s111 4 cert57 = true := by
  change checkClique O s111 5 cert56 = true
  exact checked56
def colors58 (v : Fin 48) : Nat := if (16810184 : Nat).testBit v.val then 0 else if (2336664059904 : Nat).testBit v.val then 1 else if (17592454479872 : Nat).testBit v.val then 2 else 0
def cert58 : CliqueCertificate (Fin 48) := (.color 3 colors58)
theorem checked58 : checkClique O s114 5 cert58 = true := by
  decide +kernel
def cert59 : PairCertificate (Fin 48) := .cross cert58
theorem checked59 : checkPair O U s113 s114 4 cert59 = true := by
  change checkClique O s114 5 cert58 = true
  exact checked58
def colors60 (v : Fin 48) : Nat := if (4303364113 : Nat).testBit v.val then 0 else if (275415958016 : Nat).testBit v.val then 1 else if (68719738880 : Nat).testBit v.val then 2 else 0
def cert60 : CliqueCertificate (Fin 48) := (.color 3 colors60)
theorem checked60 : checkClique O s117 5 cert60 = true := by
  decide +kernel
def cert61 : PairCertificate (Fin 48) := .cross cert60
theorem checked61 : checkPair O U s116 s117 4 cert61 = true := by
  change checkClique O s117 5 cert60 = true
  exact checked60
def colors62 (v : Fin 48) : Nat := if (2164784 : Nat).testBit v.val then 0 else if (275416089088 : Nat).testBit v.val then 1 else if (550829555712 : Nat).testBit v.val then 2 else 0
def cert62 : CliqueCertificate (Fin 48) := (.color 3 colors62)
theorem checked62 : checkClique O s120 5 cert62 = true := by
  decide +kernel
def cert63 : PairCertificate (Fin 48) := .cross cert62
theorem checked63 : checkPair O U s119 s120 4 cert63 = true := by
  change checkClique O s120 5 cert62 = true
  exact checked62

#print axioms checked32
#print axioms checked33
#print axioms checked34
#print axioms checked35
#print axioms checked36
#print axioms checked37
#print axioms checked38
#print axioms checked39
#print axioms checked40
#print axioms checked41
#print axioms checked42
#print axioms checked43
#print axioms checked44
#print axioms checked45
#print axioms checked46
#print axioms checked47
#print axioms checked48
#print axioms checked49
#print axioms checked50
#print axioms checked51
#print axioms checked52
#print axioms checked53
#print axioms checked54
#print axioms checked55
#print axioms checked56
#print axioms checked57
#print axioms checked58
#print axioms checked59
#print axioms checked60
#print axioms checked61
#print axioms checked62
#print axioms checked63
end FourierPilot
