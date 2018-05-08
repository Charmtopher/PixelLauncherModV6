.class final Lcom/google/android/gms/internal/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Ui:Lcom/google/android/gms/internal/bH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bH;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bJ;->Ui:Lcom/google/android/gms/internal/bH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->Ui:Lcom/google/android/gms/internal/bH;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bH;->hJ()V

    return-void
.end method
