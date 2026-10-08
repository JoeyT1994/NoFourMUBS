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
def state_150000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_150000 : String := "40414244064306080942084406430640410908064109420606"
theorem cover_150000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_150000)
  decide +kernel
#print axioms cover_150000

def state_150030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
def hex_150030 : String := "4041424306440505430644064042410506070942430644064041420506080A430644064041420606060641420606420606"
theorem cover_150030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_150030)
  decide +kernel
#print axioms cover_150030

def state_150079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
def hex_150079 : String := "40414243070507420A4307444041424307444041050A050507420A43074440410606064041070A0A41420A070A4041070A0A414205070A"
theorem cover_150079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_150079)
  decide +kernel
#print axioms cover_150079

def state_150135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
def hex_150135 : String := "40414244080509420844084340414244084340410508050509420844084340410606064041090809410942080940410907094109420809"
theorem cover_150135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_150135)
  decide +kernel
#print axioms cover_150135

def state_150192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_150192 : String := "4243050543444042054105430709054042050705440940420541050605"
theorem cover_150192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_150192)
  decide +kernel
#print axioms cover_150192

def state_150222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 27)))
def hex_150222 : String := "43444041054205430A440505050A44404105070540410542050605"
theorem cover_150222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_150222)
  decide +kernel
#print axioms cover_150222
end Mub6.Numerical.CircleFullPrototype.Forest
