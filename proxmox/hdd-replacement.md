# HDD Replacement in ZFS

In this guide, we will replace a failed disk in a ZFS mirror. To do this, we will need to know the disk that failed and the disk that will replace it.

## Identify the failed disk

Check the status of the pool:

```bash
zpool status
```

You should see something like this if everything is ok:

```bash
$ zpool status
  pool: storage
 state: ONLINE
  scan: none requested
config:

    NAME                                   STATE     READ WRITE CKSUM
    storage                                ONLINE       0     0     0
      mirror-0                             ONLINE       0     0     0
        ata-WDC_WD80EFZX-68UW8N0_VJHD982X  ONLINE       0     0     0
        ata-WDC_WD80EFAX-68KNBN0_VAG9X8YL  ONLINE       0     0     0

errors: No known data errors
```
But, if you see something like this, its time to replace the disk:

```bash
$ zpools status
  pool: storage
 state: DEGRADED
status: One or more devices could not be used because the label is missing or
    invalid.  Sufficient replicas exist for the pool to continue
    functioning in a degraded state.
action: Replace the device using 'zpool replace'.
   see: http://zfsonlinux.org/msg/ZFS-8000-4J
  scan: none requested
config:

    NAME                                   STATE     READ WRITE CKSUM
    storage                                DEGRADED     0     0     0
      mirror-0                             DEGRADED     0     0     0
        ata-WDC_WD80EFZX-68UW8N0_VJHD982X  ONLINE       0     0     0
        18311740819329882151               UNAVAIL      0     0     0  was /dev/disk/by-id/ata-WDC_WD80EFAX-68KNBN0_VAG9X8YL-part1

errors: No known data errors
```

## Replace the disk

First of all, we need to identify the disk that failed. In this case, the disk `ata-WDC_WD80EFAX-68KNBN0_VAG9X8YL` failed. Now, we need to replace it with a new disk.

After replacing the disk, we need to find the new disk's ID. To do this, run the following command:

```bash
ls -1 /dev/disk/by-id/ | grep ata
```

You should see something like this:

```bash
ata-WDC_WD80EFAX-68KNBN0_VAGA5BPL
ata-WDC_WD80EFAX-68KNBN0_VAGA5BPL-part1
ata-WDC_WD80EFAX-68KNBN0_VAGA5BPL-part9
ata-WDC_WD80EFAX-68KNBN0_VAGASE7L
ata-WDC_WD80EFAX-68KNBN0_VAGASE7L-part1
ata-WDC_WD80EFAX-68KNBN0_VAGASE7L-part9
ata-WDC_WD80EFAX-68LHPN0_7HJSWL7F
ata-WDC_WD80EFZX-68UW8N0_VJHD6BAX
ata-WDC_WD80EFZX-68UW8N0_VJHD6BAX-part1
ata-WDC_WD80EFZX-68UW8N0_VJHD6BAX-part9
ata-WDC_WD80EFZX-68UW8N0_VJHD982X
ata-WDC_WD80EFZX-68UW8N0_VJHD982X-part1
ata-WDC_WD80EFZX-68UW8N0_VJHD982X-part9
ata-WDC_WD80EFZX-68UW8N0_VJHDBDGX
ata-WDC_WD80EFZX-68UW8N0_VJHDBDGX-part1
ata-WDC_WD80EFZX-68UW8N0_VJHDBDGX-part9
```

In this case, the new disk is `ata-WDC_WD80EFAX-68LHPN0_7HJSWL7F`.

Now, we can replace the disk using ZFS

```bash
sudo zpool replace -f storage 18311740819329882151 /dev/disk/by-id/ata-WDC_WD80EFAX-68LHPN0_7HJSWL7F
```

ZFS will automatically start the resilvering process (copying data to the new disk). This process can take a long time, depending on the amount of data on the disk.

You can check the status of the resilvering process by running:

```bash
zpool status
```

That's it! The disk has been replaced successfully.


