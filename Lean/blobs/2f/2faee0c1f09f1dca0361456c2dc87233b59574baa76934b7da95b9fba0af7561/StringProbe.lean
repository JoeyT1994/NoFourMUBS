import PackedPartition

example : "ab".toList.map Char.toNat = [97, 98] := by decide +kernel
example : "ab".toUTF8.size = 2 := by decide +kernel

