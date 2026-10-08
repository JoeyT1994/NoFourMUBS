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
def state_2242210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 16)))
def hex_2242210 : String := "4041424344404107054106064005074440050605434442400906090707420509414243440607064306064243060606"
theorem cover_2242210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2242210)
  decide +kernel
#print axioms cover_2242210

def state_2242257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 17)))
def hex_2242257 : String := "4041070541074205434440410705060707"
theorem cover_2242257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242257 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2242257)
  decide +kernel
#print axioms cover_2242257

def state_2242274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 8)))
def hex_2242274 : String := "43444240410808410808080844424009410606094240410709410743080708"
theorem cover_2242274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2242274)
  decide +kernel
#print axioms cover_2242274

def state_2242305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
def hex_2242305 : String := "4243444140420509420A430A0940050A4140050A054441400542050605054344090809"
theorem cover_2242305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2242305)
  decide +kernel
#print axioms cover_2242305

def state_2242340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
def hex_2242340 : String := "4142434440414206064206060640414209080A0A4406404107420A4344060706064344404241050605050844060742430A44060A43084406400806"
theorem cover_2242340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2242340)
  decide +kernel
#print axioms cover_2242340

def state_2242399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
def hex_2242399 : String := "40414244434041070541074205080707440807420508414244434041070808070707420A08"
theorem cover_2242399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2242399)
  decide +kernel
#print axioms cover_2242399
end Mub6.Numerical.CircleFullD0.Forest
