import D0GraphStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors0 (v : Fin 120) : Nat := if (83076749736633980511940538704070658 : Nat).testBit v.val then 0 else if (1269043282772434470301312483328 : Nat).testBit v.val then 1 else if (10546852998734608792399234786656256 : Nat).testBit v.val then 2 else 0
def cert0 : PairCertificate (Fin 120) := .first (.color 3 colors0)
theorem checked0 : checkPair O U c1 c2 4 cert0 = true := by
  decide +kernel
#print axioms checked0
def cert1 : PairCertificate (Fin 120) := .first .size
theorem checked1 : checkPair O U c6 c7 3 cert1 = true := by
  decide +kernel
#print axioms checked1
def colors2 (v : Fin 120) : Nat := if (649037107316853453566331368505344 : Nat).testBit v.val then 0 else if (324518553658427879704660627423232 : Nat).testBit v.val then 1 else 0
def cert2 : PairCertificate (Fin 120) := .first (.color 2 colors2)
theorem checked2 : checkPair O U c9 c10 3 cert2 = true := by
  decide +kernel
#print axioms checked2
def colors3 (v : Fin 120) : Nat := if (2475880097017511292585902080 : Nat).testBit v.val then 0 else if (973555661579744243078304435798016 : Nat).testBit v.val then 1 else if (2596782254567527928965996516212736 : Nat).testBit v.val then 2 else 0
def cert3 : PairCertificate (Fin 120) := .first (.color 3 colors3)
theorem checked3 : checkPair O U c11 c5 4 cert3 = true := by
  decide +kernel
#print axioms checked3
def cert4 : PairCertificate (Fin 120) := .split 13 cert2 cert3
theorem checked4 : checkPair O U c8 c5 4 cert4 = true := by
  apply checkPair_split_literal O U c8 c5 c9 c10 c11 13 3 cert2 cert3
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked2
  · exact checked3
#print axioms checked4
def cert5 : PairCertificate (Fin 120) := .split 8 cert1 cert4
theorem checked5 : checkPair O U c4 c5 4 cert5 = true := by
  apply checkPair_split_literal O U c4 c5 c6 c7 c8 8 3 cert1 cert4
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1
  · exact checked4
#print axioms checked5
def colors6 (v : Fin 120) : Nat := if (324518553663444385289150530617864 : Nat).testBit v.val then 0 else if (5090410650467303305100272861184 : Nat).testBit v.val then 1 else if (334903147452867634497805080229576704 : Nat).testBit v.val then 2 else 0
def cert6 : PairCertificate (Fin 120) := .first (.color 3 colors6)
theorem checked6 : checkPair O U c13 c14 4 cert6 = true := by
  decide +kernel
#print axioms checked6
def cert7 : PairCertificate (Fin 120) := .first .size
theorem checked7 : checkPair O U c6 c18 3 cert7 = true := by
  decide +kernel
#print axioms checked7
def colors8 (v : Fin 120) : Nat := if (664613997892457936452185005116882944 : Nat).testBit v.val then 0 else if (147573952589676412928 : Nat).testBit v.val then 1 else 0
def cert8 : PairCertificate (Fin 120) := .first (.color 2 colors8)
theorem checked8 : checkPair O U c20 c21 3 cert8 = true := by
  decide +kernel
#print axioms checked8
def cert9 : PairCertificate (Fin 120) := .first .size
theorem checked9 : checkPair O U c23 c24 3 cert9 = true := by
  decide +kernel
#print axioms checked9
def cert10 : PairCertificate (Fin 120) := .first .size
theorem checked10 : checkPair O U c6 c26 3 cert10 = true := by
  decide +kernel
#print axioms checked10
def cert11 : PairCertificate (Fin 120) := .first .size
theorem checked11 : checkPair O U c28 c29 3 cert11 = true := by
  decide +kernel
#print axioms checked11
def colors12 (v : Fin 120) : Nat := if (5193564509155126492314377234939904 : Nat).testBit v.val then 0 else if (147578456189303783424 : Nat).testBit v.val then 1 else if (830767536979653677697048209447190528 : Nat).testBit v.val then 2 else 0
def cert12 : PairCertificate (Fin 120) := .first (.color 3 colors12)
theorem checked12 : checkPair O U c30 c17 4 cert12 = true := by
  decide +kernel
#print axioms checked12
def cert13 : PairCertificate (Fin 120) := .split 40 cert11 cert12
theorem checked13 : checkPair O U c27 c17 4 cert13 = true := by
  apply checkPair_split_literal O U c27 c17 c28 c29 c30 40 3 cert11 cert12
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked11
  · exact checked12
#print axioms checked13
def cert14 : PairCertificate (Fin 120) := .split 38 cert10 cert13
theorem checked14 : checkPair O U c25 c17 4 cert14 = true := by
  apply checkPair_split_literal O U c25 c17 c6 c26 c27 38 3 cert10 cert13
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked10
  · exact checked13
