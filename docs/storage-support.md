# Storage support matrix

Treebind syncs files through a PVC, so how well it works depends on the storage
behind that PVC: locking, atomic rename, file events and the executable bit all
differ between local disks, NFS and cloud file systems.

**Status: not measured yet.** No storage class has been tested, so nothing is
listed as supported. The matrix below fills in as the conformance suite lands
and as people report results.

| Storage | Access mode | Result | Tested on | Report |
| :-- | :-- | :-- | :-- | :-- |
| local-path | ReadWriteOnce | Not tested | | |
| NFS (in-cluster) | ReadWriteMany | Not tested | | |
| CephFS / RBD | | Not tested | | |
| AWS EFS / EBS | | Not tested | | |
| Azure Files / Disk | | Not tested | | |
| GCP Filestore / PD | | Not tested | | |

## Report a result

Once the suite exists (`make conformance STORAGE_CLASS=<name>`), run it against
a cluster that uses your storage class and open a
[storage conformance report](https://github.com/mohanedmoh/treebind/issues/new?template=conformance_report.yml).
Please remove credentials and private hostnames from the output first.
