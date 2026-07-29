import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure MaximumLikelihoodPhylogenyPackage where
  substitutionModel : Type u
  likelihoodFunction : Type v
  treeSpace : Type w
  optimizationConvergence : Prop
  branchSupport : Prop

structure MaximumLikelihoodPhylogenyEvidence (M : MaximumLikelihoodPhylogenyPackage) where
  optimizationConvergenceClosed : M.optimizationConvergence
  branchSupportClosed : M.branchSupport

def MaximumLikelihoodPhylogenyClosed (M : MaximumLikelihoodPhylogenyPackage) : Prop :=
  M.optimizationConvergence ∧ M.branchSupport

theorem maximum_likelihood_phylogeny_closed_from_evidence
    (M : MaximumLikelihoodPhylogenyPackage) (E : MaximumLikelihoodPhylogenyEvidence M) :
    MaximumLikelihoodPhylogenyClosed M := by
  exact And.intro E.optimizationConvergenceClosed E.branchSupportClosed

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse