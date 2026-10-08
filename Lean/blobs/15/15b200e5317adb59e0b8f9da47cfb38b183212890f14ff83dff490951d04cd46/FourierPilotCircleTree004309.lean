import FourierPilotCircleTree004310
import FourierPilotCircleTree004321
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004309
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![40, 30, 54, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004310.state FourierPilotCircleTree004321.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004310.covered FourierPilotCircleTree004321.covered
#print axioms covered
end FourierPilotCircleTree004309
