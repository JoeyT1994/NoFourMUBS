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
def state_289687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
def hex_289687 : String := "424305404442410540050605424105400543054409424105050505440642090505"
theorem cover_289687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_289687)
  decide +kernel
#print axioms cover_289687

def state_289720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
def hex_289720 : String := "4243400809404441420808084142400843084408080808440941420906420940070743054044080806"
theorem cover_289720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_289720)
  decide +kernel
#print axioms cover_289720

def state_289762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 9)))
def hex_289762 : String := "42430540444241054005440505050544424140050640444305420A05070A05420A0505"
theorem cover_289762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_289762)
  decide +kernel
#print axioms cover_289762

def state_289797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 9)))
def hex_289797 : String := "42434007074044414240070705070744414240070740070707074305404405054441050707"
theorem cover_289797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_289797)
  decide +kernel
#print axioms cover_289797

def state_289834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_289834 : String := "4441064209064142430A4406400A0A43050642430744404142070607070743440907440607"
theorem cover_289834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_289834)
  decide +kernel
#print axioms cover_289834

def state_289871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_289871 : String := "43054044410542050505440541054243050605"
theorem cover_289871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_289871)
  decide +kernel
#print axioms cover_289871
end Mub6.Numerical.CircleFullPrototype.Forest
