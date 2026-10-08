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
def state_1610641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 49)))
def hex_1610641 : String := "444042410543070705420707404241430808434407409F07444042070507409F080808"
theorem cover_1610641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1610641)
  decide +kernel
#print axioms cover_1610641

def state_1610677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 98)))
def hex_1610677 : String := "404241050505420705"
theorem cover_1610677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1610677)
  decide +kernel
#print axioms cover_1610677

def state_1610689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 80) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
def hex_1610689 : String := "4344400505084405400508"
theorem cover_1610689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1610689)
  decide +kernel
#print axioms cover_1610689

def state_1610701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 99)))
def hex_1610701 : String := "44404241050505420705404241434407084405400507434407404207410507074440050740424106070507410543440508054241070708"
theorem cover_1610701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1610701)
  decide +kernel
#print axioms cover_1610701

def state_1610756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 99)))
def hex_1610756 : String := "444005420705404241434405060543444005054006420706060542414307440707430744074042070607410543440508440506"
theorem cover_1610756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1610756)
  decide +kernel
#print axioms cover_1610756

def state_1610807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 99)))
def hex_1610807 : String := "41054344050805"
theorem cover_1610807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1610807)
  decide +kernel
#print axioms cover_1610807

def state_1610814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
def hex_1610814 : String := "42410843074407404207070708"
theorem cover_1610814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1610814)
  decide +kernel
#print axioms cover_1610814

def state_1610829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 98)))
def hex_1610829 : String := "40424143064407404207050743064406404206070641430A05434407404206050644054005074206410706"
theorem cover_1610829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1610829)
  decide +kernel
#print axioms cover_1610829
end Mub6.Numerical.CircleFullD0.Forest
