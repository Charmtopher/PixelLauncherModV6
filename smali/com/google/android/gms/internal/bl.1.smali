.class final Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Tf:Lcom/google/android/gms/internal/bk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bl;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bl;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/d;->u(Landroid/content/Context;)V

    return-void
.end method
