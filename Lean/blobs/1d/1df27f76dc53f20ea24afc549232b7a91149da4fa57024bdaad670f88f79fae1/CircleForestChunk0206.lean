import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_70880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_70880 : String := "4143074244074105430705064342440A40090909424443074041050807434041090941090940410542440505094142440505064244430A4005060909440609"
theorem cover_70880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_70880)
  decide +kernel
#print axioms cover_70880

def state_70943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 21)))
def hex_70943 : String := "404109094109430909"
theorem cover_70943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_70943)
  decide +kernel
#print axioms cover_70943

def state_70953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_70953 : String := "4244400A41430A42440A060A0A40064108070A"
theorem cover_70953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_70953)
  decide +kernel
#print axioms cover_70953

def state_70975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
def hex_70975 : String := "434142060A0641420644080606"
theorem cover_70975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_70975)
  decide +kernel
#print axioms cover_70975

def state_70989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_70989 : String := "4142444006430A4142060A0A06440A400A0A0A"
theorem cover_70989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_70989)
  decide +kernel
#print axioms cover_70989

def state_71010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
def hex_71010 : String := "4443400641420644430A400909430640064142064409060642060A40064142094409434006B84006094206440806430606"
theorem cover_71010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_71010)
  decide +kernel
#print axioms cover_71010

def state_71060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
def hex_71060 : String := "430A40084144084243400AB84008B80A0A"
theorem cover_71060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_71060)
  decide +kernel
#print axioms cover_71060

def state_71078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
def hex_71078 : String := "404142060A06414244430A40064142060A0A4306060A0A"
theorem cover_71078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_71078)
  decide +kernel
#print axioms cover_71078
end Mub6.Numerical.CircleFullPrototype.Forest
