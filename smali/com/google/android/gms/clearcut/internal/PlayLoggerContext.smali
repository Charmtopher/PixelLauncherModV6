.class public Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final HS:Z

.field public final Hp:I

.field public final Hq:Ljava/lang/String;

.field public final Hr:I

.field public final Hs:Ljava/lang/String;

.field public final Ht:Ljava/lang/String;

.field public final Hu:Z

.field public final Hv:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    iput p3, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    iput-object p4, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    xor-int/lit8 p1, p7, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    iput-boolean p7, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    iput p8, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    iput p3, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    iput-object p4, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    iput p9, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    iget v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    iget v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    iget-boolean v3, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    iget p1, p1, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayLoggerContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "packageVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "logSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "logSourceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "uploadAccount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "loggingId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "logAndroidId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "isAnonymous="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hp:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hs:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Ht:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->HS:Z

    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hu:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hv:I

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
