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
def state_966771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
def hex_966771 : String := "44404241090941444306050544430640064209410644430609060642410808410A4443084042080A0808400608"
theorem cover_966771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_966771)
  decide +kernel
#print axioms cover_966771

def state_966816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
def hex_966816 : String := "4440094209410543444042094105094207410508080509"
theorem cover_966816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_966816)
  decide +kernel
#print axioms cover_966816

def state_966840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_966840 : String := "4440410606410A420A0A06"
theorem cover_966840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_966840)
  decide +kernel
#print axioms cover_966840

def state_966853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_966853 : String := "4142054306054243444005410542054443060505050543444006410644430642060606064440054105434405050505"
theorem cover_966853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_966853)
  decide +kernel
#print axioms cover_966853

def state_966901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_966901 : String := "42430A050A"
theorem cover_966901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_966901)
  decide +kernel
#print axioms cover_966901

def state_966907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
def hex_966907 : String := "4344404142050A42444340410542050508050544430A050A410A420A0A0A440505"
theorem cover_966907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_966907)
  decide +kernel
#print axioms cover_966907

def state_966940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
def hex_966940 : String := "434440410A44430A420A0A0A0A0A44404105434442054041054307050A0505410A430A0505"
theorem cover_966940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_966940)
  decide +kernel
#print axioms cover_966940

def state_966977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_966977 : String := "40050A"
theorem cover_966977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_966977)
  decide +kernel
#print axioms cover_966977

def state_966986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 14)))
def hex_966986 : String := "44434209400641084443054209400605060909"
theorem cover_966986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_966986)
  decide +kernel
#print axioms cover_966986

def state_967007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 28)))
def hex_967007 : String := "4006410606"
theorem cover_967007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_967007)
  decide +kernel
#print axioms cover_967007

def state_967013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967013 : String := "4106420906"
theorem cover_967013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_967013)
  decide +kernel
#print axioms cover_967013

def state_967019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967019 : String := "4209444306400941094209444306090606"
theorem cover_967019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_967019)
  decide +kernel
#print axioms cover_967019
end Mub6.Numerical.CircleFullD0.Forest
