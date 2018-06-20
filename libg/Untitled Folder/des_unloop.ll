; ModuleID = '<stdin>'
source_filename = "libg/des.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._des_ctx = type { [32 x i32], [32 x i32] }

@in_key = internal global [32 x i8] c"A\E1\03F\85\F7\E8\B8|aq\82\1D\DB8\83.\0FL*T,\07\F0KJ\07\95\D0\00\E8p", align 16
@in = internal global [64 x i8] zeroinitializer, align 16
@out = internal global [64 x i8] zeroinitializer, align 16
@des_setkey.selftest_failed = internal global i8* null, align 8
@leftkey_swap = internal global [16 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009], align 16
@rightkey_swap = internal global [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16
@encrypt_rotate_tab = internal global [16 x i8] c"\01\01\02\02\02\02\02\02\01\02\02\02\02\02\02\01", align 16
@sbox8 = internal global [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16
@sbox6 = internal global [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16
@sbox4 = internal global [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16
@sbox2 = internal global [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16
@sbox7 = internal global [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16
@sbox5 = internal global [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16
@sbox3 = internal global [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16
@sbox1 = internal global [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct._des_ctx], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [1 x %struct._des_ctx], [1 x %struct._des_ctx]* %2, i32 0, i32 0
  %4 = call i32 @des_setkey(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), %struct._des_ctx* %3)
  %5 = getelementptr inbounds [1 x %struct._des_ctx], [1 x %struct._des_ctx]* %2, i32 0, i32 0
  %6 = call i32 @des_ecb_crypt(%struct._des_ctx* %5, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @in, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @out, i32 0, i32 0), i32 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @des_setkey(i8*, %struct._des_ctx*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct._des_ctx*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store %struct._des_ctx* %1, %struct._des_ctx** %14, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = load %struct._des_ctx*, %struct._des_ctx** %14, align 8
  %18 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i32 0, i32 0
  store i8* %16, i8** %7, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 24
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %25, %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = or i32 %31, %36
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 24
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 16
  %55 = or i32 %49, %54
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = or i32 %55, %60
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %61, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = lshr i32 %67, 4
  %69 = load i32, i32* %9, align 4
  %70 = xor i32 %68, %69
  %71 = and i32 %70, 252645135
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 %75, 4
  %77 = load i32, i32* %10, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = xor i32 %79, %80
  %82 = and i32 %81, 269488144
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 15
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 3
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 8
  %97 = and i32 %96, 15
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 2
  %102 = or i32 %94, %101
  %103 = load i32, i32* %9, align 4
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 15
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 1
  %110 = or i32 %102, %109
  %111 = load i32, i32* %9, align 4
  %112 = lshr i32 %111, 24
  %113 = and i32 %112, 15
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %110, %116
  %118 = load i32, i32* %9, align 4
  %119 = lshr i32 %118, 5
  %120 = and i32 %119, 15
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 7
  %125 = or i32 %117, %124
  %126 = load i32, i32* %9, align 4
  %127 = lshr i32 %126, 13
  %128 = and i32 %127, 15
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 6
  %133 = or i32 %125, %132
  %134 = load i32, i32* %9, align 4
  %135 = lshr i32 %134, 21
  %136 = and i32 %135, 15
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 5
  %141 = or i32 %133, %140
  %142 = load i32, i32* %9, align 4
  %143 = lshr i32 %142, 29
  %144 = and i32 %143, 15
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* @leftkey_swap, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 4
  %149 = or i32 %141, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 268435455
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = lshr i32 %152, 1
  %154 = and i32 %153, 15
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 3
  %159 = load i32, i32* %10, align 4
  %160 = lshr i32 %159, 9
  %161 = and i32 %160, 15
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 2
  %166 = or i32 %158, %165
  %167 = load i32, i32* %10, align 4
  %168 = lshr i32 %167, 17
  %169 = and i32 %168, 15
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 1
  %174 = or i32 %166, %173
  %175 = load i32, i32* %10, align 4
  %176 = lshr i32 %175, 25
  %177 = and i32 %176, 15
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %174, %180
  %182 = load i32, i32* %10, align 4
  %183 = lshr i32 %182, 4
  %184 = and i32 %183, 15
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 7
  %189 = or i32 %181, %188
  %190 = load i32, i32* %10, align 4
  %191 = lshr i32 %190, 12
  %192 = and i32 %191, 15
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 6
  %197 = or i32 %189, %196
  %198 = load i32, i32* %10, align 4
  %199 = lshr i32 %198, 20
  %200 = and i32 %199, 15
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 5
  %205 = or i32 %197, %204
  %206 = load i32, i32* %10, align 4
  %207 = lshr i32 %206, 28
  %208 = and i32 %207, 15
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [16 x i32], [16 x i32]* @rightkey_swap, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 4
  %213 = or i32 %205, %212
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = and i32 %214, 268435455
  store i32 %215, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %216

; <label>:216:                                    ; preds = %219, %2
  %217 = load i32, i32* %12, align 4
  %218 = icmp slt i32 %217, 16
  br i1 %218, label %219, label %432

; <label>:219:                                    ; preds = %216
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* @encrypt_rotate_tab, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %220, %225
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [16 x i8], [16 x i8]* @encrypt_rotate_tab, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = sub nsw i32 28, %232
  %234 = lshr i32 %227, %233
  %235 = or i32 %226, %234
  %236 = and i32 %235, 268435455
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [16 x i8], [16 x i8]* @encrypt_rotate_tab, i64 0, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl i32 %237, %242
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [16 x i8], [16 x i8]* @encrypt_rotate_tab, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = sub nsw i32 28, %249
  %251 = lshr i32 %244, %250
  %252 = or i32 %243, %251
  %253 = and i32 %252, 268435455
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %9, align 4
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 603979776
  %257 = load i32, i32* %9, align 4
  %258 = shl i32 %257, 28
  %259 = and i32 %258, 268435456
  %260 = or i32 %256, %259
  %261 = load i32, i32* %9, align 4
  %262 = shl i32 %261, 14
  %263 = and i32 %262, 134217728
  %264 = or i32 %260, %263
  %265 = load i32, i32* %9, align 4
  %266 = shl i32 %265, 18
  %267 = and i32 %266, 34078720
  %268 = or i32 %264, %267
  %269 = load i32, i32* %9, align 4
  %270 = shl i32 %269, 6
  %271 = and i32 %270, 16777216
  %272 = or i32 %268, %271
  %273 = load i32, i32* %9, align 4
  %274 = shl i32 %273, 9
  %275 = and i32 %274, 2097152
  %276 = or i32 %272, %275
  %277 = load i32, i32* %9, align 4
  %278 = lshr i32 %277, 1
  %279 = and i32 %278, 1048576
  %280 = or i32 %276, %279
  %281 = load i32, i32* %9, align 4
  %282 = shl i32 %281, 10
  %283 = and i32 %282, 262144
  %284 = or i32 %280, %283
  %285 = load i32, i32* %9, align 4
  %286 = shl i32 %285, 2
  %287 = and i32 %286, 131072
  %288 = or i32 %284, %287
  %289 = load i32, i32* %9, align 4
  %290 = lshr i32 %289, 10
  %291 = and i32 %290, 65536
  %292 = or i32 %288, %291
  %293 = load i32, i32* %10, align 4
  %294 = lshr i32 %293, 13
  %295 = and i32 %294, 8192
  %296 = or i32 %292, %295
  %297 = load i32, i32* %10, align 4
  %298 = lshr i32 %297, 4
  %299 = and i32 %298, 4096
  %300 = or i32 %296, %299
  %301 = load i32, i32* %10, align 4
  %302 = shl i32 %301, 6
  %303 = and i32 %302, 2048
  %304 = or i32 %300, %303
  %305 = load i32, i32* %10, align 4
  %306 = lshr i32 %305, 1
  %307 = and i32 %306, 1024
  %308 = or i32 %304, %307
  %309 = load i32, i32* %10, align 4
  %310 = lshr i32 %309, 14
  %311 = and i32 %310, 512
  %312 = or i32 %308, %311
  %313 = load i32, i32* %10, align 4
  %314 = and i32 %313, 256
  %315 = or i32 %312, %314
  %316 = load i32, i32* %10, align 4
  %317 = lshr i32 %316, 5
  %318 = and i32 %317, 32
  %319 = or i32 %315, %318
  %320 = load i32, i32* %10, align 4
  %321 = lshr i32 %320, 10
  %322 = and i32 %321, 16
  %323 = or i32 %319, %322
  %324 = load i32, i32* %10, align 4
  %325 = lshr i32 %324, 3
  %326 = and i32 %325, 8
  %327 = or i32 %323, %326
  %328 = load i32, i32* %10, align 4
  %329 = lshr i32 %328, 18
  %330 = and i32 %329, 4
  %331 = or i32 %327, %330
  %332 = load i32, i32* %10, align 4
  %333 = lshr i32 %332, 26
  %334 = and i32 %333, 2
  %335 = or i32 %331, %334
  %336 = load i32, i32* %10, align 4
  %337 = lshr i32 %336, 24
  %338 = and i32 %337, 1
  %339 = or i32 %335, %338
  %340 = load i32*, i32** %8, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %8, align 8
  store i32 %339, i32* %340, align 4
  %342 = load i32, i32* %9, align 4
  %343 = shl i32 %342, 15
  %344 = and i32 %343, 536870912
  %345 = load i32, i32* %9, align 4
  %346 = shl i32 %345, 17
  %347 = and i32 %346, 268435456
  %348 = or i32 %344, %347
  %349 = load i32, i32* %9, align 4
  %350 = shl i32 %349, 10
  %351 = and i32 %350, 134217728
  %352 = or i32 %348, %351
  %353 = load i32, i32* %9, align 4
  %354 = shl i32 %353, 22
  %355 = and i32 %354, 67108864
  %356 = or i32 %352, %355
  %357 = load i32, i32* %9, align 4
  %358 = lshr i32 %357, 2
  %359 = and i32 %358, 33554432
  %360 = or i32 %356, %359
  %361 = load i32, i32* %9, align 4
  %362 = shl i32 %361, 1
  %363 = and i32 %362, 16777216
  %364 = or i32 %360, %363
  %365 = load i32, i32* %9, align 4
  %366 = shl i32 %365, 16
  %367 = and i32 %366, 2097152
  %368 = or i32 %364, %367
  %369 = load i32, i32* %9, align 4
  %370 = shl i32 %369, 11
  %371 = and i32 %370, 1048576
  %372 = or i32 %368, %371
  %373 = load i32, i32* %9, align 4
  %374 = shl i32 %373, 3
  %375 = and i32 %374, 524288
  %376 = or i32 %372, %375
  %377 = load i32, i32* %9, align 4
  %378 = lshr i32 %377, 6
  %379 = and i32 %378, 262144
  %380 = or i32 %376, %379
  %381 = load i32, i32* %9, align 4
  %382 = shl i32 %381, 15
  %383 = and i32 %382, 131072
  %384 = or i32 %380, %383
  %385 = load i32, i32* %9, align 4
  %386 = lshr i32 %385, 4
  %387 = and i32 %386, 65536
  %388 = or i32 %384, %387
  %389 = load i32, i32* %10, align 4
  %390 = lshr i32 %389, 2
  %391 = and i32 %390, 8192
  %392 = or i32 %388, %391
  %393 = load i32, i32* %10, align 4
  %394 = shl i32 %393, 8
  %395 = and i32 %394, 4096
  %396 = or i32 %392, %395
  %397 = load i32, i32* %10, align 4
  %398 = lshr i32 %397, 14
  %399 = and i32 %398, 2056
  %400 = or i32 %396, %399
  %401 = load i32, i32* %10, align 4
  %402 = lshr i32 %401, 9
  %403 = and i32 %402, 1024
  %404 = or i32 %400, %403
  %405 = load i32, i32* %10, align 4
  %406 = and i32 %405, 512
  %407 = or i32 %404, %406
  %408 = load i32, i32* %10, align 4
  %409 = shl i32 %408, 7
  %410 = and i32 %409, 256
  %411 = or i32 %407, %410
  %412 = load i32, i32* %10, align 4
  %413 = lshr i32 %412, 7
  %414 = and i32 %413, 32
  %415 = or i32 %411, %414
  %416 = load i32, i32* %10, align 4
  %417 = lshr i32 %416, 3
  %418 = and i32 %417, 17
  %419 = or i32 %415, %418
  %420 = load i32, i32* %10, align 4
  %421 = shl i32 %420, 2
  %422 = and i32 %421, 4
  %423 = or i32 %419, %422
  %424 = load i32, i32* %10, align 4
  %425 = lshr i32 %424, 21
  %426 = and i32 %425, 2
  %427 = or i32 %423, %426
  %428 = load i32*, i32** %8, align 8
  %429 = getelementptr inbounds i32, i32* %428, i32 1
  store i32* %429, i32** %8, align 8
  store i32 %427, i32* %428, align 4
  %430 = load i32, i32* %12, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %12, align 4
  br label %216

; <label>:432:                                    ; preds = %216
  store i32 0, i32* %15, align 4
  br label %433

; <label>:433:                                    ; preds = %462, %432
  %434 = load i32, i32* %15, align 4
  %435 = icmp slt i32 %434, 32
  br i1 %435, label %436, label %465

; <label>:436:                                    ; preds = %433
  %437 = load i32, i32* %15, align 4
  %438 = sub nsw i32 30, %437
  %439 = sext i32 %438 to i64
  %440 = load %struct._des_ctx*, %struct._des_ctx** %14, align 8
  %441 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %440, i32 0, i32 0
  %442 = getelementptr inbounds [32 x i32], [32 x i32]* %441, i64 0, i64 %439
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %15, align 4
  %445 = sext i32 %444 to i64
  %446 = load %struct._des_ctx*, %struct._des_ctx** %14, align 8
  %447 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %446, i32 0, i32 1
  %448 = getelementptr inbounds [32 x i32], [32 x i32]* %447, i64 0, i64 %445
  store i32 %443, i32* %448, align 4
  %449 = load i32, i32* %15, align 4
  %450 = sub nsw i32 31, %449
  %451 = sext i32 %450 to i64
  %452 = load %struct._des_ctx*, %struct._des_ctx** %14, align 8
  %453 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %452, i32 0, i32 0
  %454 = getelementptr inbounds [32 x i32], [32 x i32]* %453, i64 0, i64 %451
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %15, align 4
  %457 = add nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = load %struct._des_ctx*, %struct._des_ctx** %14, align 8
  %460 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %459, i32 0, i32 1
  %461 = getelementptr inbounds [32 x i32], [32 x i32]* %460, i64 0, i64 %458
  store i32 %455, i32* %461, align 4
  br label %462

; <label>:462:                                    ; preds = %436
  %463 = load i32, i32* %15, align 4
  %464 = add nsw i32 %463, 2
  store i32 %464, i32* %15, align 4
  br label %433

; <label>:465:                                    ; preds = %433
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @des_ecb_crypt(%struct._des_ctx*, i8*, i8*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct._des_ctx*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct._des_ctx* %0, %struct._des_ctx** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i32 %3, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %4
  %26 = load %struct._des_ctx*, %struct._des_ctx** %15, align 8
  %27 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i32 0, i32 0
  br label %33

; <label>:29:                                     ; preds = %4
  %30 = load %struct._des_ctx*, %struct._des_ctx** %15, align 8
  %31 = getelementptr inbounds %struct._des_ctx, %struct._des_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %31, i32 0, i32 0
  br label %33

; <label>:33:                                     ; preds = %29, %25
  %34 = phi i32* [ %28, %25 ], [ %32, %29 ]
  store i32* %34, i32** %22, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 24
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 16
  %47 = or i32 %41, %46
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = or i32 %47, %52
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %53, %57
  store i32 %58, i32* %19, align 4
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 24
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 16
  %71 = or i32 %65, %70
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %71, %76
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = lshr i32 %83, 4
  %85 = load i32, i32* %20, align 4
  %86 = xor i32 %84, %85
  %87 = and i32 %86, 252645135
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %20, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %21, align 4
  %92 = shl i32 %91, 4
  %93 = load i32, i32* %19, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = lshr i32 %95, 16
  %97 = load i32, i32* %20, align 4
  %98 = xor i32 %96, %97
  %99 = and i32 %98, 65535
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %20, align 4
  %102 = xor i32 %101, %100
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %19, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = lshr i32 %107, 2
  %109 = load i32, i32* %19, align 4
  %110 = xor i32 %108, %109
  %111 = and i32 %110, 858993459
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %19, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %21, align 4
  %116 = shl i32 %115, 2
  %117 = load i32, i32* %20, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = lshr i32 %119, 8
  %121 = load i32, i32* %19, align 4
  %122 = xor i32 %120, %121
  %123 = and i32 %122, 16711935
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %19, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %21, align 4
  %128 = shl i32 %127, 8
  %129 = load i32, i32* %20, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = shl i32 %131, 1
  %133 = load i32, i32* %20, align 4
  %134 = lshr i32 %133, 31
  %135 = or i32 %132, %134
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %20, align 4
  %138 = xor i32 %136, %137
  %139 = and i32 %138, -1431655766
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %20, align 4
  %142 = xor i32 %141, %140
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %19, align 4
  %145 = xor i32 %144, %143
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = shl i32 %146, 1
  %148 = load i32, i32* %19, align 4
  %149 = lshr i32 %148, 31
  %150 = or i32 %147, %149
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32*, i32** %22, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %22, align 8
  %154 = load i32, i32* %152, align 4
  %155 = xor i32 %151, %154
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = and i32 %156, 63
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %19, align 4
  %162 = xor i32 %161, %160
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %21, align 4
  %164 = lshr i32 %163, 8
  %165 = and i32 %164, 63
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %19, align 4
  %170 = xor i32 %169, %168
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %21, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 63
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %19, align 4
  %178 = xor i32 %177, %176
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %21, align 4
  %180 = lshr i32 %179, 24
  %181 = and i32 %180, 63
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %19, align 4
  %186 = xor i32 %185, %184
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %20, align 4
  %188 = shl i32 %187, 28
  %189 = load i32, i32* %20, align 4
  %190 = lshr i32 %189, 4
  %191 = or i32 %188, %190
  %192 = load i32*, i32** %22, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %22, align 8
  %194 = load i32, i32* %192, align 4
  %195 = xor i32 %191, %194
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = and i32 %196, 63
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %19, align 4
  %202 = xor i32 %201, %200
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %21, align 4
  %204 = lshr i32 %203, 8
  %205 = and i32 %204, 63
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %19, align 4
  %210 = xor i32 %209, %208
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %21, align 4
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 63
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %19, align 4
  %218 = xor i32 %217, %216
  store i32 %218, i32* %19, align 4
  %219 = load i32, i32* %21, align 4
  %220 = lshr i32 %219, 24
  %221 = and i32 %220, 63
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %19, align 4
  %226 = xor i32 %225, %224
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32*, i32** %22, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %22, align 8
  %230 = load i32, i32* %228, align 4
  %231 = xor i32 %227, %230
  store i32 %231, i32* %21, align 4
  %232 = load i32, i32* %21, align 4
  %233 = and i32 %232, 63
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %20, align 4
  %238 = xor i32 %237, %236
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* %21, align 4
  %240 = lshr i32 %239, 8
  %241 = and i32 %240, 63
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %20, align 4
  %246 = xor i32 %245, %244
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %21, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 63
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %20, align 4
  %254 = xor i32 %253, %252
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* %21, align 4
  %256 = lshr i32 %255, 24
  %257 = and i32 %256, 63
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %20, align 4
  %262 = xor i32 %261, %260
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %19, align 4
  %264 = shl i32 %263, 28
  %265 = load i32, i32* %19, align 4
  %266 = lshr i32 %265, 4
  %267 = or i32 %264, %266
  %268 = load i32*, i32** %22, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %22, align 8
  %270 = load i32, i32* %268, align 4
  %271 = xor i32 %267, %270
  store i32 %271, i32* %21, align 4
  %272 = load i32, i32* %21, align 4
  %273 = and i32 %272, 63
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %20, align 4
  %278 = xor i32 %277, %276
  store i32 %278, i32* %20, align 4
  %279 = load i32, i32* %21, align 4
  %280 = lshr i32 %279, 8
  %281 = and i32 %280, 63
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %20, align 4
  %286 = xor i32 %285, %284
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %21, align 4
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 63
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %20, align 4
  %294 = xor i32 %293, %292
  store i32 %294, i32* %20, align 4
  %295 = load i32, i32* %21, align 4
  %296 = lshr i32 %295, 24
  %297 = and i32 %296, 63
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %20, align 4
  %302 = xor i32 %301, %300
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* %20, align 4
  %304 = load i32*, i32** %22, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %22, align 8
  %306 = load i32, i32* %304, align 4
  %307 = xor i32 %303, %306
  store i32 %307, i32* %21, align 4
  %308 = load i32, i32* %21, align 4
  %309 = and i32 %308, 63
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %19, align 4
  %314 = xor i32 %313, %312
  store i32 %314, i32* %19, align 4
  %315 = load i32, i32* %21, align 4
  %316 = lshr i32 %315, 8
  %317 = and i32 %316, 63
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %19, align 4
  %322 = xor i32 %321, %320
  store i32 %322, i32* %19, align 4
  %323 = load i32, i32* %21, align 4
  %324 = lshr i32 %323, 16
  %325 = and i32 %324, 63
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %19, align 4
  %330 = xor i32 %329, %328
  store i32 %330, i32* %19, align 4
  %331 = load i32, i32* %21, align 4
  %332 = lshr i32 %331, 24
  %333 = and i32 %332, 63
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %19, align 4
  %338 = xor i32 %337, %336
  store i32 %338, i32* %19, align 4
  %339 = load i32, i32* %20, align 4
  %340 = shl i32 %339, 28
  %341 = load i32, i32* %20, align 4
  %342 = lshr i32 %341, 4
  %343 = or i32 %340, %342
  %344 = load i32*, i32** %22, align 8
  %345 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %345, i32** %22, align 8
  %346 = load i32, i32* %344, align 4
  %347 = xor i32 %343, %346
  store i32 %347, i32* %21, align 4
  %348 = load i32, i32* %21, align 4
  %349 = and i32 %348, 63
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %19, align 4
  %354 = xor i32 %353, %352
  store i32 %354, i32* %19, align 4
  %355 = load i32, i32* %21, align 4
  %356 = lshr i32 %355, 8
  %357 = and i32 %356, 63
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %19, align 4
  %362 = xor i32 %361, %360
  store i32 %362, i32* %19, align 4
  %363 = load i32, i32* %21, align 4
  %364 = lshr i32 %363, 16
  %365 = and i32 %364, 63
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %19, align 4
  %370 = xor i32 %369, %368
  store i32 %370, i32* %19, align 4
  %371 = load i32, i32* %21, align 4
  %372 = lshr i32 %371, 24
  %373 = and i32 %372, 63
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %19, align 4
  %378 = xor i32 %377, %376
  store i32 %378, i32* %19, align 4
  %379 = load i32, i32* %19, align 4
  %380 = load i32*, i32** %22, align 8
  %381 = getelementptr inbounds i32, i32* %380, i32 1
  store i32* %381, i32** %22, align 8
  %382 = load i32, i32* %380, align 4
  %383 = xor i32 %379, %382
  store i32 %383, i32* %21, align 4
  %384 = load i32, i32* %21, align 4
  %385 = and i32 %384, 63
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %20, align 4
  %390 = xor i32 %389, %388
  store i32 %390, i32* %20, align 4
  %391 = load i32, i32* %21, align 4
  %392 = lshr i32 %391, 8
  %393 = and i32 %392, 63
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %20, align 4
  %398 = xor i32 %397, %396
  store i32 %398, i32* %20, align 4
  %399 = load i32, i32* %21, align 4
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 63
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %20, align 4
  %406 = xor i32 %405, %404
  store i32 %406, i32* %20, align 4
  %407 = load i32, i32* %21, align 4
  %408 = lshr i32 %407, 24
  %409 = and i32 %408, 63
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %20, align 4
  %414 = xor i32 %413, %412
  store i32 %414, i32* %20, align 4
  %415 = load i32, i32* %19, align 4
  %416 = shl i32 %415, 28
  %417 = load i32, i32* %19, align 4
  %418 = lshr i32 %417, 4
  %419 = or i32 %416, %418
  %420 = load i32*, i32** %22, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 1
  store i32* %421, i32** %22, align 8
  %422 = load i32, i32* %420, align 4
  %423 = xor i32 %419, %422
  store i32 %423, i32* %21, align 4
  %424 = load i32, i32* %21, align 4
  %425 = and i32 %424, 63
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* %20, align 4
  %430 = xor i32 %429, %428
  store i32 %430, i32* %20, align 4
  %431 = load i32, i32* %21, align 4
  %432 = lshr i32 %431, 8
  %433 = and i32 %432, 63
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %20, align 4
  %438 = xor i32 %437, %436
  store i32 %438, i32* %20, align 4
  %439 = load i32, i32* %21, align 4
  %440 = lshr i32 %439, 16
  %441 = and i32 %440, 63
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %20, align 4
  %446 = xor i32 %445, %444
  store i32 %446, i32* %20, align 4
  %447 = load i32, i32* %21, align 4
  %448 = lshr i32 %447, 24
  %449 = and i32 %448, 63
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %20, align 4
  %454 = xor i32 %453, %452
  store i32 %454, i32* %20, align 4
  %455 = load i32, i32* %20, align 4
  %456 = load i32*, i32** %22, align 8
  %457 = getelementptr inbounds i32, i32* %456, i32 1
  store i32* %457, i32** %22, align 8
  %458 = load i32, i32* %456, align 4
  %459 = xor i32 %455, %458
  store i32 %459, i32* %21, align 4
  %460 = load i32, i32* %21, align 4
  %461 = and i32 %460, 63
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %19, align 4
  %466 = xor i32 %465, %464
  store i32 %466, i32* %19, align 4
  %467 = load i32, i32* %21, align 4
  %468 = lshr i32 %467, 8
  %469 = and i32 %468, 63
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* %19, align 4
  %474 = xor i32 %473, %472
  store i32 %474, i32* %19, align 4
  %475 = load i32, i32* %21, align 4
  %476 = lshr i32 %475, 16
  %477 = and i32 %476, 63
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %19, align 4
  %482 = xor i32 %481, %480
  store i32 %482, i32* %19, align 4
  %483 = load i32, i32* %21, align 4
  %484 = lshr i32 %483, 24
  %485 = and i32 %484, 63
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %19, align 4
  %490 = xor i32 %489, %488
  store i32 %490, i32* %19, align 4
  %491 = load i32, i32* %20, align 4
  %492 = shl i32 %491, 28
  %493 = load i32, i32* %20, align 4
  %494 = lshr i32 %493, 4
  %495 = or i32 %492, %494
  %496 = load i32*, i32** %22, align 8
  %497 = getelementptr inbounds i32, i32* %496, i32 1
  store i32* %497, i32** %22, align 8
  %498 = load i32, i32* %496, align 4
  %499 = xor i32 %495, %498
  store i32 %499, i32* %21, align 4
  %500 = load i32, i32* %21, align 4
  %501 = and i32 %500, 63
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %19, align 4
  %506 = xor i32 %505, %504
  store i32 %506, i32* %19, align 4
  %507 = load i32, i32* %21, align 4
  %508 = lshr i32 %507, 8
  %509 = and i32 %508, 63
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %19, align 4
  %514 = xor i32 %513, %512
  store i32 %514, i32* %19, align 4
  %515 = load i32, i32* %21, align 4
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 63
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* %19, align 4
  %522 = xor i32 %521, %520
  store i32 %522, i32* %19, align 4
  %523 = load i32, i32* %21, align 4
  %524 = lshr i32 %523, 24
  %525 = and i32 %524, 63
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %19, align 4
  %530 = xor i32 %529, %528
  store i32 %530, i32* %19, align 4
  %531 = load i32, i32* %19, align 4
  %532 = load i32*, i32** %22, align 8
  %533 = getelementptr inbounds i32, i32* %532, i32 1
  store i32* %533, i32** %22, align 8
  %534 = load i32, i32* %532, align 4
  %535 = xor i32 %531, %534
  store i32 %535, i32* %21, align 4
  %536 = load i32, i32* %21, align 4
  %537 = and i32 %536, 63
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %20, align 4
  %542 = xor i32 %541, %540
  store i32 %542, i32* %20, align 4
  %543 = load i32, i32* %21, align 4
  %544 = lshr i32 %543, 8
  %545 = and i32 %544, 63
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* %20, align 4
  %550 = xor i32 %549, %548
  store i32 %550, i32* %20, align 4
  %551 = load i32, i32* %21, align 4
  %552 = lshr i32 %551, 16
  %553 = and i32 %552, 63
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %20, align 4
  %558 = xor i32 %557, %556
  store i32 %558, i32* %20, align 4
  %559 = load i32, i32* %21, align 4
  %560 = lshr i32 %559, 24
  %561 = and i32 %560, 63
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* %20, align 4
  %566 = xor i32 %565, %564
  store i32 %566, i32* %20, align 4
  %567 = load i32, i32* %19, align 4
  %568 = shl i32 %567, 28
  %569 = load i32, i32* %19, align 4
  %570 = lshr i32 %569, 4
  %571 = or i32 %568, %570
  %572 = load i32*, i32** %22, align 8
  %573 = getelementptr inbounds i32, i32* %572, i32 1
  store i32* %573, i32** %22, align 8
  %574 = load i32, i32* %572, align 4
  %575 = xor i32 %571, %574
  store i32 %575, i32* %21, align 4
  %576 = load i32, i32* %21, align 4
  %577 = and i32 %576, 63
  %578 = zext i32 %577 to i64
  %579 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* %20, align 4
  %582 = xor i32 %581, %580
  store i32 %582, i32* %20, align 4
  %583 = load i32, i32* %21, align 4
  %584 = lshr i32 %583, 8
  %585 = and i32 %584, 63
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* %20, align 4
  %590 = xor i32 %589, %588
  store i32 %590, i32* %20, align 4
  %591 = load i32, i32* %21, align 4
  %592 = lshr i32 %591, 16
  %593 = and i32 %592, 63
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* %20, align 4
  %598 = xor i32 %597, %596
  store i32 %598, i32* %20, align 4
  %599 = load i32, i32* %21, align 4
  %600 = lshr i32 %599, 24
  %601 = and i32 %600, 63
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %602
  %604 = load i32, i32* %603, align 4
  %605 = load i32, i32* %20, align 4
  %606 = xor i32 %605, %604
  store i32 %606, i32* %20, align 4
  %607 = load i32, i32* %20, align 4
  %608 = load i32*, i32** %22, align 8
  %609 = getelementptr inbounds i32, i32* %608, i32 1
  store i32* %609, i32** %22, align 8
  %610 = load i32, i32* %608, align 4
  %611 = xor i32 %607, %610
  store i32 %611, i32* %21, align 4
  %612 = load i32, i32* %21, align 4
  %613 = and i32 %612, 63
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* %19, align 4
  %618 = xor i32 %617, %616
  store i32 %618, i32* %19, align 4
  %619 = load i32, i32* %21, align 4
  %620 = lshr i32 %619, 8
  %621 = and i32 %620, 63
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = load i32, i32* %19, align 4
  %626 = xor i32 %625, %624
  store i32 %626, i32* %19, align 4
  %627 = load i32, i32* %21, align 4
  %628 = lshr i32 %627, 16
  %629 = and i32 %628, 63
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* %19, align 4
  %634 = xor i32 %633, %632
  store i32 %634, i32* %19, align 4
  %635 = load i32, i32* %21, align 4
  %636 = lshr i32 %635, 24
  %637 = and i32 %636, 63
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* %19, align 4
  %642 = xor i32 %641, %640
  store i32 %642, i32* %19, align 4
  %643 = load i32, i32* %20, align 4
  %644 = shl i32 %643, 28
  %645 = load i32, i32* %20, align 4
  %646 = lshr i32 %645, 4
  %647 = or i32 %644, %646
  %648 = load i32*, i32** %22, align 8
  %649 = getelementptr inbounds i32, i32* %648, i32 1
  store i32* %649, i32** %22, align 8
  %650 = load i32, i32* %648, align 4
  %651 = xor i32 %647, %650
  store i32 %651, i32* %21, align 4
  %652 = load i32, i32* %21, align 4
  %653 = and i32 %652, 63
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = load i32, i32* %19, align 4
  %658 = xor i32 %657, %656
  store i32 %658, i32* %19, align 4
  %659 = load i32, i32* %21, align 4
  %660 = lshr i32 %659, 8
  %661 = and i32 %660, 63
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %662
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %19, align 4
  %666 = xor i32 %665, %664
  store i32 %666, i32* %19, align 4
  %667 = load i32, i32* %21, align 4
  %668 = lshr i32 %667, 16
  %669 = and i32 %668, 63
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* %19, align 4
  %674 = xor i32 %673, %672
  store i32 %674, i32* %19, align 4
  %675 = load i32, i32* %21, align 4
  %676 = lshr i32 %675, 24
  %677 = and i32 %676, 63
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* %19, align 4
  %682 = xor i32 %681, %680
  store i32 %682, i32* %19, align 4
  %683 = load i32, i32* %19, align 4
  %684 = load i32*, i32** %22, align 8
  %685 = getelementptr inbounds i32, i32* %684, i32 1
  store i32* %685, i32** %22, align 8
  %686 = load i32, i32* %684, align 4
  %687 = xor i32 %683, %686
  store i32 %687, i32* %21, align 4
  %688 = load i32, i32* %21, align 4
  %689 = and i32 %688, 63
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = load i32, i32* %20, align 4
  %694 = xor i32 %693, %692
  store i32 %694, i32* %20, align 4
  %695 = load i32, i32* %21, align 4
  %696 = lshr i32 %695, 8
  %697 = and i32 %696, 63
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = load i32, i32* %20, align 4
  %702 = xor i32 %701, %700
  store i32 %702, i32* %20, align 4
  %703 = load i32, i32* %21, align 4
  %704 = lshr i32 %703, 16
  %705 = and i32 %704, 63
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = load i32, i32* %20, align 4
  %710 = xor i32 %709, %708
  store i32 %710, i32* %20, align 4
  %711 = load i32, i32* %21, align 4
  %712 = lshr i32 %711, 24
  %713 = and i32 %712, 63
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = load i32, i32* %20, align 4
  %718 = xor i32 %717, %716
  store i32 %718, i32* %20, align 4
  %719 = load i32, i32* %19, align 4
  %720 = shl i32 %719, 28
  %721 = load i32, i32* %19, align 4
  %722 = lshr i32 %721, 4
  %723 = or i32 %720, %722
  %724 = load i32*, i32** %22, align 8
  %725 = getelementptr inbounds i32, i32* %724, i32 1
  store i32* %725, i32** %22, align 8
  %726 = load i32, i32* %724, align 4
  %727 = xor i32 %723, %726
  store i32 %727, i32* %21, align 4
  %728 = load i32, i32* %21, align 4
  %729 = and i32 %728, 63
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = load i32, i32* %20, align 4
  %734 = xor i32 %733, %732
  store i32 %734, i32* %20, align 4
  %735 = load i32, i32* %21, align 4
  %736 = lshr i32 %735, 8
  %737 = and i32 %736, 63
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = load i32, i32* %20, align 4
  %742 = xor i32 %741, %740
  store i32 %742, i32* %20, align 4
  %743 = load i32, i32* %21, align 4
  %744 = lshr i32 %743, 16
  %745 = and i32 %744, 63
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %746
  %748 = load i32, i32* %747, align 4
  %749 = load i32, i32* %20, align 4
  %750 = xor i32 %749, %748
  store i32 %750, i32* %20, align 4
  %751 = load i32, i32* %21, align 4
  %752 = lshr i32 %751, 24
  %753 = and i32 %752, 63
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* %20, align 4
  %758 = xor i32 %757, %756
  store i32 %758, i32* %20, align 4
  %759 = load i32, i32* %20, align 4
  %760 = load i32*, i32** %22, align 8
  %761 = getelementptr inbounds i32, i32* %760, i32 1
  store i32* %761, i32** %22, align 8
  %762 = load i32, i32* %760, align 4
  %763 = xor i32 %759, %762
  store i32 %763, i32* %21, align 4
  %764 = load i32, i32* %21, align 4
  %765 = and i32 %764, 63
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = load i32, i32* %19, align 4
  %770 = xor i32 %769, %768
  store i32 %770, i32* %19, align 4
  %771 = load i32, i32* %21, align 4
  %772 = lshr i32 %771, 8
  %773 = and i32 %772, 63
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %774
  %776 = load i32, i32* %775, align 4
  %777 = load i32, i32* %19, align 4
  %778 = xor i32 %777, %776
  store i32 %778, i32* %19, align 4
  %779 = load i32, i32* %21, align 4
  %780 = lshr i32 %779, 16
  %781 = and i32 %780, 63
  %782 = zext i32 %781 to i64
  %783 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %782
  %784 = load i32, i32* %783, align 4
  %785 = load i32, i32* %19, align 4
  %786 = xor i32 %785, %784
  store i32 %786, i32* %19, align 4
  %787 = load i32, i32* %21, align 4
  %788 = lshr i32 %787, 24
  %789 = and i32 %788, 63
  %790 = zext i32 %789 to i64
  %791 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %790
  %792 = load i32, i32* %791, align 4
  %793 = load i32, i32* %19, align 4
  %794 = xor i32 %793, %792
  store i32 %794, i32* %19, align 4
  %795 = load i32, i32* %20, align 4
  %796 = shl i32 %795, 28
  %797 = load i32, i32* %20, align 4
  %798 = lshr i32 %797, 4
  %799 = or i32 %796, %798
  %800 = load i32*, i32** %22, align 8
  %801 = getelementptr inbounds i32, i32* %800, i32 1
  store i32* %801, i32** %22, align 8
  %802 = load i32, i32* %800, align 4
  %803 = xor i32 %799, %802
  store i32 %803, i32* %21, align 4
  %804 = load i32, i32* %21, align 4
  %805 = and i32 %804, 63
  %806 = zext i32 %805 to i64
  %807 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %806
  %808 = load i32, i32* %807, align 4
  %809 = load i32, i32* %19, align 4
  %810 = xor i32 %809, %808
  store i32 %810, i32* %19, align 4
  %811 = load i32, i32* %21, align 4
  %812 = lshr i32 %811, 8
  %813 = and i32 %812, 63
  %814 = zext i32 %813 to i64
  %815 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %814
  %816 = load i32, i32* %815, align 4
  %817 = load i32, i32* %19, align 4
  %818 = xor i32 %817, %816
  store i32 %818, i32* %19, align 4
  %819 = load i32, i32* %21, align 4
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 63
  %822 = zext i32 %821 to i64
  %823 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %822
  %824 = load i32, i32* %823, align 4
  %825 = load i32, i32* %19, align 4
  %826 = xor i32 %825, %824
  store i32 %826, i32* %19, align 4
  %827 = load i32, i32* %21, align 4
  %828 = lshr i32 %827, 24
  %829 = and i32 %828, 63
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %830
  %832 = load i32, i32* %831, align 4
  %833 = load i32, i32* %19, align 4
  %834 = xor i32 %833, %832
  store i32 %834, i32* %19, align 4
  %835 = load i32, i32* %19, align 4
  %836 = load i32*, i32** %22, align 8
  %837 = getelementptr inbounds i32, i32* %836, i32 1
  store i32* %837, i32** %22, align 8
  %838 = load i32, i32* %836, align 4
  %839 = xor i32 %835, %838
  store i32 %839, i32* %21, align 4
  %840 = load i32, i32* %21, align 4
  %841 = and i32 %840, 63
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %842
  %844 = load i32, i32* %843, align 4
  %845 = load i32, i32* %20, align 4
  %846 = xor i32 %845, %844
  store i32 %846, i32* %20, align 4
  %847 = load i32, i32* %21, align 4
  %848 = lshr i32 %847, 8
  %849 = and i32 %848, 63
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %850
  %852 = load i32, i32* %851, align 4
  %853 = load i32, i32* %20, align 4
  %854 = xor i32 %853, %852
  store i32 %854, i32* %20, align 4
  %855 = load i32, i32* %21, align 4
  %856 = lshr i32 %855, 16
  %857 = and i32 %856, 63
  %858 = zext i32 %857 to i64
  %859 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %858
  %860 = load i32, i32* %859, align 4
  %861 = load i32, i32* %20, align 4
  %862 = xor i32 %861, %860
  store i32 %862, i32* %20, align 4
  %863 = load i32, i32* %21, align 4
  %864 = lshr i32 %863, 24
  %865 = and i32 %864, 63
  %866 = zext i32 %865 to i64
  %867 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %866
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* %20, align 4
  %870 = xor i32 %869, %868
  store i32 %870, i32* %20, align 4
  %871 = load i32, i32* %19, align 4
  %872 = shl i32 %871, 28
  %873 = load i32, i32* %19, align 4
  %874 = lshr i32 %873, 4
  %875 = or i32 %872, %874
  %876 = load i32*, i32** %22, align 8
  %877 = getelementptr inbounds i32, i32* %876, i32 1
  store i32* %877, i32** %22, align 8
  %878 = load i32, i32* %876, align 4
  %879 = xor i32 %875, %878
  store i32 %879, i32* %21, align 4
  %880 = load i32, i32* %21, align 4
  %881 = and i32 %880, 63
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %882
  %884 = load i32, i32* %883, align 4
  %885 = load i32, i32* %20, align 4
  %886 = xor i32 %885, %884
  store i32 %886, i32* %20, align 4
  %887 = load i32, i32* %21, align 4
  %888 = lshr i32 %887, 8
  %889 = and i32 %888, 63
  %890 = zext i32 %889 to i64
  %891 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %890
  %892 = load i32, i32* %891, align 4
  %893 = load i32, i32* %20, align 4
  %894 = xor i32 %893, %892
  store i32 %894, i32* %20, align 4
  %895 = load i32, i32* %21, align 4
  %896 = lshr i32 %895, 16
  %897 = and i32 %896, 63
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = load i32, i32* %20, align 4
  %902 = xor i32 %901, %900
  store i32 %902, i32* %20, align 4
  %903 = load i32, i32* %21, align 4
  %904 = lshr i32 %903, 24
  %905 = and i32 %904, 63
  %906 = zext i32 %905 to i64
  %907 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %906
  %908 = load i32, i32* %907, align 4
  %909 = load i32, i32* %20, align 4
  %910 = xor i32 %909, %908
  store i32 %910, i32* %20, align 4
  %911 = load i32, i32* %20, align 4
  %912 = load i32*, i32** %22, align 8
  %913 = getelementptr inbounds i32, i32* %912, i32 1
  store i32* %913, i32** %22, align 8
  %914 = load i32, i32* %912, align 4
  %915 = xor i32 %911, %914
  store i32 %915, i32* %21, align 4
  %916 = load i32, i32* %21, align 4
  %917 = and i32 %916, 63
  %918 = zext i32 %917 to i64
  %919 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %918
  %920 = load i32, i32* %919, align 4
  %921 = load i32, i32* %19, align 4
  %922 = xor i32 %921, %920
  store i32 %922, i32* %19, align 4
  %923 = load i32, i32* %21, align 4
  %924 = lshr i32 %923, 8
  %925 = and i32 %924, 63
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %926
  %928 = load i32, i32* %927, align 4
  %929 = load i32, i32* %19, align 4
  %930 = xor i32 %929, %928
  store i32 %930, i32* %19, align 4
  %931 = load i32, i32* %21, align 4
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 63
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %934
  %936 = load i32, i32* %935, align 4
  %937 = load i32, i32* %19, align 4
  %938 = xor i32 %937, %936
  store i32 %938, i32* %19, align 4
  %939 = load i32, i32* %21, align 4
  %940 = lshr i32 %939, 24
  %941 = and i32 %940, 63
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %942
  %944 = load i32, i32* %943, align 4
  %945 = load i32, i32* %19, align 4
  %946 = xor i32 %945, %944
  store i32 %946, i32* %19, align 4
  %947 = load i32, i32* %20, align 4
  %948 = shl i32 %947, 28
  %949 = load i32, i32* %20, align 4
  %950 = lshr i32 %949, 4
  %951 = or i32 %948, %950
  %952 = load i32*, i32** %22, align 8
  %953 = getelementptr inbounds i32, i32* %952, i32 1
  store i32* %953, i32** %22, align 8
  %954 = load i32, i32* %952, align 4
  %955 = xor i32 %951, %954
  store i32 %955, i32* %21, align 4
  %956 = load i32, i32* %21, align 4
  %957 = and i32 %956, 63
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %958
  %960 = load i32, i32* %959, align 4
  %961 = load i32, i32* %19, align 4
  %962 = xor i32 %961, %960
  store i32 %962, i32* %19, align 4
  %963 = load i32, i32* %21, align 4
  %964 = lshr i32 %963, 8
  %965 = and i32 %964, 63
  %966 = zext i32 %965 to i64
  %967 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %966
  %968 = load i32, i32* %967, align 4
  %969 = load i32, i32* %19, align 4
  %970 = xor i32 %969, %968
  store i32 %970, i32* %19, align 4
  %971 = load i32, i32* %21, align 4
  %972 = lshr i32 %971, 16
  %973 = and i32 %972, 63
  %974 = zext i32 %973 to i64
  %975 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %974
  %976 = load i32, i32* %975, align 4
  %977 = load i32, i32* %19, align 4
  %978 = xor i32 %977, %976
  store i32 %978, i32* %19, align 4
  %979 = load i32, i32* %21, align 4
  %980 = lshr i32 %979, 24
  %981 = and i32 %980, 63
  %982 = zext i32 %981 to i64
  %983 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %982
  %984 = load i32, i32* %983, align 4
  %985 = load i32, i32* %19, align 4
  %986 = xor i32 %985, %984
  store i32 %986, i32* %19, align 4
  %987 = load i32, i32* %19, align 4
  %988 = load i32*, i32** %22, align 8
  %989 = getelementptr inbounds i32, i32* %988, i32 1
  store i32* %989, i32** %22, align 8
  %990 = load i32, i32* %988, align 4
  %991 = xor i32 %987, %990
  store i32 %991, i32* %21, align 4
  %992 = load i32, i32* %21, align 4
  %993 = and i32 %992, 63
  %994 = zext i32 %993 to i64
  %995 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %994
  %996 = load i32, i32* %995, align 4
  %997 = load i32, i32* %20, align 4
  %998 = xor i32 %997, %996
  store i32 %998, i32* %20, align 4
  %999 = load i32, i32* %21, align 4
  %1000 = lshr i32 %999, 8
  %1001 = and i32 %1000, 63
  %1002 = zext i32 %1001 to i64
  %1003 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %1002
  %1004 = load i32, i32* %1003, align 4
  %1005 = load i32, i32* %20, align 4
  %1006 = xor i32 %1005, %1004
  store i32 %1006, i32* %20, align 4
  %1007 = load i32, i32* %21, align 4
  %1008 = lshr i32 %1007, 16
  %1009 = and i32 %1008, 63
  %1010 = zext i32 %1009 to i64
  %1011 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %1010
  %1012 = load i32, i32* %1011, align 4
  %1013 = load i32, i32* %20, align 4
  %1014 = xor i32 %1013, %1012
  store i32 %1014, i32* %20, align 4
  %1015 = load i32, i32* %21, align 4
  %1016 = lshr i32 %1015, 24
  %1017 = and i32 %1016, 63
  %1018 = zext i32 %1017 to i64
  %1019 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %1018
  %1020 = load i32, i32* %1019, align 4
  %1021 = load i32, i32* %20, align 4
  %1022 = xor i32 %1021, %1020
  store i32 %1022, i32* %20, align 4
  %1023 = load i32, i32* %19, align 4
  %1024 = shl i32 %1023, 28
  %1025 = load i32, i32* %19, align 4
  %1026 = lshr i32 %1025, 4
  %1027 = or i32 %1024, %1026
  %1028 = load i32*, i32** %22, align 8
  %1029 = getelementptr inbounds i32, i32* %1028, i32 1
  store i32* %1029, i32** %22, align 8
  %1030 = load i32, i32* %1028, align 4
  %1031 = xor i32 %1027, %1030
  store i32 %1031, i32* %21, align 4
  %1032 = load i32, i32* %21, align 4
  %1033 = and i32 %1032, 63
  %1034 = zext i32 %1033 to i64
  %1035 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %1034
  %1036 = load i32, i32* %1035, align 4
  %1037 = load i32, i32* %20, align 4
  %1038 = xor i32 %1037, %1036
  store i32 %1038, i32* %20, align 4
  %1039 = load i32, i32* %21, align 4
  %1040 = lshr i32 %1039, 8
  %1041 = and i32 %1040, 63
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %1042
  %1044 = load i32, i32* %1043, align 4
  %1045 = load i32, i32* %20, align 4
  %1046 = xor i32 %1045, %1044
  store i32 %1046, i32* %20, align 4
  %1047 = load i32, i32* %21, align 4
  %1048 = lshr i32 %1047, 16
  %1049 = and i32 %1048, 63
  %1050 = zext i32 %1049 to i64
  %1051 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %1050
  %1052 = load i32, i32* %1051, align 4
  %1053 = load i32, i32* %20, align 4
  %1054 = xor i32 %1053, %1052
  store i32 %1054, i32* %20, align 4
  %1055 = load i32, i32* %21, align 4
  %1056 = lshr i32 %1055, 24
  %1057 = and i32 %1056, 63
  %1058 = zext i32 %1057 to i64
  %1059 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %1058
  %1060 = load i32, i32* %1059, align 4
  %1061 = load i32, i32* %20, align 4
  %1062 = xor i32 %1061, %1060
  store i32 %1062, i32* %20, align 4
  %1063 = load i32, i32* %20, align 4
  %1064 = load i32*, i32** %22, align 8
  %1065 = getelementptr inbounds i32, i32* %1064, i32 1
  store i32* %1065, i32** %22, align 8
  %1066 = load i32, i32* %1064, align 4
  %1067 = xor i32 %1063, %1066
  store i32 %1067, i32* %21, align 4
  %1068 = load i32, i32* %21, align 4
  %1069 = and i32 %1068, 63
  %1070 = zext i32 %1069 to i64
  %1071 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %1070
  %1072 = load i32, i32* %1071, align 4
  %1073 = load i32, i32* %19, align 4
  %1074 = xor i32 %1073, %1072
  store i32 %1074, i32* %19, align 4
  %1075 = load i32, i32* %21, align 4
  %1076 = lshr i32 %1075, 8
  %1077 = and i32 %1076, 63
  %1078 = zext i32 %1077 to i64
  %1079 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %1078
  %1080 = load i32, i32* %1079, align 4
  %1081 = load i32, i32* %19, align 4
  %1082 = xor i32 %1081, %1080
  store i32 %1082, i32* %19, align 4
  %1083 = load i32, i32* %21, align 4
  %1084 = lshr i32 %1083, 16
  %1085 = and i32 %1084, 63
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %1086
  %1088 = load i32, i32* %1087, align 4
  %1089 = load i32, i32* %19, align 4
  %1090 = xor i32 %1089, %1088
  store i32 %1090, i32* %19, align 4
  %1091 = load i32, i32* %21, align 4
  %1092 = lshr i32 %1091, 24
  %1093 = and i32 %1092, 63
  %1094 = zext i32 %1093 to i64
  %1095 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %1094
  %1096 = load i32, i32* %1095, align 4
  %1097 = load i32, i32* %19, align 4
  %1098 = xor i32 %1097, %1096
  store i32 %1098, i32* %19, align 4
  %1099 = load i32, i32* %20, align 4
  %1100 = shl i32 %1099, 28
  %1101 = load i32, i32* %20, align 4
  %1102 = lshr i32 %1101, 4
  %1103 = or i32 %1100, %1102
  %1104 = load i32*, i32** %22, align 8
  %1105 = getelementptr inbounds i32, i32* %1104, i32 1
  store i32* %1105, i32** %22, align 8
  %1106 = load i32, i32* %1104, align 4
  %1107 = xor i32 %1103, %1106
  store i32 %1107, i32* %21, align 4
  %1108 = load i32, i32* %21, align 4
  %1109 = and i32 %1108, 63
  %1110 = zext i32 %1109 to i64
  %1111 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %1110
  %1112 = load i32, i32* %1111, align 4
  %1113 = load i32, i32* %19, align 4
  %1114 = xor i32 %1113, %1112
  store i32 %1114, i32* %19, align 4
  %1115 = load i32, i32* %21, align 4
  %1116 = lshr i32 %1115, 8
  %1117 = and i32 %1116, 63
  %1118 = zext i32 %1117 to i64
  %1119 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %1118
  %1120 = load i32, i32* %1119, align 4
  %1121 = load i32, i32* %19, align 4
  %1122 = xor i32 %1121, %1120
  store i32 %1122, i32* %19, align 4
  %1123 = load i32, i32* %21, align 4
  %1124 = lshr i32 %1123, 16
  %1125 = and i32 %1124, 63
  %1126 = zext i32 %1125 to i64
  %1127 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %1126
  %1128 = load i32, i32* %1127, align 4
  %1129 = load i32, i32* %19, align 4
  %1130 = xor i32 %1129, %1128
  store i32 %1130, i32* %19, align 4
  %1131 = load i32, i32* %21, align 4
  %1132 = lshr i32 %1131, 24
  %1133 = and i32 %1132, 63
  %1134 = zext i32 %1133 to i64
  %1135 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %1134
  %1136 = load i32, i32* %1135, align 4
  %1137 = load i32, i32* %19, align 4
  %1138 = xor i32 %1137, %1136
  store i32 %1138, i32* %19, align 4
  %1139 = load i32, i32* %19, align 4
  %1140 = load i32*, i32** %22, align 8
  %1141 = getelementptr inbounds i32, i32* %1140, i32 1
  store i32* %1141, i32** %22, align 8
  %1142 = load i32, i32* %1140, align 4
  %1143 = xor i32 %1139, %1142
  store i32 %1143, i32* %21, align 4
  %1144 = load i32, i32* %21, align 4
  %1145 = and i32 %1144, 63
  %1146 = zext i32 %1145 to i64
  %1147 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %1146
  %1148 = load i32, i32* %1147, align 4
  %1149 = load i32, i32* %20, align 4
  %1150 = xor i32 %1149, %1148
  store i32 %1150, i32* %20, align 4
  %1151 = load i32, i32* %21, align 4
  %1152 = lshr i32 %1151, 8
  %1153 = and i32 %1152, 63
  %1154 = zext i32 %1153 to i64
  %1155 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %1154
  %1156 = load i32, i32* %1155, align 4
  %1157 = load i32, i32* %20, align 4
  %1158 = xor i32 %1157, %1156
  store i32 %1158, i32* %20, align 4
  %1159 = load i32, i32* %21, align 4
  %1160 = lshr i32 %1159, 16
  %1161 = and i32 %1160, 63
  %1162 = zext i32 %1161 to i64
  %1163 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %1162
  %1164 = load i32, i32* %1163, align 4
  %1165 = load i32, i32* %20, align 4
  %1166 = xor i32 %1165, %1164
  store i32 %1166, i32* %20, align 4
  %1167 = load i32, i32* %21, align 4
  %1168 = lshr i32 %1167, 24
  %1169 = and i32 %1168, 63
  %1170 = zext i32 %1169 to i64
  %1171 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %1170
  %1172 = load i32, i32* %1171, align 4
  %1173 = load i32, i32* %20, align 4
  %1174 = xor i32 %1173, %1172
  store i32 %1174, i32* %20, align 4
  %1175 = load i32, i32* %19, align 4
  %1176 = shl i32 %1175, 28
  %1177 = load i32, i32* %19, align 4
  %1178 = lshr i32 %1177, 4
  %1179 = or i32 %1176, %1178
  %1180 = load i32*, i32** %22, align 8
  %1181 = getelementptr inbounds i32, i32* %1180, i32 1
  store i32* %1181, i32** %22, align 8
  %1182 = load i32, i32* %1180, align 4
  %1183 = xor i32 %1179, %1182
  store i32 %1183, i32* %21, align 4
  %1184 = load i32, i32* %21, align 4
  %1185 = and i32 %1184, 63
  %1186 = zext i32 %1185 to i64
  %1187 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %1186
  %1188 = load i32, i32* %1187, align 4
  %1189 = load i32, i32* %20, align 4
  %1190 = xor i32 %1189, %1188
  store i32 %1190, i32* %20, align 4
  %1191 = load i32, i32* %21, align 4
  %1192 = lshr i32 %1191, 8
  %1193 = and i32 %1192, 63
  %1194 = zext i32 %1193 to i64
  %1195 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %1194
  %1196 = load i32, i32* %1195, align 4
  %1197 = load i32, i32* %20, align 4
  %1198 = xor i32 %1197, %1196
  store i32 %1198, i32* %20, align 4
  %1199 = load i32, i32* %21, align 4
  %1200 = lshr i32 %1199, 16
  %1201 = and i32 %1200, 63
  %1202 = zext i32 %1201 to i64
  %1203 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %1202
  %1204 = load i32, i32* %1203, align 4
  %1205 = load i32, i32* %20, align 4
  %1206 = xor i32 %1205, %1204
  store i32 %1206, i32* %20, align 4
  %1207 = load i32, i32* %21, align 4
  %1208 = lshr i32 %1207, 24
  %1209 = and i32 %1208, 63
  %1210 = zext i32 %1209 to i64
  %1211 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %1210
  %1212 = load i32, i32* %1211, align 4
  %1213 = load i32, i32* %20, align 4
  %1214 = xor i32 %1213, %1212
  store i32 %1214, i32* %20, align 4
  %1215 = load i32, i32* %20, align 4
  %1216 = load i32*, i32** %22, align 8
  %1217 = getelementptr inbounds i32, i32* %1216, i32 1
  store i32* %1217, i32** %22, align 8
  %1218 = load i32, i32* %1216, align 4
  %1219 = xor i32 %1215, %1218
  store i32 %1219, i32* %21, align 4
  %1220 = load i32, i32* %21, align 4
  %1221 = and i32 %1220, 63
  %1222 = zext i32 %1221 to i64
  %1223 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %1222
  %1224 = load i32, i32* %1223, align 4
  %1225 = load i32, i32* %19, align 4
  %1226 = xor i32 %1225, %1224
  store i32 %1226, i32* %19, align 4
  %1227 = load i32, i32* %21, align 4
  %1228 = lshr i32 %1227, 8
  %1229 = and i32 %1228, 63
  %1230 = zext i32 %1229 to i64
  %1231 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %1230
  %1232 = load i32, i32* %1231, align 4
  %1233 = load i32, i32* %19, align 4
  %1234 = xor i32 %1233, %1232
  store i32 %1234, i32* %19, align 4
  %1235 = load i32, i32* %21, align 4
  %1236 = lshr i32 %1235, 16
  %1237 = and i32 %1236, 63
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %1238
  %1240 = load i32, i32* %1239, align 4
  %1241 = load i32, i32* %19, align 4
  %1242 = xor i32 %1241, %1240
  store i32 %1242, i32* %19, align 4
  %1243 = load i32, i32* %21, align 4
  %1244 = lshr i32 %1243, 24
  %1245 = and i32 %1244, 63
  %1246 = zext i32 %1245 to i64
  %1247 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %1246
  %1248 = load i32, i32* %1247, align 4
  %1249 = load i32, i32* %19, align 4
  %1250 = xor i32 %1249, %1248
  store i32 %1250, i32* %19, align 4
  %1251 = load i32, i32* %20, align 4
  %1252 = shl i32 %1251, 28
  %1253 = load i32, i32* %20, align 4
  %1254 = lshr i32 %1253, 4
  %1255 = or i32 %1252, %1254
  %1256 = load i32*, i32** %22, align 8
  %1257 = getelementptr inbounds i32, i32* %1256, i32 1
  store i32* %1257, i32** %22, align 8
  %1258 = load i32, i32* %1256, align 4
  %1259 = xor i32 %1255, %1258
  store i32 %1259, i32* %21, align 4
  %1260 = load i32, i32* %21, align 4
  %1261 = and i32 %1260, 63
  %1262 = zext i32 %1261 to i64
  %1263 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %1262
  %1264 = load i32, i32* %1263, align 4
  %1265 = load i32, i32* %19, align 4
  %1266 = xor i32 %1265, %1264
  store i32 %1266, i32* %19, align 4
  %1267 = load i32, i32* %21, align 4
  %1268 = lshr i32 %1267, 8
  %1269 = and i32 %1268, 63
  %1270 = zext i32 %1269 to i64
  %1271 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %1270
  %1272 = load i32, i32* %1271, align 4
  %1273 = load i32, i32* %19, align 4
  %1274 = xor i32 %1273, %1272
  store i32 %1274, i32* %19, align 4
  %1275 = load i32, i32* %21, align 4
  %1276 = lshr i32 %1275, 16
  %1277 = and i32 %1276, 63
  %1278 = zext i32 %1277 to i64
  %1279 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %1278
  %1280 = load i32, i32* %1279, align 4
  %1281 = load i32, i32* %19, align 4
  %1282 = xor i32 %1281, %1280
  store i32 %1282, i32* %19, align 4
  %1283 = load i32, i32* %21, align 4
  %1284 = lshr i32 %1283, 24
  %1285 = and i32 %1284, 63
  %1286 = zext i32 %1285 to i64
  %1287 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %1286
  %1288 = load i32, i32* %1287, align 4
  %1289 = load i32, i32* %19, align 4
  %1290 = xor i32 %1289, %1288
  store i32 %1290, i32* %19, align 4
  %1291 = load i32, i32* %19, align 4
  %1292 = load i32*, i32** %22, align 8
  %1293 = getelementptr inbounds i32, i32* %1292, i32 1
  store i32* %1293, i32** %22, align 8
  %1294 = load i32, i32* %1292, align 4
  %1295 = xor i32 %1291, %1294
  store i32 %1295, i32* %21, align 4
  %1296 = load i32, i32* %21, align 4
  %1297 = and i32 %1296, 63
  %1298 = zext i32 %1297 to i64
  %1299 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox8, i64 0, i64 %1298
  %1300 = load i32, i32* %1299, align 4
  %1301 = load i32, i32* %20, align 4
  %1302 = xor i32 %1301, %1300
  store i32 %1302, i32* %20, align 4
  %1303 = load i32, i32* %21, align 4
  %1304 = lshr i32 %1303, 8
  %1305 = and i32 %1304, 63
  %1306 = zext i32 %1305 to i64
  %1307 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox6, i64 0, i64 %1306
  %1308 = load i32, i32* %1307, align 4
  %1309 = load i32, i32* %20, align 4
  %1310 = xor i32 %1309, %1308
  store i32 %1310, i32* %20, align 4
  %1311 = load i32, i32* %21, align 4
  %1312 = lshr i32 %1311, 16
  %1313 = and i32 %1312, 63
  %1314 = zext i32 %1313 to i64
  %1315 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox4, i64 0, i64 %1314
  %1316 = load i32, i32* %1315, align 4
  %1317 = load i32, i32* %20, align 4
  %1318 = xor i32 %1317, %1316
  store i32 %1318, i32* %20, align 4
  %1319 = load i32, i32* %21, align 4
  %1320 = lshr i32 %1319, 24
  %1321 = and i32 %1320, 63
  %1322 = zext i32 %1321 to i64
  %1323 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox2, i64 0, i64 %1322
  %1324 = load i32, i32* %1323, align 4
  %1325 = load i32, i32* %20, align 4
  %1326 = xor i32 %1325, %1324
  store i32 %1326, i32* %20, align 4
  %1327 = load i32, i32* %19, align 4
  %1328 = shl i32 %1327, 28
  %1329 = load i32, i32* %19, align 4
  %1330 = lshr i32 %1329, 4
  %1331 = or i32 %1328, %1330
  %1332 = load i32*, i32** %22, align 8
  %1333 = getelementptr inbounds i32, i32* %1332, i32 1
  store i32* %1333, i32** %22, align 8
  %1334 = load i32, i32* %1332, align 4
  %1335 = xor i32 %1331, %1334
  store i32 %1335, i32* %21, align 4
  %1336 = load i32, i32* %21, align 4
  %1337 = and i32 %1336, 63
  %1338 = zext i32 %1337 to i64
  %1339 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox7, i64 0, i64 %1338
  %1340 = load i32, i32* %1339, align 4
  %1341 = load i32, i32* %20, align 4
  %1342 = xor i32 %1341, %1340
  store i32 %1342, i32* %20, align 4
  %1343 = load i32, i32* %21, align 4
  %1344 = lshr i32 %1343, 8
  %1345 = and i32 %1344, 63
  %1346 = zext i32 %1345 to i64
  %1347 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox5, i64 0, i64 %1346
  %1348 = load i32, i32* %1347, align 4
  %1349 = load i32, i32* %20, align 4
  %1350 = xor i32 %1349, %1348
  store i32 %1350, i32* %20, align 4
  %1351 = load i32, i32* %21, align 4
  %1352 = lshr i32 %1351, 16
  %1353 = and i32 %1352, 63
  %1354 = zext i32 %1353 to i64
  %1355 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox3, i64 0, i64 %1354
  %1356 = load i32, i32* %1355, align 4
  %1357 = load i32, i32* %20, align 4
  %1358 = xor i32 %1357, %1356
  store i32 %1358, i32* %20, align 4
  %1359 = load i32, i32* %21, align 4
  %1360 = lshr i32 %1359, 24
  %1361 = and i32 %1360, 63
  %1362 = zext i32 %1361 to i64
  %1363 = getelementptr inbounds [64 x i32], [64 x i32]* @sbox1, i64 0, i64 %1362
  %1364 = load i32, i32* %1363, align 4
  %1365 = load i32, i32* %20, align 4
  %1366 = xor i32 %1365, %1364
  store i32 %1366, i32* %20, align 4
  %1367 = load i32, i32* %20, align 4
  %1368 = shl i32 %1367, 31
  %1369 = load i32, i32* %20, align 4
  %1370 = lshr i32 %1369, 1
  %1371 = or i32 %1368, %1370
  store i32 %1371, i32* %20, align 4
  %1372 = load i32, i32* %20, align 4
  %1373 = load i32, i32* %19, align 4
  %1374 = xor i32 %1372, %1373
  %1375 = and i32 %1374, -1431655766
  store i32 %1375, i32* %21, align 4
  %1376 = load i32, i32* %21, align 4
  %1377 = load i32, i32* %20, align 4
  %1378 = xor i32 %1377, %1376
  store i32 %1378, i32* %20, align 4
  %1379 = load i32, i32* %21, align 4
  %1380 = load i32, i32* %19, align 4
  %1381 = xor i32 %1380, %1379
  store i32 %1381, i32* %19, align 4
  %1382 = load i32, i32* %19, align 4
  %1383 = shl i32 %1382, 31
  %1384 = load i32, i32* %19, align 4
  %1385 = lshr i32 %1384, 1
  %1386 = or i32 %1383, %1385
  store i32 %1386, i32* %19, align 4
  %1387 = load i32, i32* %19, align 4
  %1388 = lshr i32 %1387, 8
  %1389 = load i32, i32* %20, align 4
  %1390 = xor i32 %1388, %1389
  %1391 = and i32 %1390, 16711935
  store i32 %1391, i32* %21, align 4
  %1392 = load i32, i32* %21, align 4
  %1393 = load i32, i32* %20, align 4
  %1394 = xor i32 %1393, %1392
  store i32 %1394, i32* %20, align 4
  %1395 = load i32, i32* %21, align 4
  %1396 = shl i32 %1395, 8
  %1397 = load i32, i32* %19, align 4
  %1398 = xor i32 %1397, %1396
  store i32 %1398, i32* %19, align 4
  %1399 = load i32, i32* %19, align 4
  %1400 = lshr i32 %1399, 2
  %1401 = load i32, i32* %20, align 4
  %1402 = xor i32 %1400, %1401
  %1403 = and i32 %1402, 858993459
  store i32 %1403, i32* %21, align 4
  %1404 = load i32, i32* %21, align 4
  %1405 = load i32, i32* %20, align 4
  %1406 = xor i32 %1405, %1404
  store i32 %1406, i32* %20, align 4
  %1407 = load i32, i32* %21, align 4
  %1408 = shl i32 %1407, 2
  %1409 = load i32, i32* %19, align 4
  %1410 = xor i32 %1409, %1408
  store i32 %1410, i32* %19, align 4
  %1411 = load i32, i32* %20, align 4
  %1412 = lshr i32 %1411, 16
  %1413 = load i32, i32* %19, align 4
  %1414 = xor i32 %1412, %1413
  %1415 = and i32 %1414, 65535
  store i32 %1415, i32* %21, align 4
  %1416 = load i32, i32* %21, align 4
  %1417 = load i32, i32* %19, align 4
  %1418 = xor i32 %1417, %1416
  store i32 %1418, i32* %19, align 4
  %1419 = load i32, i32* %21, align 4
  %1420 = shl i32 %1419, 16
  %1421 = load i32, i32* %20, align 4
  %1422 = xor i32 %1421, %1420
  store i32 %1422, i32* %20, align 4
  %1423 = load i32, i32* %20, align 4
  %1424 = lshr i32 %1423, 4
  %1425 = load i32, i32* %19, align 4
  %1426 = xor i32 %1424, %1425
  %1427 = and i32 %1426, 252645135
  store i32 %1427, i32* %21, align 4
  %1428 = load i32, i32* %21, align 4
  %1429 = load i32, i32* %19, align 4
  %1430 = xor i32 %1429, %1428
  store i32 %1430, i32* %19, align 4
  %1431 = load i32, i32* %21, align 4
  %1432 = shl i32 %1431, 4
  %1433 = load i32, i32* %20, align 4
  %1434 = xor i32 %1433, %1432
  store i32 %1434, i32* %20, align 4
  %1435 = load i8*, i8** %17, align 8
  %1436 = getelementptr inbounds i8, i8* %1435, i64 0
  %1437 = load i32, i32* %20, align 4
  store i8* %1436, i8** %7, align 8
  store i32 %1437, i32* %8, align 4
  %1438 = load i8*, i8** %7, align 8
  store i8* %1438, i8** %9, align 8
  %1439 = load i32, i32* %8, align 4
  %1440 = lshr i32 %1439, 24
  %1441 = trunc i32 %1440 to i8
  %1442 = load i8*, i8** %9, align 8
  store i8 %1441, i8* %1442, align 1
  %1443 = load i32, i32* %8, align 4
  %1444 = lshr i32 %1443, 16
  %1445 = trunc i32 %1444 to i8
  %1446 = load i8*, i8** %9, align 8
  %1447 = getelementptr inbounds i8, i8* %1446, i64 1
  store i8 %1445, i8* %1447, align 1
  %1448 = load i32, i32* %8, align 4
  %1449 = lshr i32 %1448, 8
  %1450 = trunc i32 %1449 to i8
  %1451 = load i8*, i8** %9, align 8
  %1452 = getelementptr inbounds i8, i8* %1451, i64 2
  store i8 %1450, i8* %1452, align 1
  %1453 = load i32, i32* %8, align 4
  %1454 = trunc i32 %1453 to i8
  %1455 = load i8*, i8** %9, align 8
  %1456 = getelementptr inbounds i8, i8* %1455, i64 3
  store i8 %1454, i8* %1456, align 1
  %1457 = load i8*, i8** %17, align 8
  %1458 = getelementptr inbounds i8, i8* %1457, i64 4
  %1459 = load i32, i32* %19, align 4
  store i8* %1458, i8** %10, align 8
  store i32 %1459, i32* %11, align 4
  %1460 = load i8*, i8** %10, align 8
  store i8* %1460, i8** %12, align 8
  %1461 = load i32, i32* %11, align 4
  %1462 = lshr i32 %1461, 24
  %1463 = trunc i32 %1462 to i8
  %1464 = load i8*, i8** %12, align 8
  store i8 %1463, i8* %1464, align 1
  %1465 = load i32, i32* %11, align 4
  %1466 = lshr i32 %1465, 16
  %1467 = trunc i32 %1466 to i8
  %1468 = load i8*, i8** %12, align 8
  %1469 = getelementptr inbounds i8, i8* %1468, i64 1
  store i8 %1467, i8* %1469, align 1
  %1470 = load i32, i32* %11, align 4
  %1471 = lshr i32 %1470, 8
  %1472 = trunc i32 %1471 to i8
  %1473 = load i8*, i8** %12, align 8
  %1474 = getelementptr inbounds i8, i8* %1473, i64 2
  store i8 %1472, i8* %1474, align 1
  %1475 = load i32, i32* %11, align 4
  %1476 = trunc i32 %1475 to i8
  %1477 = load i8*, i8** %12, align 8
  %1478 = getelementptr inbounds i8, i8* %1477, i64 3
  store i8 %1476, i8* %1478, align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
