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
def state_1024421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1024421 : String := "404307440707434442410740070A060744424140070640444307070744430606430606074241074007430744060607"
theorem cover_1024421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1024421)
  decide +kernel
#print axioms cover_1024421

def state_1024469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1024469 : String := "430844084241074007430744050707"
theorem cover_1024469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1024469)
  decide +kernel
#print axioms cover_1024469

def state_1024485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 25)))
def hex_1024485 : String := "4408424140074307440707400843084408424107080707"
theorem cover_1024485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1024485)
  decide +kernel
#print axioms cover_1024485

def state_1024512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 50)))
def hex_1024512 : String := "440843074241070807"
theorem cover_1024512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1024512)
  decide +kernel
#print axioms cover_1024512

def state_1024521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 50)))
def hex_1024521 : String := "444308424140080608084342414007060808424140444306424106080607064044084308424140074406060807440943064241060906410608"
theorem cover_1024521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1024521)
  decide +kernel
#print axioms cover_1024521

def state_1024578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 50)))
def hex_1024578 : String := "4008440843084241400844084308090808"
theorem cover_1024578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1024578)
  decide +kernel
#print axioms cover_1024578

def state_1024595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 50)))
def hex_1024595 : String := "08"
theorem cover_1024595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1024595)
  decide +kernel
#print axioms cover_1024595

def state_1024599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1024599 : String := "4307440707"
theorem cover_1024599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1024599)
  decide +kernel
#print axioms cover_1024599

def state_1024605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 51)))
def hex_1024605 : String := "44424107400743074406060707"
theorem cover_1024605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1024605)
  decide +kernel
#print axioms cover_1024605

def state_1024618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 51)))
def hex_1024618 : String := "444241400706404443074241074007440707070744430642410640440606060643074241064007060641064007064241074007430744070707"
theorem cover_1024618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1024618)
  decide +kernel
#print axioms cover_1024618
end Mub6.Numerical.CircleFullD0.Forest
