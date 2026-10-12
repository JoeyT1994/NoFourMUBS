import NoFourMUBs.Step2.SOS.CanonicalCheck

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalPermutationPilot0 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 1, 4, 5, 3]
  invFun := ![0, 2, 1, 5, 3, 4]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutationPilot1 : Equiv.Perm (Fin 6) where
  toFun := ![0, 2, 3, 5, 4, 1]
  invFun := ![0, 5, 1, 2, 4, 3]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutationPilot2 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 3, 4, 2]
  invFun := ![0, 1, 5, 3, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutationPilot3 : Equiv.Perm (Fin 6) where
  toFun := ![0, 5, 2, 4, 3, 1]
  invFun := ![0, 5, 2, 4, 3, 1]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutationPilot4 : Equiv.Perm (Fin 6) where
  toFun := ![3, 1, 0, 4, 2, 5]
  invFun := ![2, 1, 4, 0, 3, 5]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

def canonicalPermutationPilot5 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 5, 2, 4, 3]
  invFun := ![0, 1, 3, 5, 4, 2]
  left_inv := by decide +kernel
  right_inv := by decide +kernel

end NoFourMUBs.Step2.SOS.Normalization
