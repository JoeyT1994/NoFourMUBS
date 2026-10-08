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
def state_152645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 13)))
def hex_152645 : String := "44094340424109434409400642410606090A0A42090909"
theorem cover_152645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_152645)
  decide +kernel
#print axioms cover_152645

def state_152669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 13)))
def hex_152669 : String := "44074340070707"
theorem cover_152669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_152669)
  decide +kernel
#print axioms cover_152669

def state_152676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 13)))
def hex_152676 : String := "44434041420709070707434041424344074041060641420606070743440A400A42410607080A0741424344074007070743440942404109070908070707"
theorem cover_152676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_152676)
  decide +kernel
#print axioms cover_152676

def state_152737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
def hex_152737 : String := "41424409434041054205090507094207440743414209090707"
theorem cover_152737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_152737)
  decide +kernel
#print axioms cover_152737

def state_152762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 13)))
def hex_152762 : String := "4041090707"
theorem cover_152762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_152762)
  decide +kernel
#print axioms cover_152762

def state_152767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_152767 : String := "41094244094341054007050744094341094240074407090907"
theorem cover_152767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_152767)
  decide +kernel
#print axioms cover_152767

def state_152794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_152794 : String := "42054344404241054305054106434440060806064205410543440505054042050605444042050605400605"
theorem cover_152794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_152794)
  decide +kernel
#print axioms cover_152794

def state_152838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
def hex_152838 : String := "43444041420543050542064344400607060641054205430A054041050605444041050605400605"
theorem cover_152838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_152838)
  decide +kernel
#print axioms cover_152838
end Mub6.Numerical.CircleFullPrototype.Forest
