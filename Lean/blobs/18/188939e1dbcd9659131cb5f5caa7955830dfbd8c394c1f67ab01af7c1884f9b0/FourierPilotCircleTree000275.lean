import FourierPilotCircleTree000276
import FourierPilotCircleTree000277
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000275
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![23, 14, 15, 15, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000276.state FourierPilotCircleTree000277.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000276.covered FourierPilotCircleTree000277.covered
#print axioms covered
end FourierPilotCircleTree000275
