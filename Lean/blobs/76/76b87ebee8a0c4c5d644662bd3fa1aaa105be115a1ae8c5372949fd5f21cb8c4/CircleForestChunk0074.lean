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
def state_955214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 174) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 109)))
def hex_955214 : String := "44404105420543440805054142054344400509050542C7434408400541050944050505"
theorem cover_955214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_955214)
  decide +kernel
#print axioms cover_955214

def state_955250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 109)))
def hex_955250 : String := "C7"
theorem cover_955250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_955250)
  decide +kernel
#print axioms cover_955250

def state_955252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 144 else 109)))
def hex_955252 : String := "44404142C70742C7074142C70909404107074142C7430744070742C707"
theorem cover_955252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_955252)
  decide +kernel
#print axioms cover_955252

def state_955282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 218)))
def hex_955282 : String := "404142C74308084208084142C74344084009094408400541050642C7430908"
theorem cover_955282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_955282)
  decide +kernel
#print axioms cover_955282

def state_955313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 219)))
def hex_955313 : String := "404142050542C70741420543444007410507050542C7434440070907444005410542050705"
theorem cover_955313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_955313)
  decide +kernel
#print axioms cover_955313

def state_955350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 54)))
def hex_955350 : String := "44400A41420644064308050640410542054344050505410542C74344400A414205430805060505"
theorem cover_955350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_955350)
  decide +kernel
#print axioms cover_955350

def state_955389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_955389 : String := "40410542054443060505414205054244C7054443404105420506414205444306050542C744434006410707054306050505"
theorem cover_955389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_955389)
  decide +kernel
#print axioms cover_955389

def state_955438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 27)))
def hex_955438 : String := "4440054105420543440A050505"
theorem cover_955438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_955438)
  decide +kernel
#print axioms cover_955438
end Mub6.Numerical.CircleFullD0.Forest
