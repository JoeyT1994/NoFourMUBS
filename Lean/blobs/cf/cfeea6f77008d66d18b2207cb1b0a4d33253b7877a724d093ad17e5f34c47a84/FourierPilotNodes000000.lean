import FourierPilotStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def colors0 (v : Fin 48) : Nat := if (8449 : Nat).testBit v.val then 0 else if (70643622346756 : Nat).testBit v.val then 1 else if (17594333528064 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert0 : CliqueCertificate (Fin 48) := (.color 4 colors0)
theorem checked0 : checkClique O s2 5 cert0 = true := by
  decide +kernel
def cert1 : PairCertificate (Fin 48) := .cross cert0
theorem checked1 : checkPair O U s1 s2 4 cert1 = true := by
  change checkClique O s2 5 cert0 = true
  exact checked0
def colors2 (v : Fin 48) : Nat := if (35184388866050 : Nat).testBit v.val then 0 else if (8860483584 : Nat).testBit v.val then 1 else if (34359738880 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert2 : CliqueCertificate (Fin 48) := (.color 4 colors2)
theorem checked2 : checkClique O s6 5 cert2 = true := by
  decide +kernel
def cert3 : PairCertificate (Fin 48) := .cross cert2
theorem checked3 : checkPair O U s5 s6 4 cert3 = true := by
  change checkClique O s6 5 cert2 = true
  exact checked2
def colors4 (v : Fin 48) : Nat := if (140737488617984 : Nat).testBit v.val then 0 else if (69210368 : Nat).testBit v.val then 1 else if (1100585402368 : Nat).testBit v.val then 2 else 0
def cert4 : CliqueCertificate (Fin 48) := (.color 3 colors4)
theorem checked4 : checkClique O s9 5 cert4 = true := by
  decide +kernel
def cert5 : PairCertificate (Fin 48) := .cross cert4
theorem checked5 : checkPair O U s8 s9 4 cert5 = true := by
  change checkClique O s9 5 cert4 = true
  exact checked4
def colors6 (v : Fin 48) : Nat := if (2207613222912 : Nat).testBit v.val then 0 else if (274965987328 : Nat).testBit v.val then 1 else if (1025 : Nat).testBit v.val then 2 else if (34359738368 : Nat).testBit v.val then 3 else 0
def cert6 : CliqueCertificate (Fin 48) := (.color 4 colors6)
theorem checked6 : checkClique O s12 5 cert6 = true := by
  decide +kernel
def cert7 : PairCertificate (Fin 48) := .cross cert6
theorem checked7 : checkPair O U s11 s12 4 cert7 = true := by
  change checkClique O s12 5 cert6 = true
  exact checked6
def colors8 (v : Fin 48) : Nat := if (17592190255104 : Nat).testBit v.val then 0 else if (105553124656128 : Nat).testBit v.val then 1 else if (10995116277792 : Nat).testBit v.val then 2 else 0
def cert8 : CliqueCertificate (Fin 48) := (.color 3 colors8)
theorem checked8 : checkClique O s15 5 cert8 = true := by
  decide +kernel
def cert9 : PairCertificate (Fin 48) := .cross cert8
theorem checked9 : checkPair O U s14 s15 4 cert9 = true := by
  change checkClique O s15 5 cert8 = true
  exact checked8
def colors10 (v : Fin 48) : Nat := if (1073741860 : Nat).testBit v.val then 0 else if (140737765187584 : Nat).testBit v.val then 1 else if (4098 : Nat).testBit v.val then 2 else if (2147483648 : Nat).testBit v.val then 3 else 0
def cert10 : CliqueCertificate (Fin 48) := (.color 4 colors10)
theorem checked10 : checkClique O s18 5 cert10 = true := by
  decide +kernel
def cert11 : PairCertificate (Fin 48) := .cross cert10
theorem checked11 : checkPair O U s17 s18 4 cert11 = true := by
  change checkClique O s18 5 cert10 = true
  exact checked10
def colors12 (v : Fin 48) : Nat := if (8796093546560 : Nat).testBit v.val then 0 else if (4415226381328 : Nat).testBit v.val then 1 else if (68723671040 : Nat).testBit v.val then 2 else if (35184372088832 : Nat).testBit v.val then 3 else 0
def cert12 : CliqueCertificate (Fin 48) := (.color 4 colors12)
theorem checked12 : checkClique O s21 5 cert12 = true := by
  decide +kernel
def cert13 : PairCertificate (Fin 48) := .cross cert12
theorem checked13 : checkPair O U s20 s21 4 cert13 = true := by
  change checkClique O s21 5 cert12 = true
  exact checked12
def colors14 (v : Fin 48) : Nat := if (4294973440 : Nat).testBit v.val then 0 else if (19327549440 : Nat).testBit v.val then 1 else if (524292 : Nat).testBit v.val then 2 else if (140737488355328 : Nat).testBit v.val then 3 else 0
def cert14 : CliqueCertificate (Fin 48) := (.color 4 colors14)
theorem checked14 : checkClique O s24 5 cert14 = true := by
  decide +kernel
def cert15 : PairCertificate (Fin 48) := .cross cert14
theorem checked15 : checkPair O U s23 s24 4 cert15 = true := by
  change checkClique O s24 5 cert14 = true
  exact checked14
def colors16 (v : Fin 48) : Nat := if (134218760 : Nat).testBit v.val then 0 else if (721554505792 : Nat).testBit v.val then 1 else if (5242880 : Nat).testBit v.val then 2 else if (8589934592 : Nat).testBit v.val then 3 else 0
def cert16 : CliqueCertificate (Fin 48) := (.color 4 colors16)
theorem checked16 : checkClique O s27 5 cert16 = true := by
  decide +kernel
def cert17 : PairCertificate (Fin 48) := .cross cert16
theorem checked17 : checkPair O U s26 s27 4 cert17 = true := by
  change checkClique O s27 5 cert16 = true
  exact checked16
def colors18 (v : Fin 48) : Nat := if (1099512741888 : Nat).testBit v.val then 0 else if (549755818368 : Nat).testBit v.val then 1 else if (140738058780672 : Nat).testBit v.val then 2 else 0
def cert18 : CliqueCertificate (Fin 48) := (.color 3 colors18)
theorem checked18 : checkClique O s30 5 cert18 = true := by
  decide +kernel
def cert19 : PairCertificate (Fin 48) := .cross cert18
theorem checked19 : checkPair O U s29 s30 4 cert19 = true := by
  change checkClique O s30 5 cert18 = true
  exact checked18
def colors20 (v : Fin 48) : Nat := if (4406636445824 : Nat).testBit v.val then 0 else if (35184539863040 : Nat).testBit v.val then 1 else if (34359869440 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert20 : CliqueCertificate (Fin 48) := (.color 4 colors20)
theorem checked20 : checkClique O s33 5 cert20 = true := by
  decide +kernel
def cert21 : PairCertificate (Fin 48) := .cross cert20
theorem checked21 : checkPair O U s32 s33 4 cert21 = true := by
  change checkClique O s33 5 cert20 = true
  exact checked20
def colors22 (v : Fin 48) : Nat := if (536870932 : Nat).testBit v.val then 0 else if (70866960648 : Nat).testBit v.val then 1 else if (1241245548544 : Nat).testBit v.val then 2 else 0
def cert22 : CliqueCertificate (Fin 48) := (.color 3 colors22)
theorem checked22 : checkClique O s36 5 cert22 = true := by
  decide +kernel
def cert23 : PairCertificate (Fin 48) := .cross cert22
theorem checked23 : checkPair O U s35 s36 4 cert23 = true := by
  change checkClique O s36 5 cert22 = true
  exact checked22
def colors24 (v : Fin 48) : Nat := if (137443147778 : Nat).testBit v.val then 0 else if (25778192448 : Nat).testBit v.val then 1 else if (538969088 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert24 : CliqueCertificate (Fin 48) := (.color 4 colors24)
theorem checked24 : checkClique O s39 5 cert24 = true := by
  decide +kernel
def cert25 : PairCertificate (Fin 48) := .cross cert24
theorem checked25 : checkPair O U s38 s39 4 cert25 = true := by
  change checkClique O s39 5 cert24 = true
  exact checked24
def colors26 (v : Fin 48) : Nat := if (35201551990784 : Nat).testBit v.val then 0 else if (4398052802688 : Nat).testBit v.val then 1 else if (313532612608 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert26 : CliqueCertificate (Fin 48) := (.color 4 colors26)
theorem checked26 : checkClique O s42 5 cert26 = true := by
  decide +kernel
def cert27 : PairCertificate (Fin 48) := .cross cert26
theorem checked27 : checkPair O U s41 s42 4 cert27 = true := by
  change checkClique O s42 5 cert26 = true
  exact checked26
def colors28 (v : Fin 48) : Nat := if (67637504 : Nat).testBit v.val then 0 else if (270532608 : Nat).testBit v.val then 1 else if (70385924046848 : Nat).testBit v.val then 2 else 0
def cert28 : PairCertificate (Fin 48) := .first (.color 3 colors28)
theorem checked28 : checkPair O U s44 s45 4 cert28 = true := by
  decide +kernel
def colors29 (v : Fin 48) : Nat := if (8858373120 : Nat).testBit v.val then 0 else if (70368744210432 : Nat).testBit v.val then 1 else if (131072 : Nat).testBit v.val then 2 else 0
def cert29 : PairCertificate (Fin 48) := .first (.color 3 colors29)
theorem checked29 : checkPair O U s47 s48 4 cert29 = true := by
  decide +kernel
def colors30 (v : Fin 48) : Nat := if (105587476004866 : Nat).testBit v.val then 0 else if (16 : Nat).testBit v.val then 1 else if (68719476736 : Nat).testBit v.val then 2 else 0
def cert30 : PairCertificate (Fin 48) := .first (.color 3 colors30)
theorem checked30 : checkPair O U s50 s51 4 cert30 = true := by
  decide +kernel
def colors31 (v : Fin 48) : Nat := if (8796098265088 : Nat).testBit v.val then 0 else if (549755813888 : Nat).testBit v.val then 1 else if (17592186044416 : Nat).testBit v.val then 2 else 0
def cert31 : PairCertificate (Fin 48) := .first (.color 3 colors31)
theorem checked31 : checkPair O U s53 s54 4 cert31 = true := by
  decide +kernel

#print axioms checked0
#print axioms checked1
#print axioms checked2
#print axioms checked3
#print axioms checked4
#print axioms checked5
#print axioms checked6
#print axioms checked7
#print axioms checked8
#print axioms checked9
#print axioms checked10
#print axioms checked11
#print axioms checked12
#print axioms checked13
#print axioms checked14
#print axioms checked15
#print axioms checked16
#print axioms checked17
#print axioms checked18
#print axioms checked19
#print axioms checked20
#print axioms checked21
#print axioms checked22
#print axioms checked23
#print axioms checked24
#print axioms checked25
#print axioms checked26
#print axioms checked27
#print axioms checked28
#print axioms checked29
#print axioms checked30
#print axioms checked31
end FourierPilot
