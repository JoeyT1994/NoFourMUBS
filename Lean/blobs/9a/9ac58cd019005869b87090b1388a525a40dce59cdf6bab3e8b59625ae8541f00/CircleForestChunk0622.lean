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
def state_388139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
def hex_388139 : String := "4244074107434244074043410742070707074407404341074407420707070707440741074344074042430A07080707"
theorem cover_388139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_388139)
  decide +kernel
#print axioms cover_388139

def state_388186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_388186 : String := "400607"
theorem cover_388186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_388186)
  decide +kernel
#print axioms cover_388186

def state_388189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_388189 : String := "4407434044410642064309054108424340060A06084407410742080706"
theorem cover_388189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_388189)
  decide +kernel
#print axioms cover_388189

def state_388218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_388218 : String := "4107424407434207070707"
theorem cover_388218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_388218)
  decide +kernel
#print axioms cover_388218

def state_388229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_388229 : String := "43440940410A430A44070A0A4440414243050505050540414442074307084207084405424340440741074208080708434044054107430A050508410A05"
theorem cover_388229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_388229)
  decide +kernel
#print axioms cover_388229

def state_388293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_388293 : String := "4009424341094405060505"
theorem cover_388293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_388293)
  decide +kernel
#print axioms cover_388293

def state_388307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 5)))
def hex_388307 : String := "09"
theorem cover_388307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388307)
  decide +kernel
#print axioms cover_388307

def state_388309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 10)))
def hex_388309 : String := "09"
theorem cover_388309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388309)
  decide +kernel
#print axioms cover_388309

def state_388314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 22)))
def hex_388314 : String := "08"
theorem cover_388314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388314)
  decide +kernel
#print axioms cover_388314

def state_388316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 23)))
def hex_388316 : String := "41404208090808"
theorem cover_388316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_388316)
  decide +kernel
#print axioms cover_388316

def state_388325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
def hex_388325 : String := "420844094143400509400544420509054307400508"
theorem cover_388325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_388325)
  decide +kernel
#print axioms cover_388325

def state_388346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
def hex_388346 : String := "4208444143084008080841434408404205090644404208094208094042054143050543054408054208410A4306440840050608"
theorem cover_388346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_388346)
  decide +kernel
#print axioms cover_388346

def state_388397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 23)))
def hex_388397 : String := "08"
theorem cover_388397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_388397)
  decide +kernel
#print axioms cover_388397
end Mub6.Numerical.CircleFullPrototype.Forest
