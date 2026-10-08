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
def state_1538279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 20)))
def hex_1538279 : String := "4042414344084006054440060806434408400A084408400608414344050544400A0805430A4408400A42080A08"
theorem cover_1538279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1538279)
  decide +kernel
#print axioms cover_1538279

def state_1538325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 20)))
def hex_1538325 : String := "42410643440706064143440606064344400708400642064106430A06440706"
theorem cover_1538325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1538325)
  decide +kernel
#print axioms cover_1538325

def state_1538356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 20)))
def hex_1538356 : String := "42414344080909430844070941434408400605444006080643084408404206410643080608"
theorem cover_1538356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1538356)
  decide +kernel
#print axioms cover_1538356

def state_1538393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 20)))
def hex_1538393 : String := "43404241430844074007080841430844080A08084042074341440740074207430807070708"
theorem cover_1538393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1538393)
  decide +kernel
#print axioms cover_1538393

def state_1538433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
def hex_1538433 : String := "4244410643400A4244080A0A0641064340060A06444105430A4006420A0541050A"
theorem cover_1538433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1538433)
  decide +kernel
#print axioms cover_1538433

def state_1538466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
def hex_1538466 : String := "42444105430842404408060840440841050805410543054240060940060544410543054042440505050505"
theorem cover_1538466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1538466)
  decide +kernel
#print axioms cover_1538466
end Mub6.Numerical.CircleFullD0.Forest
