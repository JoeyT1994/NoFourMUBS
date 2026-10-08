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
def state_2266308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2266308 : String := "404441054243054405404105070505410542430508054441054243054005050541054208430505"
theorem cover_2266308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2266308)
  decide +kernel
#print axioms cover_2266308

def state_2266350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
def hex_2266350 : String := "42434440410542080505084440410A43420A0A0A0A0A43050A"
theorem cover_2266350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2266350)
  decide +kernel
#print axioms cover_2266350

def state_2266380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
def hex_2266380 : String := "42430544404143050843420805420844050841084305420805084305440505"
theorem cover_2266380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2266380)
  decide +kernel
#print axioms cover_2266380

def state_2266412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
def hex_2266412 : String := "43444007410507074440434142070907414244070709074341420805420709414244404308080808440909424407060940430741420609064308410806"
theorem cover_2266412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2266412)
  decide +kernel
#print axioms cover_2266412

def state_2266473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
def hex_2266473 : String := "4305440909"
theorem cover_2266473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2266473)
  decide +kernel
#print axioms cover_2266473

def state_2266479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
def hex_2266479 : String := "4243050805"
theorem cover_2266479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2266479)
  decide +kernel
#print axioms cover_2266479

def state_2266486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2266486 : String := "444041054207050508"
theorem cover_2266486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2266486)
  decide +kernel
#print axioms cover_2266486

def state_2266495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2266495 : String := "44404341084208440509414208440A084244404308410842060908084440094309420A09400943080843410542080541084208444043050A0A08400808"
theorem cover_2266495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2266495)
  decide +kernel
#print axioms cover_2266495
end Mub6.Numerical.CircleFullD0.Forest
