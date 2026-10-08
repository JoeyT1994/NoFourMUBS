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
def state_1460382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
def hex_1460382 : String := "41434442400541050505050709"
theorem cover_1460382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1460382)
  decide +kernel
#print axioms cover_1460382

def state_1460397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 58)))
def hex_1460397 : String := "44428640410505410A43054442860505424005410A0505"
theorem cover_1460397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1460397)
  decide +kernel
#print axioms cover_1460397

def state_1460420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
def hex_1460420 : String := "4442400743860740434107050743414442864006430A4106064286054442860905410707424007434108050740054305410505"
theorem cover_1460420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1460420)
  decide +kernel
#print axioms cover_1460420

def state_1460471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
def hex_1460471 : String := "4344424005418609090544424007414309070909424005414305050505"
theorem cover_1460471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1460471)
  decide +kernel
#print axioms cover_1460471

def state_1460500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
def hex_1460500 : String := "404143050505414344424005410A05050544424043050643410A0541440605440605400543050605430509"
theorem cover_1460500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1460500)
  decide +kernel
#print axioms cover_1460500

def state_1460543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 59)))
def hex_1460543 : String := "424005414305050505"
theorem cover_1460543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1460543)
  decide +kernel
#print axioms cover_1460543

def state_1460552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
def hex_1460552 : String := "444240074341070707400743414442074006430606420705090742400743410707074007430507"
theorem cover_1460552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1460552)
  decide +kernel
#print axioms cover_1460552

def state_1460591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
def hex_1460591 : String := "43440905440909"
theorem cover_1460591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1460591)
  decide +kernel
#print axioms cover_1460591

def state_1460598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
def hex_1460598 : String := "4009414344424005410A050A05444240064341440605094144060709064240054305050509"
theorem cover_1460598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1460598)
  decide +kernel
#print axioms cover_1460598
end Mub6.Numerical.CircleFullD0.Forest
