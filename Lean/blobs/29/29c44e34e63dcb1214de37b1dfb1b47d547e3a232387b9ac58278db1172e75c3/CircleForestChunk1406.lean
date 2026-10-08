import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1638212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 38)))
def hex_1638212 : String := "4241430A40440842094108090943054044090505414340070540440842410807070A43054044070705"
theorem cover_1638212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1638212)
  decide +kernel
#print axioms cover_1638212

def state_1638253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 39)))
def hex_1638253 : String := "42414305404442064106050605054143400705404442410707074241070507440A054305400505"
theorem cover_1638253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1638253)
  decide +kernel
#print axioms cover_1638253

def state_1638294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 38)))
def hex_1638294 : String := "42410843404408084408420808084108434006440642080606"
theorem cover_1638294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1638294)
  decide +kernel
#print axioms cover_1638294

def state_1638321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 39)))
def hex_1638321 : String := "43404408420808440842410843400842050808410843400744080708400808"
theorem cover_1638321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1638321)
  decide +kernel
#print axioms cover_1638321

def state_1638354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 39)))
def hex_1638354 : String := "4442410843400808084108064241434008420807084340420A0705400842080841430708430706"
theorem cover_1638354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_1638354)
  decide +kernel
#print axioms cover_1638354

def state_1638393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 39)))
def hex_1638393 : String := "444241434008080843050941434008080843400705094241430540084205080541434007054008440842050843054044080505"
theorem cover_1638393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1638393)
  decide +kernel
#print axioms cover_1638393

def state_1638444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 39)))
def hex_1638444 : String := "40440842080644084241080941084340080908"
theorem cover_1638444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1638444)
  decide +kernel
#print axioms cover_1638444
end Mub6.Numerical.CircleFullD0.Forest
