import D0GraphStates
import D0GraphNodes013
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert420 : CliqueCertificate (Fin 120) := .size
theorem checked420 : checkClique O c430 4 cert420 = true := by
  decide +kernel
#print axioms checked420
def cert421 : CliqueCertificate (Fin 120) := .size
theorem checked421 : checkClique O c432 4 cert421 = true := by
  decide +kernel
#print axioms checked421
def colors422 (v : Fin 120) : Nat := if (259614847879257117223328528772104192 : Nat).testBit v.val then 0 else if (41620140808251212019873638619545600 : Nat).testBit v.val then 1 else if (664614057630318386889189569071153152 : Nat).testBit v.val then 2 else if (337846632069226330710492358077579264 : Nat).testBit v.val then 3 else 0
def cert422 : CliqueCertificate (Fin 120) := .color 4 colors422
theorem checked422 : checkClique O c433 5 cert422 = true := by
  decide +kernel
#print axioms checked422
def cert423 : CliqueCertificate (Fin 120) := .split 24 cert421 cert422
theorem checked423 : checkClique O c431 5 cert423 = true := by
  apply checkClique_split_literal O c431 c432 c433 24 4 cert421 cert422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked421
  · exact checked422
#print axioms checked423
def cert424 : CliqueCertificate (Fin 120) := .split 20 cert420 cert423
theorem checked424 : checkClique O c429 5 cert424 = true := by
  apply checkClique_split_literal O c429 c430 c431 20 4 cert420 cert423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked420
  · exact checked423
#print axioms checked424
def cert425 : CliqueCertificate (Fin 120) := .split 4 cert419 cert424
theorem checked425 : checkClique O c427 5 cert425 = true := by
  apply checkClique_split_literal O c427 c428 c429 4 4 cert419 cert424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked419
  · exact checked424
#print axioms checked425
def cert426 : CliqueCertificate (Fin 120) := .split 1 cert418 cert425
theorem checked426 : checkClique O c425 5 cert426 = true := by
  apply checkClique_split_literal O c425 c426 c427 1 4 cert418 cert425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked418
  · exact checked425
#print axioms checked426
def cert427 : PairCertificate (Fin 120) := .cross cert426
theorem checked427 : checkPair O U c6 c425 0 cert427 = true := by
  exact checked426
#print axioms checked427
def cert428 : PairCertificate (Fin 120) := .first .size
theorem checked428 : checkPair O U c6 c422 1 cert428 = true := by
  decide +kernel
#print axioms checked428
def cert429 : PairCertificate (Fin 120) := .split 110 cert427 cert428
theorem checked429 : checkPair O U c423 c422 1 cert429 = true := by
  apply checkPair_split_literal O U c423 c422 c6 c425 c6 110 0 cert427 cert428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked427
  · exact checked428
#print axioms checked429
def cert430 : PairCertificate (Fin 120) := .split 102 cert417 cert429
theorem checked430 : checkPair O U c421 c422 1 cert430 = true := by
  apply checkPair_split_literal O U c421 c422 c423 c424 c423 102 0 cert417 cert429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked417
  · exact checked429
