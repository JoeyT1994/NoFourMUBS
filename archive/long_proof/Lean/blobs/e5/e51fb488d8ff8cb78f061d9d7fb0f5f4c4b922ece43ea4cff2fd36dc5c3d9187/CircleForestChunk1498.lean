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
def state_1660221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_1660221 : String := "44404342414440064308064006084440064308064006080606430807404342444108400608080606430808"
theorem cover_1660221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1660221)
  decide +kernel
#print axioms cover_1660221

def state_1660264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_1660264 : String := "430842414407074407404305070508"
theorem cover_1660264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1660264)
  decide +kernel
#print axioms cover_1660264

def state_1660283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_1660283 : String := "414407404342064144400A07400A05440A054207414407400A070A074407400A05"
theorem cover_1660283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1660283)
  decide +kernel
#print axioms cover_1660283

def state_1660317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_1660317 : String := "4440434241440740430807074407400A07414407084407080707404342414440430808080844400A08080842414407400A080A41440608064308420708"
theorem cover_1660317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1660317)
  decide +kernel
#print axioms cover_1660317

def state_1660378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_1660378 : String := "4440430A0707400A4308420708"
theorem cover_1660378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1660378)
  decide +kernel
#print axioms cover_1660378

def state_1660391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_1660391 : String := "42074144074043420A0606074407400607"
theorem cover_1660391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1660391)
  decide +kernel
#print axioms cover_1660391

def state_1660408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_1660408 : String := "43420641070707"
theorem cover_1660408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1660408)
  decide +kernel
#print axioms cover_1660408

def state_1660417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
def hex_1660417 : String := "42444140430542054441400A4305070541400505050505054441404308424441400A080A4108080808400A05410805"
theorem cover_1660417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1660417)
  decide +kernel
#print axioms cover_1660417
end Mub6.Numerical.CircleFullD0.Forest
