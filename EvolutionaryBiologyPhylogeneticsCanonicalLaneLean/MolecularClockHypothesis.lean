import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure MolecularClockHypothesisPackage where
  lineageRates : Type u
  rateVariation : Type v
  clockLikelihoodRatio : Prop
  hypothesisTest : Prop
  calibrationsIncluded : Prop

structure MolecularClockHypothesisEvidence (M : MolecularClockHypothesisPackage) where
  clockLikelihoodRatioClosed : M.clockLikelihoodRatio
  hypothesisTestClosed : M.hypothesisTest
  calibrationsIncludedClosed : M.calibrationsIncluded

def MolecularClockHypothesisClosed (M : MolecularClockHypothesisPackage) : Prop :=
  M.clockLikelihoodRatio ∧ M.hypothesisTest ∧ M.calibrationsIncluded

theorem molecular_clock_hypothesis_closed_from_evidence
    (M : MolecularClockHypothesisPackage) (E : MolecularClockHypothesisEvidence M) :
    MolecularClockHypothesisClosed M := by
  exact And.intro E.clockLikelihoodRatioClosed
    (And.intro E.hypothesisTestClosed E.calibrationsIncludedClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse