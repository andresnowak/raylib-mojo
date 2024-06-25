import gpu
from memory import memset
from benchmark.compiler import keep

fn main():
    print(gpu.triple_is_nvidia_cuda())
    # var h = DTypePointer[DType.uint64, gpu.AddressSpace.SHARED].alloc(1_000_000_000)
    print(gpu.WARP_SIZE)