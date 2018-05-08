.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;


# static fields
.field private static PM:I

.field private static PN:I

.field private static PO:I

.field private static PP:I

.field public static final PQ:[I

.field public static final PR:[J

.field public static final PS:[F

.field private static PT:[D

.field public static final PU:[Z

.field public static final PV:[Ljava/lang/String;

.field public static final PW:[[B

.field public static final PX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/ad;->PM:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/ad;->PN:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/ad;->PO:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/ad;->PP:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ad;->PQ:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/ad;->PR:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/ad;->PS:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/ad;->PT:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/ad;->PU:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ad;->PV:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/ad;->PW:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ad;->PX:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/T;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aN(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aN(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/T;->E(II)V

    return v1
.end method
