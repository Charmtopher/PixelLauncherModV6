.class public final Lcom/google/android/gms/internal/bN;
.super Lcom/google/android/gms/internal/bg;


# instance fields
.field private final Um:Lcom/google/android/gms/common/api/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/p;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bg;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bN;->Um:Lcom/google/android/gms/common/api/p;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bN;->Um:Lcom/google/android/gms/common/api/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/p;->a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/cp;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bN;->Um:Lcom/google/android/gms/common/api/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/p;->a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/cp;)V
    .locals 0

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bN;->Um:Lcom/google/android/gms/common/api/p;

    iget-object v0, v0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bN;->Um:Lcom/google/android/gms/common/api/p;

    iget-object v0, v0, Lcom/google/android/gms/common/api/p;->Iz:Landroid/os/Looper;

    return-object v0
.end method
