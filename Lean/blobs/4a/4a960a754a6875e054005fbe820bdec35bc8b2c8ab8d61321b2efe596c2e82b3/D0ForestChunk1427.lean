import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1643221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 201) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 81)))
def hex_1643221 : String := "4340424441430508050544414307400708430540070541070505404244084143400805084305400805440841434008A0084340420507054008A0A0"
theorem cover_1643221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1643221)
  decide +kernel
#print axioms cover_1643221

def state_1643281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 200) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 81)))
def hex_1643281 : String := "4340444241070707074442414306084307400744080541070742410643054007050740440842410843400707084108430708A0"
theorem cover_1643281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1643281)
  decide +kernel
#print axioms cover_1643281

def state_1643332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 201) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 81)))
def hex_1643332 : String := "4340440707444241430540070505070540444241084340070808410806424143070843074008A041430740060707A0"
theorem cover_1643332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1643332)
  decide +kernel
#print axioms cover_1643332

def state_1643380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 80)))
def hex_1643380 : String := "424143404406060609094143404408424106430508410A430A4008080A40080943404409420541430509050509"
theorem cover_1643380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1643380)
  decide +kernel
#print axioms cover_1643380

def state_1643425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 81)))
def hex_1643425 : String := "4241064305A04143404442064143064044060606430540440705050605A04305A0"
theorem cover_1643425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1643425)
  decide +kernel
#print axioms cover_1643425

def state_1643459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1643459 : String := "40444205414305400705050505"
theorem cover_1643459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1643459)
  decide +kernel
#print axioms cover_1643459
end Mub6.Numerical.CircleFullD0.Forest
