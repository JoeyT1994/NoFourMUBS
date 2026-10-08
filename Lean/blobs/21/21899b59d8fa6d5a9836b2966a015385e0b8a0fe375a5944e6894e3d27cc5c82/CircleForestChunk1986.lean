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
def state_2557248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_2557248 : String := "43410A444006430A09094106440609"
theorem cover_2557248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2557248)
  decide +kernel
#print axioms cover_2557248

def state_2557263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_2557263 : String := "42430A410A0509"
theorem cover_2557263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2557263)
  decide +kernel
#print axioms cover_2557263

def state_2557271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2557271 : String := "444243404441054205050A05404405410542430A400A050A0543400A054044050A0542430A400A41054407070A"
theorem cover_2557271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557271 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2557271)
  decide +kernel
#print axioms cover_2557271

def state_2557321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_2557321 : String := "44424344404105424305050705400A07444041054205050540410A42430744410507070A07434407074440410542050505400A0742430A400A0743070A"
theorem cover_2557321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2557321)
  decide +kernel
#print axioms cover_2557321

def state_2557386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_2557386 : String := "4440424308444105404342050542050505410740430742070706430844410540424307440507070541070742430505074042430641070643070707"
theorem cover_2557386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2557386)
  decide +kernel
#print axioms cover_2557386

def state_2557448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 48)))
def hex_2557448 : String := "43064144404342060842094441054009054140080540420608064306420505404306420641080606444043064206E20606"
theorem cover_2557448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_2557448)
  decide +kernel
#print axioms cover_2557448

def state_2557498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 48)))
def hex_2557498 : String := "41084440080606"
theorem cover_2557498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2557498)
  decide +kernel
#print axioms cover_2557498
end Mub6.Numerical.CircleFullD0.Forest
