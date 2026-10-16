# Whole-atlas run of the v2 tangent test (exact mirror)

Records: 12021 processed, 0 errors (of 12,021).

| edge tests needed | v1 kernel labels | v2 labels |
|---|---|---|
| direct | 6447 | 7641 |
| support | 2314 | 1891 |
| joint | 2587 | 2463 |
| fail | 673 | 26 |

| v1 → v2 | Records |
|---|---|
| direct → direct | 6370 |
| direct → support | 77 |
| support → direct | 1171 |
| support → support | 1090 |
| support → joint | 53 |
| joint → direct | 91 |
| joint → support | 668 |
| joint → joint | 1825 |
| joint → fail | 3 |
| fail → direct | 9 |
| fail → support | 56 |
| fail → joint | 585 |
| fail → fail | 23 |

| per Record (median) | v1 | v2 |
|---|---|---|
| depth-0 survivors | 15032 | 10280 |
| direct tests | 1021376 | 770176 |
| tangent tests | 216038 | 175425 |

v2 rejections by test (all Records): {'scalar': 656429300, 'ls': 1179885826, 'yc': 25172644}.

Records that still fail (26): 287, 466, 527, 779, 831, 1046, 1250, 1436, 2532, 2536, 2856, 2968, 3546, 3656, 3730, 4015, 4019, 11260, 11327, 11364, 11378, 11420, 11461, 11542, 11613, 11640
