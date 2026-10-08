import FourierPilotCircleTree000312
import FourierPilotCircleTree000325
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000311
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![24, 9, 8, 8, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000312.state FourierPilotCircleTree000325.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000312.covered FourierPilotCircleTree000325.covered
#print axioms covered
end FourierPilotCircleTree000311