#print axioms checked14
def cert15 : PairCertificate (Fin 120) := .split 37 cert9 cert14
theorem checked15 : checkPair O U c22 c17 4 cert15 = true := by
  apply checkPair_split_literal O U c22 c17 c23 c24 c25 37 3 cert9 cert14
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked9
  · exact checked14
#print axioms checked15
def cert16 : PairCertificate (Fin 120) := .split 20 cert8 cert15
theorem checked16 : checkPair O U c19 c17 4 cert16 = true := by
  apply checkPair_split_literal O U c19 c17 c20 c21 c22 20 3 cert8 cert15
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked8
  · exact checked15
#print axioms checked16
def cert17 : PairCertificate (Fin 120) := .split 14 cert7 cert16
theorem checked17 : checkPair O U c16 c17 4 cert17 = true := by
  apply checkPair_split_literal O U c16 c17 c6 c18 c19 14 3 cert7 cert16
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked7
  · exact checked16
#print axioms checked17
def cert18 : PairCertificate (Fin 120) := .first .size
theorem checked18 : checkPair O U c6 c34 3 cert18 = true := by
  decide +kernel
#print axioms checked18
def cert19 : PairCertificate (Fin 120) := .first .size
theorem checked19 : checkPair O U c6 c36 3 cert19 = true := by
  decide +kernel
#print axioms checked19
def colors20 (v : Fin 120) : Nat := if (162259276829213363391616664993792 : Nat).testBit v.val then 0 else if (20282409603651706452744270249984 : Nat).testBit v.val then 1 else 0
def cert20 : PairCertificate (Fin 120) := .first (.color 2 colors20)
theorem checked20 : checkPair O U c38 c39 3 cert20 = true := by
  decide +kernel
#print axioms checked20
def colors21 (v : Fin 120) : Nat := if (19807040665459579705653985280 : Nat).testBit v.val then 0 else if (182541686583980797296185287114752 : Nat).testBit v.val then 1 else if (43100120407759799650887908982784 : Nat).testBit v.val then 2 else 0
def cert21 : PairCertificate (Fin 120) := .first (.color 3 colors21)
theorem checked21 : checkPair O U c40 c33 4 cert21 = true := by
  decide +kernel
#print axioms checked21
def cert22 : PairCertificate (Fin 120) := .split 12 cert20 cert21
theorem checked22 : checkPair O U c37 c33 4 cert22 = true := by
  apply checkPair_split_literal O U c37 c33 c38 c39 c40 12 3 cert20 cert21
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked20
  · exact checked21
#print axioms checked22
def cert23 : PairCertificate (Fin 120) := .split 9 cert19 cert22
theorem checked23 : checkPair O U c35 c33 4 cert23 = true := by
  apply checkPair_split_literal O U c35 c33 c6 c36 c37 9 3 cert19 cert22
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked19
  · exact checked22
#print axioms checked23
def cert24 : PairCertificate (Fin 120) := .split 7 cert18 cert23
theorem checked24 : checkPair O U c32 c33 4 cert24 = true := by
  apply checkPair_split_literal O U c32 c33 c6 c34 c35 7 3 cert18 cert23
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked18
  · exact checked23
#print axioms checked24
def colors25 (v : Fin 120) : Nat := if (20282409641504677498043376877888 : Nat).testBit v.val then 0 else if (5073087952398045284154124271616 : Nat).testBit v.val then 1 else if (5232861716427757198172424329232384 : Nat).testBit v.val then 2 else 0
def cert25 : PairCertificate (Fin 120) := .first (.color 3 colors25)
theorem checked25 : checkPair O U c42 c43 4 cert25 = true := by
  decide +kernel
#print axioms checked25
def cert26 : PairCertificate (Fin 120) := .first .size
theorem checked26 : checkPair O U c6 c47 3 cert26 = true := by
  decide +kernel
#print axioms checked26
def colors27 (v : Fin 120) : Nat := if (10384593717069655257201730146795520 : Nat).testBit v.val then 0 else if (590295810358705651712 : Nat).testBit v.val then 1 else 0
def cert27 : PairCertificate (Fin 120) := .first (.color 2 colors27)
theorem checked27 : checkPair O U c49 c50 3 cert27 = true := by
  decide +kernel
#print axioms checked27
def cert28 : PairCertificate (Fin 120) := .first .size
theorem checked28 : checkPair O U c52 c53 3 cert28 = true := by
  decide +kernel
#print axioms checked28
def colors29 (v : Fin 120) : Nat := if (332307078174393843746337154893086720 : Nat).testBit v.val then 0 else if (10035037783297250820096 : Nat).testBit v.val then 1 else if (93461343763111907134894002650742784 : Nat).testBit v.val then 2 else 0
def cert29 : PairCertificate (Fin 120) := .first (.color 3 colors29)
theorem checked29 : checkPair O U c54 c46 4 cert29 = true := by
  decide +kernel
#print axioms checked29
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
