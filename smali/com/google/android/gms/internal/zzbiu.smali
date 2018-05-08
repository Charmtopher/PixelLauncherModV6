.class public final Lcom/google/android/gms/internal/zzbiu;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Vv:Lcom/google/android/gms/internal/u;

.field private Vw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cK;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cK;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbiu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiu;->gz()V

    return-void
.end method

.method private final gz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    new-instance v1, Lcom/google/android/gms/internal/u;

    invoke-direct {v1}, Lcom/google/android/gms/internal/u;-><init>()V

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/u;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiu;->gz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vw:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->Vv:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
