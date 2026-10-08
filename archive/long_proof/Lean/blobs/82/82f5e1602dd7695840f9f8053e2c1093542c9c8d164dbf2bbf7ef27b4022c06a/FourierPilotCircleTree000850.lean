import FourierPilotCircleTree000851
import FourierPilotCircleTree000852
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000850
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![91, 93, 82, 104, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000851.state FourierPilotCircleTree000852.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000851.covered FourierPilotCircleTree000852.covered
#print axioms covered
end FourierPilotCircleTree000850
