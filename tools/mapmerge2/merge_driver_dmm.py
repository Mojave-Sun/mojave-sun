#!/usr/bin/env python3
import sys
import dmm
import mapmerge

def select(base, left, right):
    if left == right:
        # whether or not it's in the base, both sides agree
        return left
    elif base == left:
        # base == left, but right is different: accept right
        return right
    elif base == right:
        # base == right, but left is different: accept left
        return left
    else:
        # all three versions are different
        return None

def three_way_merge(base, left, right):
    if base.size != left.size or base.size != right.size:
        print("Dimensions have changed:")
        print(f"    Base: {base.size}")
        print(f"    Ours: {left.size}")
        print(f"    Theirs: {right.size}")
        return True, None

    trouble = False
    merged = dmm.DMM(base.key_length, base.size)
    merged.dictionary = base.dictionary.copy()

    for (z, y, x) in base.coords_zyx:
        coord = x, y, z
        base_tile = base.get_tile(coord)
        left_tile = left.get_tile(coord)
        right_tile = right.get_tile(coord)

        # try to merge the whole tiles
        whole_tile_merge = select(base_tile, left_tile, right_tile)
        if whole_tile_merge is not None:
            merged.set_tile(coord, whole_tile_merge)
            continue

        # TODO: try other strategies here

        # fall back to requiring manual conflict resolution
        trouble = True
        print(f" C: Both sides touch the tile at {coord}")
        merged.set_tile(coord, left_tile + right_tile)

    merged = mapmerge.merge_map(merged, base)
    return trouble, merged

def main(path, original, left, right):
    print(f"Merging map: {path}")

    map_orig = dmm.DMM.from_file(original)
    map_left = dmm.DMM.from_file(left)
    map_right = dmm.DMM.from_file(right)

    trouble, merged = three_way_merge(map_orig, map_left, map_right)
    if merged:
        merged.to_file(left)
    if trouble:
        print("!!! Manual merge required!")
        if merged:
            print("    A best-effort merge was performed. You must edit the map and remove all")
            print("    /obj/effect/mapping_helpers/conflict.")
        else:
            print("    The map was totally unable to be merged, you must start with one version")
            print("    or the other and manually resolve the conflict.")
        print("    Information about which tiles conflicted is listed above.")
    return trouble

if __name__ == '__main__':
    if len(sys.argv) != 6:
        print("DMM merge driver called with wrong number of arguments")
        print("    usage: merge-driver-dmm %P %O %A %B %L")
        exit(1)

    # "left" is also the file that ought to be overwritten
    _, path, original, left, right, conflict_size_marker = sys.argv
    exit(main(path, original, left, right))
