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
def state_1320060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 50)))
def hex_1320060 : String := "4044434241090907094342414008064008440908410509094443420A070A4342410640440A060641054044074305060606"
theorem cover_1320060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1320060)
  decide +kernel
#print axioms cover_1320060

def state_1320109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 50)))
def hex_1320109 : String := "4206410607"
theorem cover_1320109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1320109)
  decide +kernel
#print axioms cover_1320109

def state_1320114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 51)))
def hex_1320114 : String := "4342064106404443420841054008444305060508080606"
theorem cover_1320114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1320114)
  decide +kernel
#print axioms cover_1320114

def state_1320138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
def hex_1320138 : String := "44434205090808"
theorem cover_1320138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1320138)
  decide +kernel
#print axioms cover_1320138

def state_1320146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 50)))
def hex_1320146 : String := "434241404405080A05414044094342414008440908090909440A43420A4140090A40090A0A400944094342050909420507"
theorem cover_1320146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1320146)
  decide +kernel
#print axioms cover_1320146

def state_1320197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 51)))
def hex_1320197 : String := "08"
theorem cover_1320197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1320197)
  decide +kernel
#print axioms cover_1320197

def state_1320200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
def hex_1320200 : String := "44434208414008440908080808"
theorem cover_1320200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1320200)
  decide +kernel
#print axioms cover_1320200

def state_1320213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
def hex_1320213 : String := "4443424106400806414044434206050606064044094342084140080608084443420A07060642064106400806434206410640080606"
theorem cover_1320213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1320213)
  decide +kernel
#print axioms cover_1320213

def state_1320266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 51)))
def hex_1320266 : String := "4008444342054140440908440A43420A414044090606800A40094405804205094342084140084443420641068006060808"
theorem cover_1320266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_1320266)
  decide +kernel
#print axioms cover_1320266

def state_1320315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 51)))
def hex_1320315 : String := "08"
theorem cover_1320315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1320315)
  decide +kernel
#print axioms cover_1320315
end Mub6.Numerical.CircleFullD0.Forest
