.class final Lcom/google/android/gms/internal/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field public final Rv:I

.field public final Rw:Lcom/google/android/gms/common/api/r;

.field public final Rx:Lcom/google/android/gms/common/api/u;

.field private synthetic Ry:Lcom/google/android/gms/internal/aF;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aF;ILcom/google/android/gms/common/api/r;Lcom/google/android/gms/common/api/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aG;->Ry:Lcom/google/android/gms/internal/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/aG;->Rv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    iput-object p4, p0, Lcom/google/android/gms/internal/aG;->Rx:Lcom/google/android/gms/common/api/u;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const-string v0, "AutoManageHelper"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1b

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "beginFailureResolution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/aG;->Ry:Lcom/google/android/gms/internal/aF;

    iget v1, p0, Lcom/google/android/gms/internal/aG;->Rv:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/aF;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
