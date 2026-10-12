import NoFourMUBs.Step2.SOS.CanonicalCheck

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalPermutation0 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 2, 4, 3]
  invFun := ![0, 1, 3, 5, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation1 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 2, 5, 4, 3]
  invFun := ![0, 1, 2, 5, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation2 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 4, 2, 3]
  invFun := ![0, 1, 4, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation3 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 4, 2, 5, 3]
  invFun := ![0, 1, 3, 5, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation4 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 1, 3, 2, 0]
  invFun := ![5, 2, 4, 3, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation5 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 2, 3, 1, 0]
  invFun := ![5, 4, 2, 3, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation6 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 4, 3, 2, 5]
  invFun := ![0, 1, 4, 3, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation7 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 4, 5, 3, 2]
  invFun := ![0, 1, 5, 4, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation8 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 3, 4, 2]
  invFun := ![0, 1, 5, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation9 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 4, 3, 2]
  invFun := ![0, 1, 5, 4, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation10 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 1, 3, 0, 2]
  invFun := ![4, 2, 5, 3, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation11 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 3, 2, 1, 0]
  invFun := ![5, 4, 3, 2, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation12 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 0, 3, 2, 1]
  invFun := ![2, 5, 4, 3, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation13 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 4, 3, 1]
  invFun := ![0, 5, 2, 4, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation14 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 1, 3, 4, 2]
  invFun := ![0, 2, 5, 3, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation15 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 3, 2, 4]
  invFun := ![0, 1, 4, 3, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation16 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 5, 3, 4, 1]
  invFun := ![0, 5, 1, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation17 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 5, 2, 4, 1]
  invFun := ![0, 5, 3, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation18 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 1, 5, 2, 4]
  invFun := ![0, 2, 4, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation19 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 4, 5, 2, 1]
  invFun := ![0, 5, 4, 1, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation20 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 3, 4, 2, 1]
  invFun := ![0, 5, 4, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation21 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 1, 4, 3, 2]
  invFun := ![0, 2, 5, 4, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation22 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 5, 4, 2, 1]
  invFun := ![0, 5, 4, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation23 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 3, 5, 2, 1]
  invFun := ![0, 5, 4, 2, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation24 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 5, 4, 3, 1]
  invFun := ![0, 5, 1, 4, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation25 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 1, 4, 5, 2]
  invFun := ![0, 2, 5, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation26 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 5, 4, 1, 2]
  invFun := ![0, 4, 5, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation27 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 5, 1, 4, 2]
  invFun := ![0, 3, 5, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation28 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 4, 5, 1]
  invFun := ![0, 5, 2, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation29 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 4, 5, 3, 1]
  invFun := ![0, 5, 1, 4, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation30 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 3, 4, 1, 2]
  invFun := ![0, 4, 5, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation31 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 1, 2, 4, 3]
  invFun := ![0, 2, 3, 5, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation32 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 4, 1, 5]
  invFun := ![0, 4, 2, 1, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation33 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 3, 2, 4, 1]
  invFun := ![0, 5, 3, 2, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation34 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 1, 2, 3, 5]
  invFun := ![0, 2, 3, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation35 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 4, 2, 5, 1]
  invFun := ![0, 5, 3, 1, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation36 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 4, 1, 5, 2]
  invFun := ![0, 3, 5, 1, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation37 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 5, 4, 1, 3]
  invFun := ![0, 4, 1, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation38 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 5, 3, 1, 4]
  invFun := ![0, 4, 1, 3, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation39 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 1, 5, 4, 3]
  invFun := ![0, 2, 1, 5, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation40 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 4, 3, 5, 1]
  invFun := ![0, 5, 1, 3, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation41 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 1, 3, 5, 4]
  invFun := ![0, 2, 1, 3, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation42 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 1, 4, 2, 5]
  invFun := ![0, 2, 4, 1, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation43 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 3, 1, 4, 2]
  invFun := ![0, 3, 5, 2, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation44 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 5, 1, 4, 3]
  invFun := ![0, 3, 1, 5, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation45 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 4, 1, 3, 5]
  invFun := ![0, 3, 1, 4, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation46 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 4, 3, 1, 2]
  invFun := ![0, 4, 5, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation47 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 3, 5, 4, 1]
  invFun := ![0, 5, 1, 2, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation48 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 3, 5, 1, 4]
  invFun := ![0, 4, 1, 2, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation49 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 5, 4, 1]
  invFun := ![0, 5, 2, 1, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation50 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 1, 4, 5]
  invFun := ![0, 3, 2, 1, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation51 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 4, 1, 3, 2]
  invFun := ![0, 3, 5, 4, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation52 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 5, 3, 2, 1]
  invFun := ![0, 5, 4, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation53 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 3, 2, 1, 5]
  invFun := ![0, 4, 3, 2, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation54 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 1, 3, 4]
  invFun := ![0, 3, 2, 4, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation55 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 1, 5, 4, 2]
  invFun := ![0, 2, 5, 1, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation56 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 4, 3, 2, 1]
  invFun := ![0, 5, 4, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation57 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 5, 3, 0, 2]
  invFun := ![4, 0, 5, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation58 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 5, 1, 3, 2]
  invFun := ![0, 3, 5, 4, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation59 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 4, 1, 2, 3]
  invFun := ![0, 3, 4, 5, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation60 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 5, 2, 0, 1]
  invFun := ![4, 5, 3, 0, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation61 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 3, 1, 5, 2]
  invFun := ![0, 3, 5, 2, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation62 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 5, 3, 0, 1]
  invFun := ![4, 5, 0, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation63 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 5, 2, 1, 0]
  invFun := ![5, 4, 3, 0, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation64 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 4, 3, 1, 5]
  invFun := ![0, 4, 1, 3, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation65 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 1, 3, 2, 4]
  invFun := ![0, 2, 4, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation66 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 2, 1, 0, 3]
  invFun := ![4, 3, 2, 5, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation67 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 2, 0, 1, 3]
  invFun := ![3, 4, 2, 5, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation68 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 1, 4, 3]
  invFun := ![0, 3, 2, 5, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation69 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 4, 0, 5, 2]
  invFun := ![3, 0, 5, 1, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation70 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 1, 2, 0, 3]
  invFun := ![4, 2, 3, 5, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation71 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 4, 1, 3]
  invFun := ![0, 4, 2, 5, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation72 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 2, 1, 3, 5]
  invFun := ![0, 3, 2, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation73 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 1, 5, 4]
  invFun := ![0, 3, 2, 1, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation74 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 4, 2, 1, 3]
  invFun := ![0, 4, 3, 5, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation75 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 5, 2, 1, 3]
  invFun := ![0, 4, 3, 5, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation76 : Equiv.Perm (Fin 6) where
  toFun := ![0, 4, 5, 3, 1, 2]
  invFun := ![0, 4, 5, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation77 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 5, 2, 1, 4]
  invFun := ![0, 4, 3, 1, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation78 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 1, 4, 5, 3]
  invFun := ![0, 2, 1, 5, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation79 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 2, 5, 1, 4]
  invFun := ![0, 4, 2, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation80 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 3, 2, 1, 4]
  invFun := ![0, 4, 3, 2, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation81 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 3, 1, 4]
  invFun := ![0, 4, 2, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation82 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 0, 2, 1, 3]
  invFun := ![2, 4, 3, 5, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation83 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 0, 3, 1, 2]
  invFun := ![2, 4, 5, 3, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation84 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 4, 5, 2, 0]
  invFun := ![5, 0, 4, 1, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation85 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 2, 1, 3, 0]
  invFun := ![5, 3, 2, 4, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation86 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 5, 4, 2, 3]
  invFun := ![1, 0, 4, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation87 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 5, 2, 1, 0]
  invFun := ![5, 4, 3, 1, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation88 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 5, 1, 2, 0]
  invFun := ![5, 3, 4, 1, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation89 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 1, 0, 2, 5]
  invFun := ![3, 2, 4, 1, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation90 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 3, 4, 0, 2]
  invFun := ![4, 0, 5, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation91 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 3, 1, 2, 0]
  invFun := ![5, 3, 4, 2, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation92 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 3, 0, 2]
  invFun := ![4, 0, 5, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation93 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 2, 3, 5, 0]
  invFun := ![5, 1, 2, 3, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation94 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 5, 3, 2, 0]
  invFun := ![5, 0, 4, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation95 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 3, 4, 0, 1]
  invFun := ![4, 5, 0, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation96 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 4, 3, 0, 1]
  invFun := ![4, 5, 0, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation97 : Equiv.Perm (Fin 6) where
  toFun := ![5, 0, 4, 2, 1, 3]
  invFun := ![1, 4, 3, 5, 2, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation98 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 5, 0, 2]
  invFun := ![4, 0, 5, 2, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation99 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 3, 2, 0]
  invFun := ![5, 0, 4, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation100 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 5, 4, 0, 2]
  invFun := ![4, 0, 5, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation101 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 5, 4, 0, 1]
  invFun := ![4, 5, 0, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation102 : Equiv.Perm (Fin 6) where
  toFun := ![5, 3, 0, 2, 4, 1]
  invFun := ![2, 5, 3, 1, 4, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation103 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 3, 0, 4, 1]
  invFun := ![3, 5, 1, 2, 4, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation104 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 5, 4, 2, 0]
  invFun := ![5, 0, 4, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation105 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 0, 3, 1, 4]
  invFun := ![2, 4, 1, 3, 5, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation106 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 0, 4, 1, 3]
  invFun := ![2, 4, 1, 5, 3, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation107 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 2, 0, 1, 3]
  invFun := ![3, 4, 2, 5, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation108 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 5, 3, 1, 0]
  invFun := ![5, 4, 0, 3, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation109 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 4, 1, 0, 3]
  invFun := ![4, 3, 1, 5, 2, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation110 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 0, 3, 5, 2]
  invFun := ![2, 0, 5, 3, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation111 : Equiv.Perm (Fin 6) where
  toFun := ![4, 5, 2, 0, 3, 1]
  invFun := ![3, 5, 2, 4, 0, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation112 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 2, 0, 3, 1]
  invFun := ![3, 5, 2, 4, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation113 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 0, 3, 2, 5]
  invFun := ![2, 0, 4, 3, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation114 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 0, 2, 3, 5]
  invFun := ![2, 0, 3, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation115 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 1, 4, 2]
  invFun := ![2, 3, 5, 0, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation116 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 0, 2, 4, 5]
  invFun := ![2, 0, 3, 1, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation117 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 3, 5, 0]
  invFun := ![5, 2, 1, 3, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation118 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 2, 1, 0, 5]
  invFun := ![4, 3, 2, 0, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation119 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 0, 3, 5]
  invFun := ![3, 2, 1, 4, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation120 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 2, 1, 4]
  invFun := ![2, 4, 3, 0, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation121 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 0, 2, 1, 5]
  invFun := ![2, 4, 3, 0, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation122 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 3, 0, 2, 1]
  invFun := ![3, 5, 4, 2, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation123 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 2, 0, 1, 5]
  invFun := ![3, 4, 2, 1, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation124 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 2, 1, 0, 5]
  invFun := ![4, 3, 2, 1, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation125 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 5, 2, 1, 4]
  invFun := ![1, 4, 3, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation126 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 1, 3, 5, 4]
  invFun := ![1, 2, 0, 3, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation127 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 3, 1, 5, 0]
  invFun := ![5, 3, 1, 2, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation128 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 2, 1, 5, 0]
  invFun := ![5, 3, 2, 1, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation129 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 3, 5, 1, 0]
  invFun := ![5, 4, 1, 2, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation130 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 0, 2, 1, 5]
  invFun := ![2, 4, 3, 1, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation131 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 1, 5, 2, 0]
  invFun := ![5, 2, 4, 1, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation132 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 4, 1, 0]
  invFun := ![5, 4, 1, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation133 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 4, 5, 1, 0]
  invFun := ![5, 4, 1, 0, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation134 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 2, 3, 0, 5]
  invFun := ![4, 1, 2, 3, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation135 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 2, 4, 5]
  invFun := ![2, 1, 3, 0, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation136 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 0, 3, 1, 5]
  invFun := ![2, 4, 1, 3, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation137 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 5, 0, 2, 3]
  invFun := ![3, 1, 4, 5, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation138 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 4, 3, 1, 0]
  invFun := ![5, 4, 0, 3, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation139 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 5, 0, 1, 2]
  invFun := ![3, 4, 5, 1, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation140 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 0, 5, 3]
  invFun := ![3, 2, 1, 5, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation141 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 3, 4, 1, 0]
  invFun := ![5, 4, 0, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation142 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 1, 2, 4]
  invFun := ![2, 3, 4, 0, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation143 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 3, 5, 1, 0]
  invFun := ![5, 4, 0, 2, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation144 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 2, 1, 0, 4]
  invFun := ![4, 3, 2, 0, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation145 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 0, 5, 4]
  invFun := ![3, 2, 1, 0, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation146 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 0, 4, 5]
  invFun := ![3, 2, 1, 0, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation147 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 5, 4, 1, 0]
  invFun := ![5, 4, 0, 1, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation148 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 2, 4, 5, 0]
  invFun := ![5, 0, 2, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation149 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 1, 3, 2, 0]
  invFun := ![5, 2, 4, 3, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation150 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 2, 5, 1, 4]
  invFun := ![1, 4, 2, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation151 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 1, 4, 5, 2]
  invFun := ![1, 2, 5, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation152 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 5, 4, 1, 2]
  invFun := ![1, 4, 5, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation153 : Equiv.Perm (Fin 6) where
  toFun := ![4, 0, 5, 3, 1, 2]
  invFun := ![1, 4, 5, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation154 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 1, 4, 5, 0]
  invFun := ![5, 2, 0, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation155 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 1, 5, 2, 4]
  invFun := ![1, 2, 4, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation156 : Equiv.Perm (Fin 6) where
  toFun := ![4, 0, 3, 5, 2, 1]
  invFun := ![1, 5, 4, 2, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation157 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 4, 5, 2, 1]
  invFun := ![1, 5, 4, 0, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation158 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 5, 4, 2, 1]
  invFun := ![1, 5, 4, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation159 : Equiv.Perm (Fin 6) where
  toFun := ![4, 0, 5, 3, 2, 1]
  invFun := ![1, 5, 4, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation160 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 0, 1, 4, 5]
  invFun := ![2, 3, 1, 0, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation161 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 0, 3, 2, 5]
  invFun := ![2, 1, 4, 3, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation162 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 5, 0, 1, 3]
  invFun := ![3, 4, 1, 5, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation163 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 2, 1, 5, 4]
  invFun := ![1, 3, 2, 0, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation164 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 2, 0, 5, 3]
  invFun := ![3, 1, 2, 5, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation165 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 3, 4, 2, 0]
  invFun := ![5, 0, 4, 2, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation166 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 5, 2, 0]
  invFun := ![5, 0, 4, 2, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation167 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 1, 2, 0, 5]
  invFun := ![4, 2, 3, 0, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation168 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 2, 0, 5, 4]
  invFun := ![3, 1, 2, 0, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation169 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 2, 0, 4, 5]
  invFun := ![3, 1, 2, 0, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation170 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 3, 1, 0, 5]
  invFun := ![4, 3, 1, 2, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation171 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 4, 1, 2]
  invFun := ![2, 4, 5, 0, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation172 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 0, 5, 3, 2]
  invFun := ![2, 0, 5, 4, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation173 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 5, 2, 3, 4]
  invFun := ![1, 0, 3, 4, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation174 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 4, 0, 2, 1]
  invFun := ![3, 5, 4, 0, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation175 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 5, 0, 3, 1]
  invFun := ![3, 5, 0, 4, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation176 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 4, 5, 1, 3]
  invFun := ![1, 4, 0, 5, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation177 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 5, 4, 1, 3]
  invFun := ![1, 4, 0, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation178 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 0, 4, 3, 1]
  invFun := ![2, 5, 0, 4, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation179 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 4, 2, 1]
  invFun := ![2, 5, 4, 0, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation180 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 5, 0, 1, 3]
  invFun := ![3, 4, 0, 5, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation181 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 5, 3, 1, 0]
  invFun := ![5, 4, 1, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation182 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 0, 4, 1, 3]
  invFun := ![2, 4, 0, 5, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation183 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 0, 5, 3, 1]
  invFun := ![2, 5, 0, 4, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation184 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 0, 5, 2, 1]
  invFun := ![2, 5, 4, 0, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation185 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 5, 4, 3, 2]
  invFun := ![1, 0, 5, 4, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation186 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 5, 2, 0, 1]
  invFun := ![4, 5, 3, 1, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation187 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 4, 2, 3, 5]
  invFun := ![1, 0, 3, 4, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation188 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 4, 5, 3, 2]
  invFun := ![1, 0, 5, 4, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation189 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 5, 1, 0, 2]
  invFun := ![4, 3, 5, 1, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation190 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 5, 1, 3, 0]
  invFun := ![5, 3, 1, 4, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation191 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 0, 5, 3, 1]
  invFun := ![2, 5, 1, 4, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation192 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 0, 5, 2, 1]
  invFun := ![2, 5, 4, 1, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation193 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 4, 1, 2, 0]
  invFun := ![5, 3, 4, 0, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation194 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 0, 4, 3, 1]
  invFun := ![2, 5, 1, 4, 3, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation195 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 1, 5, 2, 0]
  invFun := ![5, 2, 4, 0, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation196 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 5, 1, 4, 3]
  invFun := ![1, 3, 0, 5, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation197 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 5, 3, 0]
  invFun := ![5, 2, 1, 4, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation198 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 5, 1, 4, 2]
  invFun := ![1, 3, 5, 0, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation199 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 4, 1, 5, 2]
  invFun := ![1, 3, 5, 0, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation200 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 2, 5, 4]
  invFun := ![2, 1, 3, 0, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation201 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 2, 3, 5, 4]
  invFun := ![1, 0, 2, 3, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation202 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 2, 4, 3, 5]
  invFun := ![1, 0, 2, 4, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation203 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 3, 2, 4, 5]
  invFun := ![1, 0, 3, 2, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation204 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 0, 1, 5, 3]
  invFun := ![2, 3, 0, 5, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation205 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 5, 4, 2]
  invFun := ![2, 1, 5, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation206 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 3, 5, 0, 1]
  invFun := ![4, 5, 1, 2, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation207 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 4, 2, 1, 0]
  invFun := ![5, 4, 3, 0, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation208 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 2, 4, 1, 0]
  invFun := ![5, 4, 2, 0, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation209 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 2, 4, 0, 1]
  invFun := ![4, 5, 2, 0, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation210 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 3, 5, 0, 2]
  invFun := ![4, 1, 5, 2, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation211 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 2, 5, 0, 3]
  invFun := ![4, 1, 2, 5, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation212 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 5, 1, 4, 0]
  invFun := ![5, 3, 0, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation213 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 1, 4, 0]
  invFun := ![5, 3, 1, 0, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation214 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 4, 0, 3, 1]
  invFun := ![3, 5, 0, 4, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation215 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 5, 0, 3]
  invFun := ![4, 0, 2, 5, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation216 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 0, 5, 1, 2]
  invFun := ![2, 4, 5, 0, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation217 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 2, 4, 5, 0]
  invFun := ![5, 1, 2, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation218 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 4, 5, 0, 1]
  invFun := ![4, 5, 1, 0, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation219 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 4, 0, 1]
  invFun := ![4, 5, 1, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation220 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 5, 3, 0, 1]
  invFun := ![4, 5, 1, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation221 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 4, 3, 5, 0]
  invFun := ![5, 0, 1, 3, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation222 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 5, 2, 3, 0]
  invFun := ![5, 0, 3, 4, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation223 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 2, 4, 3, 0]
  invFun := ![5, 0, 2, 4, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation224 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 2, 5, 0, 4]
  invFun := ![4, 0, 2, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation225 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 2, 0, 3]
  invFun := ![4, 0, 3, 5, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation226 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 4, 0, 2, 5]
  invFun := ![3, 0, 4, 1, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation227 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 0, 2, 5, 4]
  invFun := ![2, 0, 3, 1, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation228 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 5, 0, 2, 3]
  invFun := ![3, 0, 4, 5, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation229 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 3, 5, 4, 2]
  invFun := ![1, 0, 5, 2, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation230 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 0, 3, 4, 2]
  invFun := ![2, 0, 5, 3, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation231 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 0, 2, 5, 3]
  invFun := ![2, 0, 3, 5, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation232 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 5, 3, 4, 0]
  invFun := ![5, 0, 1, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation233 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 5, 0, 2, 4]
  invFun := ![3, 0, 4, 1, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation234 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 4, 3, 5, 2]
  invFun := ![1, 0, 5, 3, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation235 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 0, 4, 5, 2]
  invFun := ![2, 0, 5, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation236 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 5, 3, 4, 2]
  invFun := ![1, 0, 5, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation237 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 2, 3, 0, 4]
  invFun := ![4, 0, 2, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation238 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 0, 5, 2, 4]
  invFun := ![2, 0, 4, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation239 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 0, 3, 2, 4]
  invFun := ![2, 0, 4, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation240 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 0, 1, 4]
  invFun := ![3, 4, 1, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation241 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 5, 1, 2, 4]
  invFun := ![1, 3, 4, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation242 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 3, 0, 2, 5]
  invFun := ![3, 1, 4, 2, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation243 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 5, 0, 2, 4]
  invFun := ![3, 1, 4, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation244 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 4, 3, 5, 0]
  invFun := ![5, 1, 0, 3, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation245 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 1, 5, 0, 4]
  invFun := ![4, 2, 0, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation246 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 5, 4, 3, 0]
  invFun := ![5, 1, 0, 4, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation247 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 0, 1, 5, 4]
  invFun := ![2, 3, 0, 1, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation248 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 4, 5, 3, 0]
  invFun := ![5, 1, 0, 4, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation249 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 0, 3, 5, 1]
  invFun := ![2, 5, 0, 3, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation250 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 3, 5, 4, 1]
  invFun := ![1, 5, 0, 2, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation251 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 0, 3, 4, 1]
  invFun := ![2, 5, 0, 3, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation252 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 0, 1, 3, 5]
  invFun := ![2, 3, 0, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation253 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 5, 3, 4, 0]
  invFun := ![5, 1, 0, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation254 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 4, 3, 5, 1]
  invFun := ![1, 5, 0, 3, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation255 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 5, 3, 4, 1]
  invFun := ![1, 5, 0, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation256 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 0, 4, 5, 1]
  invFun := ![2, 5, 0, 1, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation257 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 0, 5, 4, 1]
  invFun := ![2, 5, 0, 1, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation258 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 4, 5, 3, 1]
  invFun := ![1, 5, 0, 4, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation259 : Equiv.Perm (Fin 6) where
  toFun := ![2, 0, 5, 4, 3, 1]
  invFun := ![1, 5, 0, 4, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation260 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 3, 5, 4, 0]
  invFun := ![5, 1, 0, 2, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation261 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 1, 3, 0, 4]
  invFun := ![4, 2, 0, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation262 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 0, 5, 1, 4]
  invFun := ![2, 4, 0, 1, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation263 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 0, 3, 1, 4]
  invFun := ![2, 4, 0, 3, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation264 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 4, 5, 0, 2]
  invFun := ![4, 1, 5, 0, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation265 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 5, 4, 0, 2]
  invFun := ![4, 1, 5, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation266 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 5, 3, 0, 2]
  invFun := ![4, 1, 5, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation267 : Equiv.Perm (Fin 6) where
  toFun := ![4, 0, 5, 2, 3, 1]
  invFun := ![1, 5, 3, 4, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation268 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 2, 5, 1, 0]
  invFun := ![5, 4, 2, 0, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation269 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 3, 0, 5]
  invFun := ![4, 2, 1, 3, 0, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation270 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 1, 5, 0, 3]
  invFun := ![4, 2, 1, 5, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation271 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 2, 5, 3, 0]
  invFun := ![5, 1, 2, 4, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation272 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 5, 1, 3, 0]
  invFun := ![5, 3, 0, 4, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation273 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 4, 1, 0, 3]
  invFun := ![4, 3, 0, 5, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation274 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 5, 0, 1, 4]
  invFun := ![3, 4, 0, 1, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation275 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 3, 1, 4, 0]
  invFun := ![5, 3, 0, 2, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation276 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 4, 5, 2, 0]
  invFun := ![5, 1, 4, 0, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation277 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 5, 4, 2, 0]
  invFun := ![5, 1, 4, 0, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation278 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 5, 3, 2, 0]
  invFun := ![5, 1, 4, 3, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation279 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 2, 0, 1, 4]
  invFun := ![3, 4, 2, 0, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation280 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 2, 0, 1, 5]
  invFun := ![3, 4, 2, 0, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation281 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 0, 1, 5, 4]
  invFun := ![2, 3, 1, 0, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation282 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 2, 4, 5, 1]
  invFun := ![1, 5, 2, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation283 : Equiv.Perm (Fin 6) where
  toFun := ![4, 0, 5, 2, 1, 3]
  invFun := ![1, 4, 3, 5, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation284 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 1, 0, 2, 4]
  invFun := ![3, 2, 4, 0, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation285 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 1, 0, 2, 5]
  invFun := ![3, 2, 4, 0, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation286 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 2, 0, 4, 5]
  invFun := ![3, 0, 2, 1, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation287 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 1, 4, 2, 5]
  invFun := ![1, 2, 4, 0, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation288 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 0, 5, 3, 2]
  invFun := ![2, 1, 5, 4, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation289 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 3, 4, 0, 5]
  invFun := ![4, 0, 1, 2, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation290 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 3, 0, 4, 5]
  invFun := ![3, 0, 1, 2, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation291 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 4, 1, 2, 5]
  invFun := ![1, 3, 4, 0, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation292 : Equiv.Perm (Fin 6) where
  toFun := ![5, 2, 0, 3, 4, 1]
  invFun := ![2, 5, 1, 3, 4, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation293 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 0, 3, 2, 1]
  invFun := ![2, 5, 4, 3, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation294 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 2, 5, 4, 0]
  invFun := ![5, 1, 2, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation295 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 1, 5, 3, 0]
  invFun := ![5, 2, 0, 4, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation296 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 0, 4, 5, 1]
  invFun := ![2, 5, 1, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation297 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 5, 3, 2, 4]
  invFun := ![1, 0, 4, 3, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation298 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 4, 2, 5]
  invFun := ![2, 1, 4, 0, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation299 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 1, 0, 4, 2]
  invFun := ![3, 2, 5, 0, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation300 : Equiv.Perm (Fin 6) where
  toFun := ![5, 4, 0, 3, 1, 2]
  invFun := ![2, 4, 5, 3, 1, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation301 : Equiv.Perm (Fin 6) where
  toFun := ![5, 3, 0, 4, 1, 2]
  invFun := ![2, 4, 5, 1, 3, 0]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation302 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 4, 5, 0]
  invFun := ![5, 2, 1, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation303 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 2, 5, 4, 1]
  invFun := ![1, 5, 2, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation304 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 4, 1, 0, 5]
  invFun := ![4, 3, 1, 0, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation305 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 4, 0, 5]
  invFun := ![4, 2, 1, 0, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation306 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 5, 0, 4, 2]
  invFun := ![3, 1, 5, 0, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation307 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 2, 5, 4, 0]
  invFun := ![5, 0, 2, 1, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation308 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 5, 3, 0]
  invFun := ![5, 0, 2, 4, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation309 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 3, 0, 2, 4]
  invFun := ![3, 0, 4, 2, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation310 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 3, 0, 5, 1]
  invFun := ![3, 5, 1, 2, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation311 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 2, 0, 5, 1]
  invFun := ![3, 5, 2, 1, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation312 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 0, 3, 4, 5]
  invFun := ![2, 1, 0, 3, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation313 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 1, 0, 5, 3]
  invFun := ![3, 2, 0, 5, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation314 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 4, 1, 0, 5]
  invFun := ![4, 3, 0, 1, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation315 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 4, 5, 2]
  invFun := ![2, 1, 5, 0, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation316 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 1, 0, 4, 5]
  invFun := ![3, 2, 0, 1, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation317 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 3, 1, 5, 0]
  invFun := ![5, 3, 0, 2, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation318 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 5, 0, 4]
  invFun := ![4, 2, 1, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation319 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 4, 0, 2, 5]
  invFun := ![3, 1, 4, 0, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation320 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 1, 5, 4, 2]
  invFun := ![1, 2, 5, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation321 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 0, 3, 5, 2]
  invFun := ![2, 1, 5, 3, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation322 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 5, 4, 0, 3]
  invFun := ![4, 1, 0, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation323 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 5, 2, 4]
  invFun := ![2, 1, 4, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation324 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 3, 0, 1, 5]
  invFun := ![3, 4, 0, 2, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation325 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 2, 0, 3, 4]
  invFun := ![3, 0, 2, 4, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation326 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 2, 3, 0]
  invFun := ![5, 0, 3, 4, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation327 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 0, 3, 2]
  invFun := ![3, 0, 5, 4, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation328 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 3, 2, 0, 4]
  invFun := ![4, 0, 3, 2, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation329 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 1, 5, 4, 0]
  invFun := ![5, 2, 1, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation330 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 4, 5, 0, 3]
  invFun := ![4, 1, 0, 5, 2, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation331 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 0, 5, 1, 2]
  invFun := ![2, 4, 5, 1, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation332 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 4, 2, 0, 1]
  invFun := ![4, 5, 3, 0, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation333 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 1, 0, 4]
  invFun := ![4, 3, 1, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation334 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 5, 0, 4, 2]
  invFun := ![3, 0, 5, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation335 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 0, 5, 2]
  invFun := ![3, 0, 5, 2, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation336 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 3, 0, 4, 2]
  invFun := ![3, 0, 5, 2, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation337 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 5, 0, 3, 2]
  invFun := ![3, 0, 5, 4, 1, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation338 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 2, 5, 0, 4]
  invFun := ![4, 1, 2, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation339 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 5, 2, 0, 4]
  invFun := ![4, 1, 3, 0, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation340 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 5, 0, 4, 1]
  invFun := ![3, 5, 0, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation341 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 3, 0, 5, 1]
  invFun := ![3, 5, 0, 2, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation342 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 3, 0, 4, 1]
  invFun := ![3, 5, 0, 2, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation343 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 4, 0, 5, 2]
  invFun := ![3, 1, 5, 0, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation344 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 0, 5, 1, 3]
  invFun := ![2, 4, 1, 5, 0, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation345 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 0, 2, 5, 1]
  invFun := ![2, 5, 3, 1, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation346 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 2, 4, 0, 3]
  invFun := ![4, 0, 2, 5, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation347 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 2, 0, 4, 3]
  invFun := ![3, 0, 2, 5, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation348 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 0, 3, 5]
  invFun := ![3, 0, 2, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation349 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 3, 5, 0]
  invFun := ![5, 0, 2, 3, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation350 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 4, 2, 5, 3]
  invFun := ![1, 0, 3, 5, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation351 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 2, 0, 5, 4]
  invFun := ![3, 0, 2, 1, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation352 : Equiv.Perm (Fin 6) where
  toFun := ![1, 0, 3, 2, 5, 4]
  invFun := ![1, 0, 3, 2, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation353 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 4, 2, 5, 0]
  invFun := ![5, 0, 3, 1, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation354 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 0, 4, 2, 5]
  invFun := ![2, 0, 4, 1, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation355 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 5, 0, 3, 4]
  invFun := ![3, 0, 1, 4, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation356 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 3, 0, 5]
  invFun := ![4, 0, 2, 3, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation357 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 2, 0, 5, 3]
  invFun := ![3, 0, 2, 5, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation358 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 1, 0, 3, 4]
  invFun := ![3, 2, 0, 4, 5, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation359 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 1, 4, 0, 3]
  invFun := ![4, 2, 0, 5, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation360 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 1, 0, 4, 3]
  invFun := ![3, 2, 0, 5, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation361 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 0, 3, 1, 5]
  invFun := ![2, 4, 0, 3, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation362 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 1, 0, 3, 5]
  invFun := ![3, 2, 0, 4, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation363 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 3, 0, 5, 2]
  invFun := ![3, 1, 5, 2, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation364 : Equiv.Perm (Fin 6) where
  toFun := ![3, 5, 0, 2, 4, 1]
  invFun := ![2, 5, 3, 0, 4, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation365 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 0, 3, 5, 4]
  invFun := ![2, 1, 0, 3, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation366 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 3, 0, 4, 5]
  invFun := ![3, 1, 0, 2, 4, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation367 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 1, 0, 5, 4]
  invFun := ![3, 2, 0, 1, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation368 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 0, 5, 4, 1]
  invFun := ![2, 5, 1, 0, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation369 : Equiv.Perm (Fin 6) where
  toFun := ![4, 3, 1, 0, 5, 2]
  invFun := ![3, 2, 5, 1, 0, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation370 : Equiv.Perm (Fin 6) where
  toFun := ![2, 1, 0, 5, 3, 4]
  invFun := ![2, 1, 0, 4, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation371 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 5, 0, 3, 2]
  invFun := ![3, 1, 5, 4, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation372 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 0, 4, 5, 3]
  invFun := ![2, 0, 1, 5, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation373 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 0, 3, 5, 4]
  invFun := ![2, 0, 1, 3, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation374 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 0, 5, 4, 3]
  invFun := ![2, 0, 1, 5, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation375 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 5, 4, 0, 3]
  invFun := ![4, 0, 1, 5, 3, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation376 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 4, 0, 3, 5]
  invFun := ![3, 0, 1, 4, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation377 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 5, 3, 0, 4]
  invFun := ![4, 0, 1, 3, 5, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation378 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 3, 5, 0, 4]
  invFun := ![4, 0, 1, 2, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation379 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 0, 4, 3, 5]
  invFun := ![2, 0, 1, 4, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation380 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 3, 0, 5, 4]
  invFun := ![3, 0, 1, 2, 5, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation381 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 5, 0, 4, 3]
  invFun := ![3, 0, 1, 5, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation382 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 4, 0, 5, 3]
  invFun := ![3, 0, 1, 5, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation383 : Equiv.Perm (Fin 6) where
  toFun := ![1, 2, 4, 3, 0, 5]
  invFun := ![4, 0, 1, 3, 2, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation384 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 5, 0, 4, 1]
  invFun := ![3, 5, 1, 0, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation385 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 0, 2, 5]
  invFun := ![3, 0, 4, 2, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation386 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 2, 0, 5]
  invFun := ![4, 0, 3, 2, 1, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation387 : Equiv.Perm (Fin 6) where
  toFun := ![1, 5, 4, 0, 2, 3]
  invFun := ![3, 0, 4, 5, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation388 : Equiv.Perm (Fin 6) where
  toFun := ![3, 4, 1, 5, 0, 2]
  invFun := ![4, 2, 5, 0, 1, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation389 : Equiv.Perm (Fin 6) where
  toFun := ![3, 0, 4, 2, 5, 1]
  invFun := ![1, 5, 3, 0, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation390 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 1, 5, 4, 0]
  invFun := ![5, 2, 0, 1, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation391 : Equiv.Perm (Fin 6) where
  toFun := ![3, 2, 0, 5, 1, 4]
  invFun := ![2, 4, 1, 0, 5, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation392 : Equiv.Perm (Fin 6) where
  toFun := ![2, 4, 1, 3, 5, 0]
  invFun := ![5, 2, 0, 3, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation393 : Equiv.Perm (Fin 6) where
  toFun := ![1, 3, 5, 2, 4, 0]
  invFun := ![5, 0, 3, 1, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation394 : Equiv.Perm (Fin 6) where
  toFun := ![1, 4, 3, 2, 5, 0]
  invFun := ![5, 0, 3, 2, 1, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation395 : Equiv.Perm (Fin 6) where
  toFun := ![2, 3, 4, 1, 5, 0]
  invFun := ![5, 3, 0, 1, 2, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation396 : Equiv.Perm (Fin 6) where
  toFun := ![2, 5, 4, 1, 3, 0]
  invFun := ![5, 3, 0, 4, 2, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation397 : Equiv.Perm (Fin 6) where
  toFun := ![4, 2, 5, 1, 0, 3]
  invFun := ![4, 3, 1, 5, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutation398 : Equiv.Perm (Fin 6) where
  toFun := ![4, 1, 5, 2, 0, 3]
  invFun := ![4, 1, 3, 5, 0, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

end NoFourMUBs.Step2.SOS.Normalization
