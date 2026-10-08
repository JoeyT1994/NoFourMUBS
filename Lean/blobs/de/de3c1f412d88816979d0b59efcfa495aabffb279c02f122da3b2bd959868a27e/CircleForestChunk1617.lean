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
def state_2261253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
def hex_2261253 : String := "4142440709074244404344414206070A4142060706444107060607404341060606064440434244070707070740434241074406064107440707424107060707"
theorem cover_2261253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2261253)
  decide +kernel
#print axioms cover_2261253

def state_2261316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2261316 : String := "41424407070742444043440606060606440707"
theorem cover_2261316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2261316)
  decide +kernel
#print axioms cover_2261316

def state_2261339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2261339 : String := "4044434109050505440906"
theorem cover_2261339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2261339)
  decide +kernel
#print axioms cover_2261339

def state_2261355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
def hex_2261355 : String := "404443414209BE4209BE414209074205444043BE05070543410906410605444341074209BE41070909"
theorem cover_2261355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2261355)
  decide +kernel
#print axioms cover_2261355

def state_2261396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
def hex_2261396 : String := "404443BE4107424407070743BE4107424005064044070707440743BE07"
theorem cover_2261396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2261396)
  decide +kernel
#print axioms cover_2261396

def state_2261426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
def hex_2261426 : String := "404443414205BE420544050505054443414206BE064142054406050506"
theorem cover_2261426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2261426)
  decide +kernel
#print axioms cover_2261426

def state_2261456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
def hex_2261456 : String := "44434241BE440840050641BE0842414408050508434241BE0541BE404408054408064205414044050544070505"
theorem cover_2261456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_2261456)
  decide +kernel
#print axioms cover_2261456
end Mub6.Numerical.CircleFullD0.Forest
