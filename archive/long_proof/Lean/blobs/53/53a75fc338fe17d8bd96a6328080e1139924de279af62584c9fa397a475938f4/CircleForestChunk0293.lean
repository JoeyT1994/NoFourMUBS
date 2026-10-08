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
def state_145720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
def hex_145720 : String := "424305404209054241434409084409400842084143050805094143054405050505"
theorem cover_145720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_145720)
  decide +kernel
#print axioms cover_145720

def state_145756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 21)))
def hex_145756 : String := "40084441060506"
theorem cover_145756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_145756)
  decide +kernel
#print axioms cover_145756

def state_145763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 21)))
def hex_145763 : String := "40444142080A080844414243064008444106080843404442410605050906400A09424308084305400844414243050805054109054142080908"
theorem cover_145763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_145763)
  decide +kernel
#print axioms cover_145763

def state_145820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 21)))
def hex_145820 : String := "4305404441420A05054109054441090509"
theorem cover_145820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_145820)
  decide +kernel
#print axioms cover_145820

def state_145837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
def hex_145837 : String := "4243054008444208050805"
theorem cover_145837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_145837)
  decide +kernel
#print axioms cover_145837

def state_145849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_145849 : String := "440606"
theorem cover_145849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_145849)
  decide +kernel
#print axioms cover_145849

def state_145857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
def hex_145857 : String := "414244434009410A09090A4443400642410A0606060A4244090806"
theorem cover_145857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_145857)
  decide +kernel
#print axioms cover_145857

def state_145886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 20)))
def hex_145886 : String := "444340414244050544090A094142054405054244050544098040410509054340410A42080A80400A410542050A"
theorem cover_145886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_145886)
  decide +kernel
#print axioms cover_145886
end Mub6.Numerical.CircleFullPrototype.Forest
