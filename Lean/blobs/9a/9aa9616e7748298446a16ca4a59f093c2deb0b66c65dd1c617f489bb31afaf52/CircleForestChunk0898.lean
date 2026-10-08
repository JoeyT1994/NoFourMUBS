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
def state_1516025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
def hex_1516025 : String := "420843444041080941420807424344090805430707400841064206434407060808"
theorem cover_1516025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1516025)
  decide +kernel
#print axioms cover_1516025

def state_1516058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
def hex_1516058 : String := "42434440084105050808434440094142430905090940410809414208434409400806084243090809440508"
theorem cover_1516058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1516058)
  decide +kernel
#print axioms cover_1516058

def state_1516102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
def hex_1516102 : String := "420643444041420607420607060606"
theorem cover_1516102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1516102)
  decide +kernel
#print axioms cover_1516102

def state_1516117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
def hex_1516117 : String := "4243440506054344404142050742054307054142050505404142064307064243060643440740070644070606440540410642050505"
theorem cover_1516117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1516117)
  decide +kernel
#print axioms cover_1516117

def state_1516170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 55 else 30)))
def hex_1516170 : String := "44054008410505"
theorem cover_1516170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1516170)
  decide +kernel
#print axioms cover_1516170

def state_1516179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 60)))
def hex_1516179 : String := "4041424307070742090741074243070507"
theorem cover_1516179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1516179)
  decide +kernel
#print axioms cover_1516179

def state_1516197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 61)))
def hex_1516197 : String := "41424344400907400A410707444009074008410707430707424344094009410709440940094142080709430707"
theorem cover_1516197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1516197)
  decide +kernel
#print axioms cover_1516197

def state_1516242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 61)))
def hex_1516242 : String := "4142430744070707424344074007074407404107070707"
theorem cover_1516242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1516242)
  decide +kernel
#print axioms cover_1516242
end Mub6.Numerical.CircleFullD0.Forest
