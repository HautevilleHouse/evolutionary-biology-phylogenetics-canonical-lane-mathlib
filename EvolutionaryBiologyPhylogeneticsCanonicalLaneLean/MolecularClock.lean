import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure MolecularClockPackage where
  nucleotideSubstitutionRate : Type u
  calibrationFossil : Type v
  rateConstancyTest : Prop
  lineageSpecificRateHeterogeneity : Prop
  likelihoodRatio : Prop

structure MolecularClockEvidence (M : MolecularClockPackage) where
  rateConstancyTestClosed : M.rateConstancyTest
  lineageSpecificRateHeterogeneityClosed : M.lineageSpecificRateHeterogeneity
  likelihoodRatioClosed : M.likelihoodRatio

def MolecularClockClosed (M : MolecularClockPackage) : Prop :=
  M.rateConstancyTest ∧ M.lineageSpecificRateHeterogeneity ∧ M.likelihoodRatio

theorem molecular_clock_closed_from_evidence (M : MolecularClockPackage)
    (E : MolecularClockEvidence M) : MolecularClockClosed M := by
  exact And.intro E.rateConstancyTestClosed
    (And.intro E.lineageSpecificRateHeterogeneityClosed E.likelihoodRatioClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
