import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1590818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
def hex_1590818 : String := "4341420A44430909434006080642440A0A4443404109420A094109420A09400A0A43404106420A064108420A44080840060A0A"
theorem cover_1590818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1590818)
  decide +kernel
#print axioms cover_1590818

def state_1590869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
def hex_1590869 : String := "4341420708424407400A054440430707074043080807414207440708420A44400A07400A08"
theorem cover_1590869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1590869)
  decide +kernel
#print axioms cover_1590869

def state_1590906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
def hex_1590906 : String := "444009430909404341424409060642444309094340060806440906064308410842444009080808"
theorem cover_1590906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1590906)
  decide +kernel
#print axioms cover_1590906

def state_1590945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_1590945 : String := "4244400A41090A40060A44094006410643424409060606"
theorem cover_1590945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1590945)
  decide +kernel
#print axioms cover_1590945

def state_1590973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_1590973 : String := "434244434107060A43410A0A0A4443410909410509434140090940420A094206440643060941400909400A420A09420A44050A"
theorem cover_1590973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1590973)
  decide +kernel
#print axioms cover_1590973

def state_1591024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_1591024 : String := "434244080A44414306400506084143404208440808064008420A440A0A4340080608420844080A"
theorem cover_1591024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1591024)
  decide +kernel
#print axioms cover_1591024
end Mub6.Numerical.CircleFullD0.Forest
