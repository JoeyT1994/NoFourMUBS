import FourierPilotCircleTree004980
import FourierPilotCircleTree005041
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004979
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 6, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004980.state FourierPilotCircleTree005041.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004980.covered FourierPilotCircleTree005041.covered
#print axioms covered
end FourierPilotCircleTree004979
