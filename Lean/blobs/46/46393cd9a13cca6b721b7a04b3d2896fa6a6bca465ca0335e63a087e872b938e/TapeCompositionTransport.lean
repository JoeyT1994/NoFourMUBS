import SeedPhaseTapeComposition

/- Structural transport only. All list arguments stay explicit. -/
set_option autoImplicit false
namespace Seed0024PhaseCore20261007

theorem checkWitnessTape_append_transport
    (p q r : List CellCode) (a b c : List WitnessTag)
    (hp : p ++ q = r) (ht : a ++ b = c)
    (ha : checkWitnessTape p a = true) (hb : checkWitnessTape q b = true) :
    checkWitnessTape r c = true := by
  cases hp
  cases ht
  exact checkWitnessTape_append p q a b ha hb
#print axioms checkWitnessTape_append_transport

theorem checkWitnessTape_split_transport
    (s : CellCode) (p : List CellCode) (a : List WitnessTag)
    (hp : childList s = p)
    (hv : validCheck s = true) (hl : decide (s.level < 7) = true)
    (hc : checkWitnessTape p a = true) :
    checkWitnessTape [s] (.split :: a) = true := by
  cases hp
  exact checkWitnessTape_split s a hv hl hc
#print axioms checkWitnessTape_split_transport

end Seed0024PhaseCore20261007