#print axioms checked430
def colors431 (v : Fin 120) : Nat := if (83076749736557242056567380982628354 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else if (4835703278458516698824704 : Nat).testBit v.val then 2 else 0
def cert431 : CliqueCertificate (Fin 120) := .color 3 colors431
theorem checked431 : checkClique O c436 4 cert431 = true := by
  decide +kernel
#print axioms checked431
def colors432 (v : Fin 120) : Nat := if (636301180211132209772053397504 : Nat).testBit v.val then 0 else if (324518554262889636590470607929344 : Nat).testBit v.val then 1 else 0
def cert432 : CliqueCertificate (Fin 120) := .color 2 colors432
theorem checked432 : checkClique O c438 4 cert432 = true := by
  decide +kernel
#print axioms checked432
def colors433 (v : Fin 120) : Nat := if (19807191744293540659439075328 : Nat).testBit v.val then 0 else if (22817710804108129226940657696768 : Nat).testBit v.val then 1 else 0
def cert433 : CliqueCertificate (Fin 120) := .color 2 colors433
theorem checked433 : checkClique O c440 4 cert433 = true := by
  decide +kernel
#print axioms checked433
def colors434 (v : Fin 120) : Nat := if (41540929976519715276503399280934912 : Nat).testBit v.val then 0 else 0
def cert434 : CliqueCertificate (Fin 120) := .color 1 colors434
theorem checked434 : checkClique O c442 4 cert434 = true := by
  decide +kernel
#print axioms checked434
def colors435 (v : Fin 120) : Nat := if (420576045541925510044228718946156544 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else 0
def cert435 : CliqueCertificate (Fin 120) := .color 2 colors435
theorem checked435 : checkClique O c444 4 cert435 = true := by
  decide +kernel
#print axioms checked435
def colors436 (v : Fin 120) : Nat := if (83076749741544070862324811285135360 : Nat).testBit v.val then 0 else if (41539031286286702002782501257347072 : Nat).testBit v.val then 1 else if (44568259413486880540487319552 : Nat).testBit v.val then 2 else if (504000131543020835597001469523394560 : Nat).testBit v.val then 3 else 0
def cert436 : CliqueCertificate (Fin 120) := .color 4 colors436
theorem checked436 : checkClique O c445 5 cert436 = true := by
  decide +kernel
#print axioms checked436
def cert437 : CliqueCertificate (Fin 120) := .split 16 cert435 cert436
theorem checked437 : checkClique O c443 5 cert437 = true := by
  apply checkClique_split_literal O c443 c444 c445 16 4 cert435 cert436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked435
  · exact checked436
#print axioms checked437
def cert438 : CliqueCertificate (Fin 120) := .split 10 cert434 cert437
theorem checked438 : checkClique O c441 5 cert438 = true := by
  apply checkClique_split_literal O c441 c442 c443 10 4 cert434 cert437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked434
  · exact checked437
#print axioms checked438
def cert439 : CliqueCertificate (Fin 120) := .split 4 cert433 cert438
theorem checked439 : checkClique O c439 5 cert439 = true := by
  apply checkClique_split_literal O c439 c440 c441 4 4 cert433 cert438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked433
  · exact checked438
#print axioms checked439
def cert440 : CliqueCertificate (Fin 120) := .split 1 cert432 cert439
theorem checked440 : checkClique O c437 5 cert440 = true := by
  apply checkClique_split_literal O c437 c438 c439 1 4 cert432 cert439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked432
  · exact checked439
#print axioms checked440
def cert441 : CliqueCertificate (Fin 120) := .split 0 cert431 cert440
theorem checked441 : checkClique O c435 5 cert441 = true := by
  apply checkClique_split_literal O c435 c436 c437 0 4 cert431 cert440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked431
  · exact checked440
#print axioms checked441
def cert442 : PairCertificate (Fin 120) := .cross cert441
theorem checked442 : checkPair O U c6 c435 0 cert442 = true := by
  exact checked441
#print axioms checked442
def cert443 : PairCertificate (Fin 120) := .first .size
theorem checked443 : checkPair O U c6 c434 1 cert443 = true := by
  decide +kernel
#print axioms checked443
def cert444 : PairCertificate (Fin 120) := .split 110 cert442 cert443
theorem checked444 : checkPair O U c423 c434 1 cert444 = true := by
  apply checkPair_split_literal O U c423 c434 c6 c435 c6 110 0 cert442 cert443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked442
  · exact checked443
#print axioms checked444
def cert445 : PairCertificate (Fin 120) := .first .size
theorem checked445 : checkPair O U c423 c420 2 cert445 = true := by
  decide +kernel
#print axioms checked445
def cert446 : PairCertificate (Fin 120) := .split 102 cert444 cert445
theorem checked446 : checkPair O U c421 c420 2 cert446 = true := by
  apply checkPair_split_literal O U c421 c420 c423 c434 c423 102 1 cert444 cert445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked444
  · exact checked445
#print axioms checked446
def cert447 : PairCertificate (Fin 120) := .split 51 cert430 cert446
theorem checked447 : checkPair O U c419 c420 2 cert447 = true := by
  apply checkPair_split_literal O U c419 c420 c421 c422 c421 51 1 cert430 cert446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked430
  · exact checked446
#print axioms checked447
def colors448 (v : Fin 120) : Nat := if (2476484541480570080588726272 : Nat).testBit v.val then 0 else if (325152378958540841483904372178944 : Nat).testBit v.val then 1 else 0
def cert448 : CliqueCertificate (Fin 120) := .color 2 colors448
theorem checked448 : checkClique O c449 4 cert448 = true := by
  decide +kernel
#print axioms checked448
def colors449 (v : Fin 120) : Nat := if (2555108241121918377742529724544 : Nat).testBit v.val then 0 else if (20282409754767397875775898124288 : Nat).testBit v.val then 1 else 0
def cert449 : CliqueCertificate (Fin 120) := .color 2 colors449
theorem checked449 : checkClique O c451 4 cert449 = true := by
  decide +kernel
#print axioms checked449
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
